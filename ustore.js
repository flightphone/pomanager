var pool;
exports.setDB = function(pl) {
    pool = pl;
  }

  function CreateItems(Root, Mn, Tab)
  {
    
    var ListCaption = [];
    var k = Root.split(/\//g).length-1;
    for (var x = 0; x < Tab.length; x++)
    {
        var mi = Tab[x];
        var Caption = mi.caption;
        if (Caption.indexOf(Root)==0)
        {
            var bi = Caption.split('/');
            var ItemCaption = bi[k];
            if (ListCaption.indexOf(ItemCaption)==-1)
            {
                ListCaption.push(ItemCaption);
                //let l = mi.link1.toLowerCase().split('.');
                
                var ilist = {
                    id : (k == bi.length - 1) ? mi.idmenu : mi.idmenu + '_node',
                    text: ItemCaption,
                    attributes : {
                        link1: mi.link1,
                        params : mi.params 
                    } 
                }
                if (mi.idimage > 0)
                   ilist.iconCls = 'tree-' + mi.idimage.toString();
                   
                if (!Mn.children)
                    {Mn.children = [];}
                    Mn.children.push(ilist);
                    Mn.state = 'closed';
                if (k != bi.length - 1)
                    {
                                    CreateItems(Root + ItemCaption + "/", ilist, Tab);
                    }
            }
        }
    }
  }
  
exports.gettree = async function (req, res)
{
    var account =  req.body.account;
    var password = req.body.password;
    if (!account || !password ) 
    {
      res.send([{text: 'Access denied.'}]);
      return;
    };

    account = account.replace("'", "''");
    password = password.replace("'", "''");
    var sqlcheck = 'select username from t_ntusers where username = $1 and pass = $2';

    var recheck = await pool.query(sqlcheck, [account, password]);
    if (recheck.rows.length == 0)
    {
        res.send([{text: 'Access denied.'}]);
        return;
    }
  pool.query("select a.* , fn_getmenuimageid(a.caption) idimage from fn_mainmenu('ALL', $1) a order by a.ordmenu, idmenu", [account], (err, result) => {
    var rootItem = {text : 'root'};
    CreateItems('Root/', rootItem, result.rows);
    res.send(rootItem.children);
    });
  }

  exports.treecss = function (req, res)
  {
    pool.query("select idimage, image_bmp from t_sysmenuimage", [], (err, result) => {
        res.render('treecss', {rows: result.rows});
      });
    }


      