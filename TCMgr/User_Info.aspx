<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="User_Info.aspx.cs" Inherits="TCMgr.Manage.User_Info" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>个人资料</title>
    <link href="themes/icon.css" rel="stylesheet" type="text/css" />
    <link href="themes/default/easyui.css" rel="stylesheet" type="text/css" />
    <link href="JS/themes/icon.css" rel="stylesheet" type="text/css" />
    <script src="Scripts/jquery.min.js" type="text/javascript"></script>
    <script src="Scripts/jquery.easyui.min.js" type="text/javascript"></script>     
    <script src="JS/DeskTop.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(window).resize(function () {
            var width = $(window).width() - 10;
            var height = $(window).height() - 10;

            $('#cc').width(width);
            $('#cc').height(height);
            $('#cc').layout();   //窗口改变大小时加载  
        });

    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div id="cc" >
        
    </div>
    </form>
</body>
</html>
