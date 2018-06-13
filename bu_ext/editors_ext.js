//import {rootObj, tc_class} from './editors_bu';
//import {app, finder} from './finder_bu';
//import {rootObj, tc_class, column_editor, image_editor, declare_editor} from './editors_bu';
//import {app, Access, finder, fi_declare} from './finder_bu';

var doc_detail_editor = {
    __proto__ : tc_class,
    onStart : function (sender){
                sender.doctype = Object.create(finder);
                sender.doctype.absid = sender.prop('doctype');
                sender.doctype.IdDeclare = 5088;
                sender.doctype.editform = sender;
                sender.doctype.text = 'Инструменты';
                sender.doctype.singleSelect = false;
                sender.doctype.OKFun = function (sen){
                    sen.editform.okaddsender(sen.editform);
                };
                sender.doctype.start();
    },
    
    okaddsender : function (sender){

        var rows = sender.doctype.MainTab.datagrid('getSelections');
        //console.debug(rows);
        if (rows.length == 0)
        {
            $.messager.alert('Инструменты', 'Выберете запись', 'info');    
            return;
        }
        sender.doctype.win.window('close');
        var recs = [];
        for (var i = 0; i < rows.length; i++)
        {
            recs.push(
                {
                    dd_pk: '',
                    dd_dh: sender.finder.editform.record["dh_pk"],
                    dd_tv: rows[i]['tv_pk1'],
                    dd_comment : '',    
                    dd_audtuser: app.account,    
                    dd_audtdate : ''    
                });
        }
        sender.saveDBrecs(sender, recs, function(sen){
               sen.finder.UpdateTab(sen.finder); 
        });

        
    },
    onShowFinder : function (sender, n)
    {
        
      if (n==0)
      {
        
        sender.fields[n].finder.SQLParams["dd_dh"] = sender.finder.editform.record["dh_pk"];
        sender.fields[n].finder.SQLParams["dh_dt"] = sender.finder.editform.record["dh_dt"];
        sender.fields[n].finder.SQLParams["dh_contragent"] = sender.finder.editform.record["dh_contragent"];
        sender.fields[n].finder.SQLParams["dh_owner"] = sender.finder.editform.record["dh_owner"];
        sender.fields[n].finder.SQLParams["dh_date"] = sender.finder.editform.record["dh_date"]
        sender.fields[n].finder.UpdateTab(sender.fields[n].finder);
      }
      
    },
    
    addrecord :function(sender)
    {

        try
        {
            sender.doctype.MainTab.datagrid('clearChecked');
        }
        catch (ee)
        {};
        sender.doctype.SQLParams["dd_dh"] = sender.finder.editform.record["dh_pk"];
        sender.doctype.SQLParams["dh_dt"] = sender.finder.editform.record["dh_dt"];
        sender.doctype.SQLParams["dh_contragent"] = sender.finder.editform.record["dh_contragent"];
        sender.doctype.SQLParams["dh_owner"] = sender.finder.editform.record["dh_owner"];
        sender.doctype.SQLParams["dh_date"] = sender.finder.editform.record["dh_date"]
        sender.doctype.UpdateTab(sender.doctype);
        sender.doctype.win.window('open');

    },
}

