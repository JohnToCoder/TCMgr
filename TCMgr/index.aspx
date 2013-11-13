<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="TCMgr.index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>首页</title>
    <link href="themes/default/easyui.css" rel="stylesheet" type="text/css" />
    <link href="themes/icon.css" rel="stylesheet" type="text/css" />
    <script src="Scripts/jquery-1.10.2.min.js" type="text/javascript"></script>
    <script src="Scripts/jquery.min.js" type="text/javascript"></script>
    <script src="Scripts/jquery-ui.js" type="text/javascript"></script>
    <script src="Scripts/jquery.easyui.min.js" type="text/javascript"></script>
    <script src="JS/index.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
    
    <div id="cc">
        <div data-options="region:'north'" style="height:100px;" >
            <p>标题层，制作标题背景图和标题内容</p>
            <div style="float:right">
                <asp:Label ID="Username" runat="server" Text="">  <h3 style="color:Red">欢迎您！</h3></asp:Label>               
            </div>
        </div>
        <div data-options="region:'south'" style="height:50px;"></div>
        <div data-options="region:'west',split:true" title="West" style="width:150px;">
            <div class="easyui-accordion" data-options="fit:true,border:false">
                <div title="Title1" style="padding:10px;">
                    content1
                </div>
                <div title="Title2" data-options="selected:true" style="padding:10px;">
                    content2
                </div>
                <div title="Title3" style="padding:10px">
                    content3
                </div>
            </div>
        </div>
        <div data-options="region:'center',title:'Main Title',iconCls:'icon-ok'">
            <div class="easyui-tabs" data-options="fit:true,border:false,plain:true">
                <div title="About" data-options="href:'_content.html'" style="padding:10px"></div>
                <div title="DataGrid" style="padding:5px">
                    <table class="easyui-datagrid"
                            data-options="url:'datagrid_data1.json',method:'get',singleSelect:true,fit:true,fitColumns:true">
                        <thead>
                            <tr>
                                <th data-options="field:'itemid'" width="80">Item ID</th>
                                <th data-options="field:'productid'" width="100">Product ID</th>
                                <th data-options="field:'listprice',align:'right'" width="80">List Price</th>
                                <th data-options="field:'unitcost',align:'right'" width="80">Unit Cost</th>
                                <th data-options="field:'attr1'" width="150">Attribute</th>
                                <th data-options="field:'status',align:'center'" width="50">Status</th>
                            </tr>
                        </thead>
                    </table>
                </div>
            </div>
        </div>
  
       
    </div>
    
    </form>
</body>
</html>
