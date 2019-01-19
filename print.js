var { isNullOrUndefined } = require('util');
var FolderZip = require('folder-zip');
var fs = require('fs');

var pool;
exports.setDB = function (pl) {
    pool = pl;
}

function printValue(val) {

    if (isNullOrUndefined(val))
        return '';
    else {
        var p = val.toString();
        try {
            p = val.toUTCString();
        }
        catch (ex) { ; }
        p = p.replace(/ GMT(\+|\-).... \(...\)$/, '');
        return p;
    }
}


function dateformat(dat, f) {
    if (!dat || f == "#")
        return dat;
    d = dat.toISOString();
    f = f.replace('yyyy', d.substr(0, 4));
    f = f.replace('yy', d.substr(2, 2));
    f = f.replace('MM', d.substr(5, 2));
    f = f.replace('dd', d.substr(8, 2));
    f = f.replace('HH', d.substr(11, 2));
    f = f.replace('mm', d.substr(14, 2));
    return f;
}

function setprintval(rec, row, txt) {

    let r = txt;
    for (var i = 0; i < rec.fields.length; i++) {
        var valStr = printValue(rec.rows[row][rec.fields[i].name]);
        var fname = '\\[' + rec.fields[i].name + ':?(.*?)\\]';
        var re = new RegExp(fname);
        var res = r.match(re);
        while (res) {
            if (res[1]) {
                valStr = printValue(dateformat(rec.rows[row][rec.fields[i].name], res[1]));
            }
            r = r.replace(res[0], valStr);
            res = r.match(re);
        }

    }

    return r;
}

function findFiled(field, content) {

    let ff = '[' + field + ']';
    let nf = content.indexOf(ff);
    if (nf == -1)
        return '';

    let nstart = 0;
    let nfinish = 0;
    let nc = 0;
    while (nc < nf && nc != -1) {
        nstart = nc;
        nc = content.indexOf('<table:table-row', nc + 1);
    }
    if (nc == -1)
        return '';
    nfinish = content.indexOf('</table:table-row>', nf);
    if (nfinish == -1)
        return '';

    nfinish = nfinish + 18;
    let res = content.substr(nstart, nfinish - nstart);
    return res;
}
function printtable(rec, content) {
    //Ищем поле
    var txtrow = '';
    for (var i = 0; i < rec.fields.length; i++) {
        //var re = new RegExp('<table:table-row(.*?)\[' + rec.fields[i].name + '\](.*?)<\/table:table-row>', 'm');
        //re = /<table:table-row table:style-name="ro1"><table:table-cell table:style-name="ce4" office:value-type="string" calcext:value-type="string"><text:p>\[ar_name\](.*?)<\/table:table-row>/m;
        var mt = findFiled(rec.fields[i].name, content);
        if (mt != '') {
            txtrow = mt;
            break;
        }
    }

    if (txtrow == '')
        return content;

    var restab = '';
    for (var i = 0; i < rec.rows.length; i++) {
        restab = restab + setprintval(rec, i, txtrow);
    }

    content = content.replace(txtrow, restab);
    return content;

}

function setnumfield(content) {
    var re = /office:value-type="string"([^>]*?)><text:p>\[([^\]]*?)#\]<\/text:p>/;
    var rep = /<text:p>\[([^\]]*?)#\]<\/text:p>/
    var res = content.match(re);
    while (res) {
        var ostr = res[0];
        var fname = res[2];
        var nstr = ostr.replace(rep, '');
        nstr = nstr.replace('office:value-type="string"', 'office:value-type="float" office:value="[' + fname + ']" ');
        content = content.replace(ostr, nstr);
        res = content.match(re);
    }
    return content;
}

exports.print = function (template, sqls, atachname, res) {

    var temps = template.split('.');
    var folder = './reports/' + temps[0];
    var ext = temps[1];
    var fcon = folder + '/content.xml';
    var content = fs.readFileSync(fcon, 'utf-8');
    content = setnumfield(content);

    pool.query(sqls, [], (err, result) => {
        var re = null;
        if (result.length)
            re = result;
        else
            re = [result];

        content = setprintval(re[0], 0, content);
        for (var i = 1; i < re.length; i++) {
            content = printtable(re[i], content);
        }



        var options = {
            excludeParentFolder: true, //Default : false. if true, the content will be zipped excluding parent folder.
            parentFolderName: 'v1.0' //if specified, the content will be zipped, within the 'v1.0' folder
        };


        var zip = new FolderZip();
        zip.zipFolder(folder, options, function () {
            zip.file('content.xml', content);
            res.setHeader('Content-Disposition', 'attachment; filename="' + atachname + '"');
            res.write(zip.generate({ base64: false, compression: 'DEFLATE' }), "binary");
            res.end();
            //zip.writeToResponse(res, atachname);
        });

    });
}