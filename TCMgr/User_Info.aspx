﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="User_Info.aspx.cs" Inherits="TCMgr.Manage.User_Info" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>个人资料</title>
    <link href="themes/icon.css" rel="stylesheet" type="text/css" />
    <link href="themes/default/easyui.css" rel="stylesheet" type="text/css" />
    <link href="JS/themes/icon.css" rel="stylesheet" type="text/css" />
    <script src="Scripts/jquery.min.js" type="text/javascript"></script>
    <script src="Scripts/jquery.easyui.min.js" type="text/javascript"></script>  
    <script src="JS/jquery.md5.js" type="text/javascript"></script>
   
    <script type="text/javascript">

        $.extend($.fn.validatebox.defaults.rules, {
            /*必须和某个字段相等*/
            equalTo: {
                validator: function (value, param) {
                    return $(param[0]).val() == value;
                },
                message: '字段不匹配'
            }
        });
        $(document).ready(function () {
            $('#btnTijiao').bind('click', function () {
                var struName = $('#txtuname').val().toString();
                var strtxtTell = $('#txtTell').val().toString();
                var strtxtEmail = $('#txtEmail').val().toString();
                $.post("../ashx/editPersonal.ashx",
                    { 'flag': '1',
                        'username': struName,
                        'utel': strtxtTell,
                        'uemail': strtxtEmail
                    },
                      function (returnvalue) {
                          if (returnvalue == "OK") {
                              alert('修改资料成功！');
                              return;
                          } else {
                              alert('网络问题！请重新修改提交资料');
                              return;
                          }
                      });
            });
            $('#btnpwedit').bind('click', function () {
                var strupw = $('#txtPassWord').val().toString();
                $.post("../ashx/editPersonal.ashx",
                    { 'flag': '2',
                        'upassword': strupw
                    },
                      function (returnvalue) {
                          if (returnvalue == "OK") {
                              alert('修改密码成功！');
                              return;
                          } else {
                              alert('网络问题！请重新修改提交资料');
                              return;
                          }
                      });
            });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div id="cc" style=" margin-top:20px">
         <table  border=0 cellpadding=0 cellspacing=0 style="border: 1px solid #CCEEFF;padding:1px 1px 1px 1px; " >
                
                <tr>
                    <td height=28 width=100 style="border: 1px solid #CCEEFF;font-size:14px;" align=right>用户ID：</td>
                        <td width=180 style="border: 1px solid #CCEEFF;font-size:14px;">
                            &nbsp;<input runat=server name="txtuid" readonly=readonly value='' style="color:#ff0000; font-weight:bold; padding-left:5px; width:135px; height:28px; vertical-align:middle; " type="text" id="txtuid" />&nbsp;
                        </td>
                    </tr>
                <tr>
                    <td height=28 width=100 style="border: 1px solid #CCEEFF;font-size:14px;" align=right>用户名：</td>
                    <td style="border: 1px solid #CCEEFF;font-size:14px;" >
                        &nbsp;<input runat=server name="txtuname" value='' style="color:#ff0000; font-weight:bold; padding-left:5px; width:135px; height:28px; vertical-align:middle;" type="text"  id="txtuname" maxLength=10 dataType="Require" msg="用户名不能为空"  />&nbsp;
                    </td>
                       
                </tr>
               
                <tr>
                    <td height=28 width=100 style="border: 1px solid #CCEEFF;font-size:14px;" align=right>用户类型：</td>
                    <td style="border: 1px solid #CCEEFF;font-size:14px;" >                                        
                        &nbsp;<input runat=server name="txtCode" readonly=readonly value='' style="color:#ff0000; font-weight:bold; padding-left:5px; width:135px; height:28px; vertical-align:middle;" type="text"  id="txtUserType"  />&nbsp;                                                                
                     </td>                       
                </tr>
                <tr>
                    <td height=28 width=100 style="border: 1px solid #CCEEFF;font-size:14px;" align=right>联系电话：</td>
                    <td style="border: 1px solid #CCEEFF;font-size:14px;" >                                        
                        &nbsp;<input runat=server name="txtCode" value='' style="color:#ff0000; font-weight:bold; padding-left:5px; width:135px; height:28px; vertical-align:middle;" type="text" id="txtTell"  maxLength=16/>&nbsp;                                                                
                     </td>                       
                </tr>
                <tr>
                    <td height=28 width=100 style="border: 1px solid #CCEEFF;font-size:14px;" align=right>邮箱：</td>
                    <td style="border: 1px solid #CCEEFF;font-size:14px;" >                                        
                        &nbsp;<input runat=server name="txtCode" value='' style="color:#ff0000; font-weight:bold; padding-left:5px; width:135px; height:28px; vertical-align:middle;" type="text" id="txtEmail" maxLength=28 />&nbsp;                                                                
                     </td>                       
                </tr>                         
                 <tr>
                    <td style="border: 1px solid #CCEEFF;font-size:14px;" height=28 colspan=2 align=center>
                        <a id="btnTijiao" href="#" class="easyui-linkbutton" data-options="toggle:true">提交修改</a>
                    </td>
                 </tr> 
                 
                  <tr>
                    <td height=28 width=100 style="border: 1px solid #CCEEFF;font-size:14px;" align=right>密码：</td>
                    <td style="border: 1px solid #CCEEFF;font-size:14px;" >
                        &nbsp;<input runat=server name="txtPassWord" value='' style="color:#ff0000; font-weight:bold; padding-left:5px; width:135px; height:28px; vertical-align:middle;" validType="length[4,32]" class="easyui-validatebox" required="true" type="password"  id=txtPassWord dataType="Require" msg="密码不能为空" maxLength=16 />
                    </td>
                    
                </tr>                         
                <tr>
                    <td height=28 width=100 style="border: 1px solid #CCEEFF;font-size:14px;" align=right>重复密码：</td>
                    <td style="border: 1px solid #CCEEFF;font-size:14px;" >                                        
                        &nbsp;<input runat=server name="txtPassWord" value='' style="color:#ff0000; font-weight:bold; padding-left:5px; width:135px; height:28px; vertical-align:middle;"  type="password"  required="true" class="easyui-validatebox"  validType="equalTo['#txtPassWord']" invalidMessage="两次输入密码不匹配" id=txtRePassWord dataType="Require" msg="重复密码不能为空" maxLength=16 />
                     </td>                       
                </tr>  
                <tr>
                    <td style="border: 1px solid #CCEEFF;font-size:14px;" height=28 colspan=2 align=center>
                        <a id="btnpwedit" href="#" class="easyui-linkbutton" data-options="toggle:true">修改密码</a>
                    </td>
                 </tr>         
        </table>
    </div>
    </form>
</body>
</html>
