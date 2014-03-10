<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="User_Manager.aspx.cs" Inherits="TCMgr.Admin.User_Manager" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>用户管理</title>
    <link href="../themes/icon.css" rel="stylesheet" type="text/css" />
    <link href="../themes/gray/easyui.css" rel="stylesheet" type="text/css" />
    <link href="../themes/userm.css" rel="stylesheet" type="text/css" />
    <link href="../JS/themes/icon.css" rel="stylesheet" type="text/css" />
    <script src="../Scripts/jquery-1.10.2.min.js" type="text/javascript"></script>
    <script src="../Scripts/jquery.easyui.min.js" type="text/javascript"></script>
</head>
<body>
    <form id="fm" method="post" runat="server">
    <div id="cc" style="width:100%; height:100%">
        <table id="dg" title="房屋信息" class="easyui-datagrid" style="width:680px;height:500px" 
                 url="get_users.php"
            toolbar="#toolbar" pagination="true"
            rownumbers="true" fitColumns="true" singleSelect="true" >
                <thead>
                    <tr>
                        <th data-options="field:'ID',width:60,align:'center',hidden:true">ID</th>
                        <th data-options="field:'UserID',width:60,align:'center'">用户ID</th>
                        <th data-options="field:'FlatsID',width:80,align:'center'">用户姓名</th>
                        <th data-options="field:'RoomID',width:80,align:'center'">用户类型</th>
                        <th data-options="field:'RoomStatus',width:100,align:'center'">身份证号</th>
                        <th data-options="field:'FlatsAddr',width:80,align:'center'">电话</th>
                        <th data-options="field:'FlatsAddr',width:100,align:'center'">邮箱</th>
                    </tr>
                </thead>            
          </table>
          <div id="toolbar">
                <a id="tbAdd" href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-add" plain="true" >新增</a>
                <a id="tdEdit" href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-edit" plain="true" >编辑</a>
                <a id="tdDelete" href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-remove" plain="true" >删除</a>
            </div>
    
            <div id="dlg" class="easyui-dialog" style="width:400px;height:280px;padding:10px 20px"
                    closed="true" buttons="#dlg-buttons">
            <div class="ftitle">User Information</div>
               
                    <div class="fitem">
                        <label>First Name:</label>
                        <input name="firstname" class="easyui-validatebox" required="true">
                    </div>
                    <div class="fitem">
                        <label>Last Name:</label>
                        <input name="lastname" class="easyui-validatebox" required="true">
                    </div>
                    <div class="fitem">
                        <label>Phone:</label>
                        <input name="phone">
                    </div>
                    <div class="fitem">
                        <label>Email:</label>
                        <input name="email" class="easyui-validatebox" validType="email">
                    </div>               
            </div>
            <div id="dlg-buttons">
                <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-ok" onclick="saveUser()">保存</a>
                <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-cancel" onclick="javascript:$('#dlg').dialog('close')">取消</a>
            </div>
          
    </div>
   
    </form>
</body>
</html>
