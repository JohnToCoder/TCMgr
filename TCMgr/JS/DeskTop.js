$(document).ready(function () {
    InitDataGrid();
   
});
var strtxt = "";
function InitDataGrid() {

    $.post('ashx/getFlatInfo.ashx',
        function (data) {            
            $('#dg').datagrid("loadData", data);
        }, 'json');

    self.parent.$("#tabs").tabs("loaded");
}
