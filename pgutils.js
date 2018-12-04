


var { isNullOrUndefined } = require('util');
var fs = require('fs');
var http = require('http');
var FolderZip = require('./folder-zip');



var pool;
exports.setDB = function(pl) {
    pool = pl;
  }

exports.updatecur = async function (req, res)
{
  
  var rec = await pool.query('select * from fn_cur_dates()', []);
    try
    {
      for (var i = 0; i < rec.rows.length; i++) //rec.rows.length
      {
          let d = rec.rows[i]["cr_date"];
          parceRate(d); 
      }    
      res.send('Загружены курсы валют за ' + rec.rows.length.toString() + ' дней');
    }
    catch (ex)
    {
      res.send(ex.message);
    }
}

function parceRate(d)
{
  let url = 'http://www.cbr.ru/scripts/XML_daily.asp?date_req=' + d;
  //console.log(url);

  http.get(url, function(rs){
    let cur = ['EUR', 'USD', 'GBP'];
    let rawData = '';
    rs.on('data', (chunk) => { rawData += chunk; });
    rs.on('end', () => {
      for (var i = 0; i < cur.length; i++)
      {
          let rx = new RegExp('<CharCode>' + cur[i] + '</CharCode>(.|\n)*?<Value>(.*?)</Value>');
          
          if (rawData.match(rx))
          {
            let val = rawData.match(rx)[2];
            let dd = d.substr(6, 4) + '-' + d.substr(3,2) + '-' + d.substr(0,2) + 'T00:00.000Z';
            let sql = "insert into currate (cr_date, cr_cur, cr_rate) values ('" + dd + "', '" 
            + cur[i] + "', " + val.replace(',', '.') + ")";
            //console.log(sql);
            pool.query(sql, [],  (err, result) => {

            });
         }
      }
    });
  });

};

