<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DeskTop.aspx.cs" Inherits="TCMgr.DeskTop" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <meta http-equiv="refresh" content="500">
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE8"/><title>我的桌面</title>
    <link href="themes/icon.css" rel="stylesheet" type="text/css" />
    <link href="themes/default/easyui.css" rel="stylesheet" type="text/css" />
    <script src="Scripts/jquery-1.10.2.min.js" type="text/javascript"></script>
    <script src="Scripts/jquery.easyui.min.js" type="text/javascript"></script>
    <script src="Scripts/jquery.min.js" type="text/javascript"></script>
    <script src="Scripts/jquery-ui.js" type="text/javascript"></script>
    <script src="JS/common.js" type="text/javascript"></script>
    <script type="text/javascript" src="/JS/zDialog.js"></script>   
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
<body >
    <form id="form1" runat="server">
    <div id="cc" style="width:95%; height:98%">
        <table >
        <tr>
            <td>
                <div id="list" class="easyui-panel" title="房屋信息" style="width:500px;heitght:600px;padding:5px;"  data-options="iconCls:'icon-save',collapsible:true,minimizable:true,maximizable:true,closable:true">
                    <ul>
                        <li>easyui is a collection of user-interface plugin based on jQuery.</li>
                        <li>easyui provides essential functionality for building modem, interactive, javascript applications.</li>
                        <li>using easyui you don't need to write many javascript code, you usually defines user-interface by writing some HTML markup.</li>
                        <li>complete framework for HTML5 web page.</li>
                        <li>easyui save your time and scales while developing your products.</li>
                        <li>easyui is very easy but powerful.</li>
                    </ul>
                </div>
            </td>
            <td >
                <div id="note" class="easyui-panel" title="通知" style="width:300px;heitght:600px;padding:5px;"  data-options="iconCls:'icon-save',collapsible:true,minimizable:true,maximizable:true,closable:true">
                    <ul>
                        <li>easyui is a collection of user-interface plugin based on jQuery.</li>
                        <li>easyui provides essential functionality for building modem, interactive, javascript applications.</li>
                        <li>using easyui you don't need to write many javascript code, you usually defines user-interface by writing some HTML markup.</li>
                        <li>complete framework for HTML5 web page.</li>
                        <li>easyui save your time and scales while developing your products.</li>
                        <li>easyui is very easy but powerful.</li>
                    </ul>
                </div>
            </td>
        </tr>
        
        </table>
    </div>
    </form>
</body>
</html>
