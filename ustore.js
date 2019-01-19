var http = require('http');
var pgu = require('./pgutils');
var fs = require('fs');

var pool;
exports.setDB = function (pl) {
    pool = pl;
}

exports.updatecur = async function (req, res) {

    var rec = await pool.query('select * from fn_cur_dates()', []);
    try {
        for (var i = 0; i < rec.rows.length; i++) //rec.rows.length
        {
            let d = rec.rows[i]["cr_date"];
            parceRate(d);
        }
        res.send('Загружены курсы валют за ' + rec.rows.length.toString() + ' дней');
    }
    catch (ex) {
        res.send(ex.message);
    }
}

function parceRate(d) {
    let url = 'http://www.cbr.ru/scripts/XML_daily.asp?date_req=' + d;
    //console.log(url);

    http.get(url, function (rs) {
        let cur = ['EUR', 'USD', 'GBP'];
        let rawData = '';
        rs.on('data', (chunk) => { rawData += chunk; });
        rs.on('end', () => {
            for (var i = 0; i < cur.length; i++) {
                let rx = new RegExp('<CharCode>' + cur[i] + '</CharCode>(.|\n)*?<Value>(.*?)</Value>');

                if (rawData.match(rx)) {
                    let val = rawData.match(rx)[2];
                    let dd = d.substr(6, 4) + '-' + d.substr(3, 2) + '-' + d.substr(0, 2) + 'T00:00.000Z';
                    let sql = "insert into currate (cr_date, cr_cur, cr_rate) values ('" + dd + "', '"
                        + cur[i] + "', " + val.replace(',', '.') + ")";
                    //console.log(sql);
                    pool.query(sql, [], (err, result) => {

                    });
                }
            }
        });
    });

};



function CreateItems(Root, Mn, Tab) {

    var ListCaption = [];
    var k = Root.split(/\//g).length - 1;
    for (var x = 0; x < Tab.length; x++) {
        var mi = Tab[x];
        var Caption = mi.caption;
        if (Caption.indexOf(Root) == 0) {
            var bi = Caption.split('/');
            var ItemCaption = bi[k];
            if (ListCaption.indexOf(ItemCaption) == -1) {
                ListCaption.push(ItemCaption);
                //let l = mi.link1.toLowerCase().split('.');

                var ilist = {
                    id: (k == bi.length - 1) ? mi.idmenu : mi.idmenu + '_node',
                    text: ItemCaption,
                    attributes: {
                        link1: mi.link1,
                        params: mi.params
                    }
                }
                if (mi.idimage > 0)
                    ilist.iconCls = 'tree-' + mi.idimage.toString();

                if (!Mn.children) { Mn.children = []; }
                Mn.children.push(ilist);
                Mn.state = 'closed';
                if (k != bi.length - 1) {
                    CreateItems(Root + ItemCaption + "/", ilist, Tab);
                }
            }
        }
    }
}

exports.gettree = async function (req, res) {
    var account = req.body.account;
    var password = req.body.password;
    if (!account || !password) {
        res.send([{ text: 'Access denied.' }]);
        return;
    };

    account = account.replace("'", "''");
    password = password.replace("'", "''");
    var sqlcheck = 'select username from t_ntusers where username = $1 and pass = $2';

    var recheck = await pool.query(sqlcheck, [account, password]);
    if (recheck.rows.length == 0) {
        res.send([{ text: 'Access denied.' }]);
        return;
    }
    pool.query("select a.* , fn_getmenuimageid(a.caption) idimage from fn_mainmenu('ALL', $1) a order by a.ordmenu, idmenu", [account], (err, result) => {
        var rootItem = { text: 'root' };
        CreateItems('Root/', rootItem, result.rows);
        res.send(rootItem.children);
    });
}

exports.treecss = function (req, res) {
    pool.query("select idimage, image_bmp from t_sysmenuimage", [], (err, result) => {
        res.render('treecss', { rows: result.rows });
    });
}

exports.tariffs = async function (req, res) {
    var sql = "select * from v_Tariffs_ext_import where nn = (select nn from tariffs_ext_load where is_run = 1) /*[Tariffs_ext_import]*/";
    var resSQL = 'use uFlights\r\ngo\r\n';
    resSQL = resSQL + pgu.truncateCreate(sql);
    resSQL = resSQL + '\r\n----------------------------------------------------\r\n';
    resSQL = resSQL + await pgu.InsertCreate(sql);
    resSQL = resSQL + '\r\n----------------------------------------------------\r\n';
    resSQL = resSQL + '\r\ndeclare @date datetime, @al uniqueidentifier, @n int\r\n';

    var sqlproc = 'select * from v_tariffs_ext_load where is_run = 1;';

    
    var recheck = await pool.query(sqlproc, []);
    for (var i = 0; i < recheck.rows.length; i++) {
        var mi = recheck.rows[i];
        resSQL = resSQL + '\r\n-----' + mi.al_nameru + '\r\n';
        resSQL = resSQL + "set @date = '" + mi.tf_datebeg.toISOString().substr(0, 10) + "'\r\n";
        resSQL = resSQL + "set @n = " + mi.nn.toString() + "\r\n";
        resSQL = resSQL + "set @al = '" + mi.tf_al + "'\r\n";
        resSQL = resSQL + "exec uFlights..p_Tariffs_ext_load\r\n";
        resSQL = resSQL + "@NN = @n,\r\n";
        resSQL = resSQL + "@TF_AL =@al,\r\n";
        resSQL = resSQL + "@TF_DateBeg = @date,\r\n";
        resSQL = resSQL + "@TF_Agent = '" + mi.tf_agent + "',\r\n";
        resSQL = resSQL + "@TF_Currency = '" + mi.tf_currency + "',\r\n";
        resSQL = resSQL + "@TF_VAT_str = '" + mi.tf_vat_str + "',\r\n";
        resSQL = resSQL + "@TF_Comment = '" + mi.tf_comment + "'\r\n\r\n";


        resSQL = resSQL + "exec WorkOrders..p_syncTariff\r\n";
        resSQL = resSQL + "@AL_PK = @al,\r\n";
        resSQL = resSQL + "@VT_DateBeg = @date\r\n\r\n";


        resSQL = resSQL + "exec WorkOrders..p_Orders_Culc\r\n";
        resSQL = resSQL + "@AL_PK = @al,\r\n";
        resSQL = resSQL + "@VT_DateBeg = @date\r\n\r\n";

        resSQL = resSQL + '\r\n----------------------------------------------------\r\n';
    }


    fs.writeFileSync('./dump.sql', resSQL);
    res.download('./dump.sql');

}