exports.csvimport = async function(req, res)
{
  var csv = req.body.csv;
  var rows = csv.split('\n');
  var cols = rows[0].trim().toLowerCase();
  var cols_list = cols.split(';');
  var sql = "select fn_findtable($1)";
  var rec = await pool.query(sql, [cols]);
  var table_name = rec.rows[0]["fn_findtable"]
  if (!table_name)
  {
    res.send('Таблица с указанными полями не найдена.');  
    return;
  }
  
  var numobj = {};
  sql = "select column_name from information_schema.columns where table_name= $1 and data_type  in ('integer', 'numeric', 'real')";
  rec = await pool.query(sql, [table_name]);

  for (var i = 0; i < rec.rows.length; i++ )
  {
    numobj[rec.rows[i]['column_name']] = 1;
  }

  var insstr = 'insert into ' + table_name + '(' + cols.replace(/;/g, ', ') + ')';
  var sql = '';
  for (var i = 1; i < rows.length; i++)
  {
      var line = rows[i].trim();
      var vals = line.split(';')
      
      if (vals.length != cols_list.length)
         continue;

      var valstr = 'values (';
      for (var j = 0; j < vals.length; j++)
      {
        var vl = 'null';
        if (vals[j]!='')
        {
          if (numobj[cols_list[j]] == 1)
              vl = vals[j].replace(/\s/g, '').replace(',', '.');
          else
              vl = "'" + vals[j].replace(/'/g, "''") + "'";
        }
        if (j==0)
          valstr = valstr + vl;
        else
        valstr = valstr + ", " + vl;  
      }
      valstr = valstr + ");";
      sql = sql + insstr + '\n' + valstr + '\n';
  }
  //

  //res.send(sql);
  
  pool.query(sql, [], (err, result) => {
    if (!result)
    {
      res.send(err.message + '\n' + sql);
    }
    else
    {
      res.send("Данные добавлены в таблицу " + table_name);
    }
  });



}




exports.proc = function (req, res)
{
  var table_name = req.params['table_name']
  var sql = "select column_name, udt_name || coalesce(' (' || character_maximum_length::text ||')', '')  udt_name, column_default  from information_schema.columns  where table_name = $1 order by ordinal_position";
  
  pool.query(sql, [table_name],  (err, result) => {
     if (result.rows.length==0) 
        res.send('Таблица "' + table_name + '" не найдена. ');
     else
     {   
        var rows = result.rows.filter(function(c, index){
          return c.column_default == 'uuid_generate_v1()' || c.column_default == null || index == 0;
        });
        var fields = [];
        for (var i=0; i < rows.length; i++) 
          fields.push(rows[i].column_name);

        var c_default = "''";
        if (rows[0].udt_name == 'uuid')
            c_default = 'uuid_generate_v1()';
        else   
        if (rows[0].column_default != null)
            c_default = rows[0].column_default;

        res.render('proc', {rows: rows, table_name: table_name, fields: fields.join(','), c_default : c_default});
     }
  });
}

exports.getid = async function(req, res)
{
  var table_name = req.params['table_name'];//req.body.table_name;
  var sql = "select column_default, udt_name  from information_schema.columns  where table_name = $1 and ordinal_position = 1";
  var rec = await pool.query(sql, [table_name]);
  if (rec.rows.length == 0)
  {
      res.send({id:''});
      return;
  };
  if (rec.rows[0]["column_default"] == null && rec.rows[0]["udt_name"] != "uuid")
  {
    res.send({id:''});
    return;
  };
  var c_default = rec.rows[0]["column_default"];
  if (rec.rows[0]["udt_name"] == "uuid")
    c_default = "uuid_generate_v1()";
  sql = "select " + c_default + " id";
  pool.query(sql, [], (err, result) => {
    res.send({id: result.rows[0]["id"]})
  });
}

function adminCheck(sql, account)
{
  var res = false;
  if (account != 'Admin')
  {
    if (sql.toLowerCase().indexOf('_ntusers')> -1)
      res = true;
    else
    {
        sqls = sql.split(';');
        for (var i = 0; i < sqls.length; i++)
        {
          if (sqls[i].trim().toLowerCase().substr(0,6) != 'select')
          res = true;
          break;
        }
    }
  }
  return res;
}
async function extrun(req, res)
{
  var sql = req.body.sql;
  var IdDeclare = req.body.IdDeclare;
  if (!sql && !IdDeclare)
  {
      res.send({message: 'Пустая строка sql'});
      return;
  };    
  var account =  req.body.account;
  var password = req.body.password;


  if (!account || !password ) 
  {
    res.send({message: 'Access denied.'});
    return;
  };

  account = account.replace("'", "''");
  password = password.replace("'", "''");
  var sqlcheck = 'select username from t_ntusers where username = $1 and pass = $2';

  var recheck = await pool.query(sqlcheck, [account, password]);
  if (recheck.rows.length == 0)
  {
    res.send({message: 'Access denied.'});
    return;
  }
  
  

  if (IdDeclare)
  {
    var sqldec = 'select decsql from t_rpdeclare where iddeclare = $1';
    var redec = await pool.query(sqldec, [IdDeclare]);
    if (redec.rows.length == 0)
    {
      res.send({message: 'Не найден IdDeclare: ' + IdDeclare });
      return;
    }
    sql = redec.rows[0]['decsql'];
    sql = sql.replace(/\(nolock\)/g, '');
    sql = sql.replace(/\(NOLOCK\)/g, '');
    sql = sql.replace(/\[Account\]/g, account);
  }

  //проверка неразрешенных sql комманд
  if (adminCheck(sql, account))
  {
    res.send({message: 'Access denied.'});
    return;
  }


  var total = 0;
  var sqltotal = sql;

  if (req.body.pagination == "1"  || req.body.LabelField)
  {
    var rows = 50;
    var page = 1;
    
    if (req.body.rows)
        rows = Number(req.body.rows);
    if (req.body.page)    
        page = Number(req.body.page);
    
    var filterRules  = [];
    if (req.body.filterRules)
        filterRules  = JSON.parse(req.body.filterRules);
    var order = req.body.order;
    var sort = req.body.sort;
    
    
    var addFilter = "";
    if (filterRules)
    {
      var filters = [];
      for (var i = 0; i < filterRules.length; i ++)
      {
        var not = '';
        var val = filterRules[i].value.replace(/'/g, "''");
        if (val.substr(0,1) == '!') 
        {
            if (val.length > 1)
            {
                not = ' not ';
                val = val.substr(1);
                filters.push(not + filterRules[i].field + " like '%" + val + "%'");
            }
        }    
        else
            filters.push(not + filterRules[i].field + " like '%" + val + "%'");
      }
    
      addFilter = filters.join(' and ');
    }
    
    var newsort = "";
    if (sort)
    {
      var sorts = [];
      var s = sort.split(',');
      var o = order.split(',');
      for (var i = 0; i < s.length; i++)
      {sorts.push(s[i] + ' ' + o[i]);}
      newsort = sorts.join(',');
    }
    
    
    var decSQL = sql;
    var OrdField = '';
    var n = sql.toLowerCase().indexOf('order by');
    if (n!=-1)
    {
      decSQL = sql.substr(0, n);
      OrdField = sql.substr(n+8);
    }

    if (newsort)
      OrdField = newsort;

    if (addFilter)
    {
      if (decSQL.toLowerCase().indexOf(' where ')==-1 && decSQL.toLowerCase().indexOf(' where\n')==-1 && decSQL.toLowerCase().indexOf('\nwhere\n')==-1 && decSQL.toLowerCase().indexOf('\nwhere ')==-1)
          decSQL = decSQL + ' where ';
      else
          decSQL = decSQL + ' and ';    

      decSQL = decSQL + addFilter;   
    }

    if (OrdField)
      decSQL = decSQL + ' order by ' + OrdField;
    
    sql =  decSQL; 
    sqltotal =  sql;
    
    if (req.body.pagination == "1")
        sql = sql + ' limit ' + rows.toString() + ' offset '  + ((page-1) * rows).toString();


    var footRow = {};
    var sums = []; 
    if (req.body.LabelField)
    {
      var sql1 = sqltotal;
      sums = req.body.SumFields.toLowerCase().split(',');
      footRow[req.body.LabelField.toLowerCase()] = req.body.LabelText;
      sqltotal = "select count(*) n_total";
      for (var i = 0; i < sums.length; i++)
        sqltotal =  sqltotal + ", sum(" + sums[i] + ") " + sums[i];
      sqltotal = sqltotal + "  from (" + sql1 + ") a";
    }
    else
    {
      sqltotal = "select count(*) n_total from (" + sqltotal + ") a";
    }
    var rec = {};
    try
    {
      rec = await pool.query(sqltotal);
      if (rec) 
      {
        total = rec.rows[0].n_total;
        if (req.body.LabelField)
        for (var i = 0; i < sums.length; i++)
          footRow[sums[i]] = rec.rows[0][sums[i]];
      }
    }
    catch(err)    
    {
      res.send({message: err.message});
      return;
    }

  }

  

  
  pool.query(sql, [], (err, result) => {
    if (!result)
    {
      result = {message: err.message};
      res.send(result);
    }
    else
    {
      if (result.length)
          res.send(result[result.length-1])
      else   
      {
          result.total = total;
          if (req.body.LabelField)
          {
            result.footer = [footRow];
          }
          if (req.body.array)
              res.send(result.rows);   
          else    
              res.send(result);
      }
    }
  });

}

exports.runSQL = function (req, res)
{
  extrun(req, res);
}  

function printValue(val)
{
  
  if (isNullOrUndefined(val))
    return '';
  else
  {  
  var p = val.toString();
  try
  {
     p = val.toUTCString();
  }
  catch (ex)   
  {;}
  p = p.replace(/ GMT(\+|\-).... \(...\)$/, '');
  return p;
  }
}



function fieldValue(val, typ)
{
  if (isNullOrUndefined(val))  
      return 'null';

  var p = val.toString();
  try
  {
     p = val.toUTCString();
  }
  catch (ex)   
  {;}
  p = p.replace(/'/g, '\'\'');
  p = p.replace(/ GMT(\+|\-).... \(...\)$/, '');
  p = "'" + p + "'";
  return p;
}

function getTableName(txt)
{
  var rg = /\[(.*?)\]/;
  var regs = txt.match(rg);
  var TableName = regs[1];
  return TableName;
}

function truncateCreate(txt)
{
    var TableName = getTableName(txt);
    if (!TableName)
      return '';
    var res = 'truncate table ' + TableName + ';\r\n';  
    return res;
}

async function setval(txt) 
{
  var table_name = getTableName(txt);
  if (!table_name)
    return '';

    var sql = "select column_name, column_default  from information_schema.columns  where table_name = $1 and ordinal_position = 1";
    var rec = await pool.query(sql, [table_name]);
    if (rec.rows.length == 0)
    {
        return '';
    };
    let column_name = rec.rows[0]['column_name']
    let column_default = rec.rows[0]['column_default']
    if (!column_default)
        return '';
    if (column_default.substr(0,7)!='nextval')    
        return '';

    let rg = /'(.*?)'/;
    let regs = column_default.match(rg);
    let serial = regs[1];    
    let res = "select setval('" + serial + "', max("+ column_name + ")) from " + table_name + ";\r\n"
    return res;
}

async function InsertCreate(txt)
{
    var TableName = getTableName(txt);
    if (!TableName)
      return '';
    
    var rec = await pool.query(txt);
    var res = '\r\n';
    var insStr = 'insert into ' + TableName + '(';
    insStr = insStr + rec.fields[0].name;
    for (var i=1; i < rec.fields.length; i++)
    {
      insStr = insStr + ',' + rec.fields[i].name;
    }
    insStr = insStr + ')\r\n';

    for (var i=0; i < rec.rows.length; i++)
    {
      var valStr = 'values (';
      valStr = valStr + fieldValue(rec.rows[i][rec.fields[0].name], rec.fields[0]);
      for (var j = 1; j < rec.fields.length; j++)
      {
          valStr = valStr + ',' + fieldValue(rec.rows[i][rec.fields[j].name], rec.fields[j]);
      }
      valStr = valStr + ');\r\n';
      res = res + insStr + valStr;
    }
    return res;
}

async function createDumpSQL(sqls, res)
{
  var resSQL = '';
  //truncate
  for (var i = 0; i < sqls.length; i++)
  {
    if (sqls[i] != '')
    {
      resSQL = resSQL + truncateCreate(sqls[i]);
    }
  }

  resSQL = resSQL + '\r\n----------------------------------------------------\r\n';

  for (var i = 0; i < sqls.length; i++)
  {
    if (sqls[i] != '')
    {
      resSQL = resSQL + await InsertCreate(sqls[i]);
    }
  }

  resSQL = resSQL + '\r\n----------------------------------------------------\r\n';

  for (var i = 0; i < sqls.length; i++)
  {
    if (sqls[i] != '')
    {
      resSQL = resSQL + await setval(sqls[i]);
    }
  }

  fs.writeFileSync('./dump.sql', resSQL);
  res.download('./dump.sql');
}

exports.dump = function (req, res)
{
  var sql = req.body.sql;
  var sqls = sql.split(';');
  createDumpSQL(sqls, res);
}   


exports.gettables = function (req, res)
{

  var account =  req.body.account;
  var password = req.body.password;
  if (!account || !password ) 
  {
    res.send([{text: 'Access denied.'}]);
    return;
  };

  var tablist = [];
  var fieldlist = [];
  var re = [];
  pool.query("select table_name from information_schema.tables where table_schema='public' order by table_name", [], (err, result) => {
    tablist = result.rows;
      pool.query("select table_name, column_name || ' ' || udt_name || coalesce('(' || character_maximum_length::text ||')', '')  column_name from information_schema.columns  where table_schema='public' order by table_name, ordinal_position", [], (err1, result1) => {
          fieldlist = result1.rows;
          
          var cols;
          tablist.forEach(function(e){
            re.push({ text: e.table_name, children : [], state: 'closed'});
            cols = fieldlist.filter(function(c){
                return c.table_name == e.table_name;
            });
            cols.forEach(function(rc){
              re[re.length-1].children.push({text:rc.column_name});
            });
            
          });
          
          res.send(re);

        });
    });
  }

  
  function setprintval(rec, row, txt)
  {

    let r = txt;
    for (var i = 0; i < rec.fields.length; i++)
      {
          var valStr = printValue(rec.rows[row][rec.fields[i].name]);
          //var re = new RegExp('\[' + rec.fields[i].name + '\]', 'g');
          var fname = '[' + rec.fields[i].name + ']';
          r = r.replace(fname, valStr);
      }

    return r;  
  }


  function findFiled(field, content)
  {
    
    let ff = '[' + field + ']';
    let nf = content.indexOf(ff);
    if (nf == -1)
      return '';
    
    let nstart = 0;
    let nfinish = 0;
    let nc = 0;
    while (nc < nf && nc != -1)
    {
      nstart = nc;
      nc = content.indexOf('<table:table-row', nc + 1);  
    }
    if (nc ==-1)  
      return '';
    nfinish = content.indexOf('</table:table-row>', nf);  
    if (nfinish == -1)
      return '';
    
    nfinish = nfinish +  18;
    let res = content.substr(nstart, nfinish - nstart);
    return res;
  }
  function printtable(rec, content)
  {
      //Ищем поле
      var txtrow = '';
      for (var i = 0; i < rec.fields.length; i++)
      {
          //var re = new RegExp('<table:table-row(.*?)\[' + rec.fields[i].name + '\](.*?)<\/table:table-row>', 'm');
          //re = /<table:table-row table:style-name="ro1"><table:table-cell table:style-name="ce4" office:value-type="string" calcext:value-type="string"><text:p>\[ar_name\](.*?)<\/table:table-row>/m;
          var mt = findFiled(rec.fields[i].name, content);
          if (mt != '')
          {
            txtrow = mt;
            break;
          }
      }

      if (txtrow == '')
      return content;

      var restab = '';
      for (var i = 0; i < rec.rows.length; i ++)
      {
        restab = restab + setprintval (rec, i, txtrow);
      }  
      
      content = content.replace(txtrow, restab);
      return content;

  }

  exports.print = function (template, sqls, atachname, res)
  {
    
    var temps = template.split('.');
    var folder = './reports/' + temps[0];
    var ext = temps[1];
    var fcon = folder + '/content.xml';
    var content = fs.readFileSync(fcon, 'utf-8');
    
    pool.query(sqls, [], (err, result) => {
      var re = null;
      if (result.length)
          re = result;
      else
          re = [result];    
    
      content = setprintval(re[0], 0, content); 
      for (var i = 1; i < re.length; i++)
      {
        content = printtable(re[i], content);
      }


       var options = {
        excludeParentFolder: true, //Default : false. if true, the content will be zipped excluding parent folder.
        parentFolderName: 'v1.0' //if specified, the content will be zipped, within the 'v1.0' folder
      };
         
      
      var zip = new FolderZip();
      zip.zipFolder(folder, options, function(){
        zip.file('content.xml', content);
        zip.writeToResponse(res, atachname);
        /*
        var filename = folder + '.zip';
        zip.writeToFileSync(filename);
        var rstream = fs.createReadStream(filename);
        rstream.pipe(res);
        */
      });

    });
    
    
    
    
    
    //res.download('./reports/porder.ods');
    
  }