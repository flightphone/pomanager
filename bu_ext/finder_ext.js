//import {rootObj, tc_class} from './editors_bu';
//import {app, finder} from './finder_bu';
//import {rootObj, tc_class, column_editor, image_editor, declare_editor} from './editors_bu';
//import {app, Access, finder, fi_declare} from './finder_bu';
//import {doc_detail_editor, doc_editor} from './editors_ext';

var TLDocs = {
    __proto__:finder,
    editor_class : doc_editor,
    SQLParams : {
        st_pk : '8887ee47-9a53-4819-80c7-290d00748b96'
    },
    init : function()
    {
           if (localStorage["ST_PK"])
                this.SQLParams.st_pk = localStorage["ST_PK"];
    },      
    addInitGrid: function (sender)
    {

        var toolbar = $('<div style="padding:2px 4px"></div>').appendTo('body');
        sender.abut = $('<a>').appendTo(toolbar);
        sender.ebut = $('<a>').appendTo(toolbar);
        sender.dbut = $('<a>').appendTo(toolbar);
        $('<span> Склад: </span>').appendTo(toolbar);
        sender.st_pk = $('<input>').appendTo(toolbar);
        
        //sender.st_pk = $('<input>').appendTo('body');

        sender.st_pk.combobox({
            url: '/pg/runsql',
            method: 'POST',
            queryParams: {
                sql: "select * from v_StoresUTG order by ST_Name",
                array : 1,
                account : app.account,
                password : app.password
            },
            valueField : 'st_pk',
            textField : 'st_name',
            onChange : function (newValue, oldValue) {
                if (newValue!=sender.SQLParams.st_pk)
                    {
                        localStorage["ST_PK"] = newValue;
                        sender.SQLParams.st_pk = newValue;
                        sender.UpdateTab(sender);
                    }
            }
        }); 
        sender.st_pk.combobox('setValue', sender.SQLParams.st_pk); 
        
        
        
        


        //Редакторы
        sender.editor = Object.create(sender.editor_class);
        sender.editor.absid = sender.prop('editor');
        sender.editor.finder = sender;
        sender.editor.start(sender.editor);
        

        sender.abut.linkbutton({
            iconCls: 'icon-add',
            text: 'Добавить',
            plain: true,
            onClick: function(){
                sender.editor.addrecord(sender.editor);
            }
        });
        
        sender.ebut.linkbutton({
            iconCls: 'icon-edit',
            text: 'Редактировать',
            plain: true,
            onClick: function(){
                sender.editor.editrecord(sender.editor);
            }
        });

        sender.dbut.linkbutton({
            iconCls: 'icon-cancel',
            text: 'Удалить',
            plain: true,
            onClick: function(){
                sender.editor.deleterecord(sender.editor);
            }
        });

            $(sender.id('maintab')).datagrid({
                toolbar: toolbar,                   
                onDblClickRow : function(index, row)        
                        { sender.editor.editrecord(sender.editor); }
            });
        }
};

var TLVins = {
    __proto__: finder,
    SQLParams : {
        st_pk : '8887ee47-9a53-4819-80c7-290d00748b96'
    },
    init : function()
    {
           if (localStorage["ST_PK"])
                this.SQLParams.st_pk = localStorage["ST_PK"];
    },      
    addInitGrid: function (sender)
    {

        var toolbar = $('<div style="padding:2px 4px"></div>').appendTo('body');
        sender.st_pk = $('<input>').appendTo(toolbar);
        
        sender.st_pk.combobox({
            url: '/pg/runsql',
            method: 'POST',
            queryParams: {
                sql: "select * from v_StoresUTG order by ST_Name",
                array : 1,
                account : app.account,
                password : app.password
            },
            valueField : 'st_pk',
            textField : 'st_name',
            onSelect : function (record) {
                var newValue = record['st_pk'];
                if (newValue!=sender.SQLParams.st_pk)
                    {
                        localStorage["ST_PK"] = newValue;
                        sender.SQLParams.st_pk = newValue;
                        sender.UpdateTab(sender);
                    }
            }
        }); 
        sender.st_pk.combobox('setValue', sender.SQLParams.st_pk); 
        

        $(sender.id('maintab')).datagrid({
            toolbar: toolbar
        });

    }
};

//export {TLDocs, TLVins};