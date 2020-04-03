var po_editor = {
    __proto__ : tc_class,
    
    detailIdDec : 135,
    masterField: 'po_pk',
    detailField: 'pd_po',

    onEdit :  function (sender)
    {
        //sender.detail.SQLParams['pd_po']  = sender.record['po_pk'].toString();
        //sender.detail.DefaultValues['pd_po']  = sender.record['po_pk'].toString();
        sender.detail.SQLParams[sender.detailField]  = sender.record[sender.masterField].toString();
        sender.detail.DefaultValues[sender.detailField]  = sender.record[sender.masterField].toString();
        sender.detail.UpdateTab(sender.detail);
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
        //sender.detail.IdDeclare = 135;
        sender.detail.IdDeclare = sender.detailIdDec;
        sender.detail.start();

    }
};

var porders = {
    __proto__:finder,
    editor_class : po_editor
};    


Poo = function()
{
    var res = Object.create(porders);
    res.editor_class.detailIdDec = 135;
    res.editor_class.masterField =  'po_pk';
    res.editor_class.detailField =  'pd_po';
    return res;
}