var doc_editor = {
    __proto__ : tc_class,
    onEdit :  function (sender)
    {

        sender.detail.SQLParams['dd_dh']  = sender.record['dh_pk'];
        sender.detail.UpdateTab(sender.detail);

        sender.fields[4].finder.SQLParams.dh_owner = sender.finder.SQLParams.st_pk;
        sender.fields[4].finder.IdDeclare = sender.record['dt_declare'];
        //sender.fields[4].joinRow.fields = {};
        if (sender.fields[4].finder.IdDeclare == 5092)
        {
            sender.fields[4].joinRow.fields.dh_cr = 'st_pk';
            sender.fields[4].joinRow.fields.dh_contragent = 'st_name';

        };

        if (sender.fields[4].finder.IdDeclare == 5023)
        {
            sender.fields[4].joinRow.fields.dh_cr = 'ps_pk';
            sender.fields[4].joinRow.fields.dh_contragent = 'ps_name';

        }


        if (sender.fields[4].finder.IdDeclare == 5060)
        {
            sender.fields[4].joinRow.fields.dh_cr = 'ar_pk';
            sender.fields[4].joinRow.fields.dh_contragent = 'ar_regnumber';

        }

        
        try
        {
            sender.fields[4].finder.MainTab.datagrid('removeFilterRule');
            sender.fields[4].finder.MainTab.datagrid('disableFilter');
            sender.fields[4].finder.start();
        }
        catch (ee)
        {
            sender.fields[4].finder.MainTab.datagrid('removeFilterRule');
            sender.fields[4].finder.MainTab.datagrid('disableFilter');
            sender.fields[4].finder.start();
        }

    },
    onShowFinder : function (sender, n)
    {
        
      if (n==4)
      {
        sender.fields[n].finder.ReloadTab(sender.fields[n].finder);
      }
      
    },
    okaddsender : function(sender)
    {

        var row = sender.doctype.MainTab.datagrid('getSelected');
        if (!row)
        {
            $.messager.alert('Тип документа', 'Выберете запись', 'info');    
            return;
        }

        sender.doctype.win.window('close');

        var table_name = sender.finder.t_rpdeclare.editproc.toLowerCase();
        var keyfield = sender.finder.t_rpdeclare.keyfield.toLowerCase();
        table_name = table_name.replace('p_', '').replace('_edit','');
        var url = '/pg/getid/' + table_name;
        $.get( url, function( data ) {
            sender.record = {};
            sender.record[keyfield] = data.id;
            sender.record["dh_dt"] = row["dt_code"];
            sender.record["dt_code"] = row["dt_code"];
            sender.record["dt_declare"] = row["dt_declare"];
            sender.record["dt_name"] = row["dt_name"];
            sender.record["dt_class"] = row["dt_class"];
            sender.record["dh_owner"] = sender.finder.SQLParams.st_pk;
            sender.record["dh_status"] = "Open";
            sender.setField(sender);
            sender.onEdit(sender);
            sender.action = 0;
            sender.flagEdit = false;    
            sender.winedit.window('open');    
          });

    },
    
    addrecord :function(sender)
    {
        sender.doctype.win.window('open');
    },
    htmlContent: function(sender, ed)
    {

        //Удаляем компоненты
        $(sender.id('winedit')).remove();
        $(sender.id('detail_maintab')).remove();
        for (var i = 0; i < sender.fields.length; i++)
        {
           $(sender.id(sender.fields[i]['field'])).remove();
        }
        
        sender.winedit = $('<div id="'+ sender.idh('winedit') + '" style="width:1200px;height:550px;padding:10px 10px 0px 10px"></div>').appendTo('body');
        var tb = '<table id="' + sender.idh('detail_maintab') + '"></table>';
        
        var s = $('#leftright').html();
        s = s.replace('OKFun', sender.prop('okclick'));
        s = s.replace('CloseFun', sender.prop('cancelclick'));
        s = s.replace('leftContent', ed);
        s = s.replace('rigthContent', tb);
        return s;
    },
    onStart :function (sender)
    {

        sender.detail = Object.create(finder);
        sender.detail.absid = sender.prop('detail');
        sender.detail.editform = sender;
        sender.detail.IdDeclare = 5087;
        sender.detail.editor_class = doc_detail_editor;
        sender.detail.start();
                sender.doctype = Object.create(finder);
                sender.doctype.absid = sender.prop('doctype');
                sender.doctype.IdDeclare = 5090;
                sender.doctype.pagination = false;
                sender.doctype.editform = sender;
                sender.doctype.width = '700';
                sender.doctype.height = '420';
                sender.doctype.text = 'Тип документа';
                sender.doctype.OKFun = function (sen){
                    sen.editform.okaddsender(sen.editform);
                };
                sender.doctype.start();

    }
};

//export {doc_detail_editor, doc_editor};