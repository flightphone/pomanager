var express = require('express');
var bodyParser = require('body-parser');
var multer = require('multer');
var upload = multer();


var port = process.env.PORT || 2000;


const { Pool, Client } = require('pg');


var pool = new Pool({
  user: 'postgres',
  host: 'localhost',
  database: 'uFlights',
  password: 'aA12345678',
  port: 5432,
});


/*
var pool = new Pool({
  user: 'urkxjgkr',
  host: 'pellefant.db.elephantsql.com',
  database: 'urkxjgkr',
  password: 'lgVUtUMa5V9jgL4ngnSz29L0EJXRHdmW',
  port: 5432,
});
*/


var pgadmin = require('./pgutils');
pgadmin.setDB(pool);


var ustore = require('./ustore');
ustore.setDB(pool);


var print = require('./print');
print.setDB(pool);

var app = express();
app.set('views', './views');
app.set('view engine', 'ejs');


app.use(bodyParser.json()); // support json encoded bodies
app.use(bodyParser.urlencoded({ extended: true })); 



app.use(express.static('dist'));
app.post('/pg/gettables', pgadmin.gettables);

app.post('/pg/runsql', upload.fields([]), pgadmin.runSQL);
app.get('/pg/getid/:table_name', pgadmin.getid);
app.post('/pg/dump', upload.fields([]), pgadmin.dump);







app.get('/pg/proc/:table_name', pgadmin.proc);
app.get('/pg/updatecur', ustore.updatecur);
app.post('/pg/csv', upload.fields([]), pgadmin.csvimport);


app.post('/ustore/gettree', ustore.gettree);
app.get('/ustore/tree.css', ustore.treecss)
app.get('/po/print/:id', function (req, res){

  var id = req.params['id'];
  var sqls = 'select * from v_porderh where po_pk = ' + id + ';select * from v_porderd where pd_po = ' + id;
  print.print('porder.ods', sqls, 'porder_' + id + '.ods', res);

});


app.get('/pg/tariffs',  ustore.tariffs);


app.listen(port, function () {
  console.log('Example app listening on port ' + port.toString());
});

