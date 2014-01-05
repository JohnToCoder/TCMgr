$(document).ready(function () {
    InitDataGrid();
});
var strtxt = "";
function InitDataGrid() {
    $('#dg').datagrid({
        fit: true, //自动大小 
        //        url:'JS/data.json',   
        rownumbers: true, //行号   
        //loadMsg:'数据装载中......',    
        singleSelect: true, //单行选取  
        pagination: false, //显示分页 
        columns: [[
        { field: 'ID', title: 'ID', hidden: true, width: 20 },
        { field: 'Note', title: 'Note', hidden: true, width: 20 },
        { field: 'CreatDate', title: 'date', hidden: true, width: 20 },
        { field: 'Creator', title: 'Creator', hidden: true, width: 20 },
        { field: 'Title', title: '通知', align: 'left', width: 300,
            formatter: function (value, row, index) {
                strtxt = row.ID + '|' + row.Title + '|' + row.Note + '|' + row.CreatDate + '|' + row.Creator;
//                alert(strtxt);
                return "<a href=\"javascript:void(0)\" onclick=\"titClick(" + row.ID + ")\">" + row.Title + "</a>";
            }
        }]],
        fitColumns: true
    });
    $.post('ashx/getNote.ashx',
        function (data) {            
            $('#dg').datagrid("loadData", data);
        }, 'json');

    self.parent.$("#tabs").tabs("loaded");
}

function titClick(strID) {
//    var tab = window.parent.document.getDocumentById('tabs');
//    alert(strID);
    var lID = strtxt.split('|')[1].toString();
    var lNote = strtxt.split('|')[2].toString();
    var lDate = strtxt.split('|')[3].toString();

    $('#labID').text(lID);
    $('#txtNote').text(lNote);
    $('#labDate').text(lDate);
    $('#winNote').window('open');
}
