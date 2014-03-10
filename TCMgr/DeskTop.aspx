<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DeskTop.aspx.cs" Inherits="TCMgr.DeskTop" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head>   
    <title>我的桌面</title>
    <link href="themes/icon.css" rel="stylesheet" type="text/css" />
    <link href="themes/gray/easyui.css" rel="stylesheet" type="text/css" />
    <link href="JS/themes/icon.css" rel="stylesheet" type="text/css" />
    <script src="Scripts/jquery-1.10.2.min.js" type="text/javascript"></script>
    <script src="Scripts/jquery.easyui.min.js" type="text/javascript"></script>     
    <script src="JS/DeskTop.js" type="text/javascript"></script>  
    
</head>
<body >
    <form id="form1" runat="server">
    <div id="cc" style="width:100%; height:100%">
        <table id="dg" title="房屋信息" class="easyui-datagrid" style="width:680px;height:250px" 
             data-options="fitColumns:true,singleSelect:true,singleSelect: true,loadMsg:'数据装载中......',pagination: true,rownumbers: true,">
            <thead>
                <tr>
                    <th data-options="field:'ID',width:80,align:'center'">ID</th>
                    <th data-options="field:'FlatsID',width:100,align:'center'">公寓编号</th>
                    <th data-options="field:'RoomID',width:100,align:'center'">房间号</th>
                    <th data-options="field:'RoomStatus',width:100,align:'center'">是否出租</th>
                    <th data-options="field:'FlatsAddr',width:120,align:'center'">公寓地址</th>
                </tr>
            </thead>            
        </table>
        <table id="dgtz" title="通知" class="easyui-datagrid" style="width:680px;height:250px" 
             data-options="url:'ashx/getNote.ashx',fitColumns:true,singleSelect:true,singleSelect: true,loadMsg:'数据装载中......',pagination: true,rownumbers: true,">
            <thead>
                <tr>
                    <th data-options="field:'ID',width:80,align:'center'">ID</th>
                    <th data-options="field:'Title',width:100,align:'center'">标题</th>
                    <th data-options="field:'Note',width:140,align:'center'">内容</th>
                    <th data-options="field:'CreatDate',width:100,align:'center'">创建时间</th>
                    <th data-options="field:'Creator',width:80,align:'center'">创建人</th>
                </tr>
            </thead>            
        </table>    
    </div>
    </form>
</body>
</html>
