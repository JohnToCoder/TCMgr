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
        <div data-options="region:'west'" style="width:150px;"></div>
        <div data-options="region:'center'" style="padding:20px">
            <p>Panel Content.</p>
            
        </div>
    </div>
    
    </form>
</body>
</html>
