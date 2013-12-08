<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="TCMgr.login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/jquery-1.10.2.min.js" type="text/javascript"></script>
    <script src="Scripts/jquery.min.js" type="text/javascript"></script>
    <script src="Scripts/jquery.easyui.min.js" type="text/javascript"></script>
    <link href="images/skin.css" rel="stylesheet" type="text/css" />
    <link href="images/style_login.css" rel="stylesheet" type="text/css" />
    <script src="JS/validator.js" type="text/javascript"></script>
    <script src="JS/login.js" type="text/javascript"></script>
    <script type="text/javascript">
        function getPX()
        {
            document.getElementById("px").value = window.screen.width+"?"+window.screen.height;
        }  
     </script>      
   
</head>
<body onload='getPX()'>
    <form id="form1" runat="server" onsubmit="return Validator.Validate(this.form,1);">
    <div>
        <table align=center border=0 cellspacing=0 cellpadding=0 >
            <tbody>
                <tr>
                    <td colspan=3  background=images/login_bg.jpg  height=80>
                    </td>
                </tr>
                <tr>
                    <td colspan=3 height = 100></td>
                </tr>
                <tr>
                    <td background='images/index9.jpg' height=285 valign=top width=400 ></td>
                    <td class=cc05></td>
                    <td valign=top style="border-left:dotted thin #cccccc;">
                        <table class="cc06"  border=0 cellpadding=0 cellspacing=0>
                            <tbody>
                                <tr>
                                    <td  height=30 colspan=3><label id="labErrorPN" runat=server visible=false style=" color:Red; font-style:oblique; font-size:medium;"> 输入的用户名或者密码错误！</label></td>
                                </tr>
                                <tr>
                                    <td height=30 width=53>用户名：</td>
                                    <td valign="middle" >
                                        <input runat=server name="txtUserName" value='' style="color:#ff0000; font-weight:bold; padding-left:5px; width:125px; height:25px; vertical-align:middle;" type="text" id=txtUserName dataType="Require" msg="用户名不能为空" maxLength=16 />
                                    </td>
                                    <td >   
                                        <img alt='' src="images/ico_user.gif" width=19 height=18 />
                                    </td>               
                                </tr>
                                <tr>
                                    <td height=30 width=53>密    码：</td>
                                    <td  >
                                        <input runat=server name="txtPassWord" value='' style="color:#ff0000; font-weight:bold; padding-left:5px; width:125px; height:25px; vertical-align:middle;" type=password id=txtPassWord dataType="Require" msg="密码不能为空" maxLength=16 />
                                    </td>
                                    <td >   
                                        <img alt='' src="images/luck.gif" width=19 height=18 />
                                    </td> 
                                </tr>                         
                                <tr>
                                    <td height=30 width=53>验证码：</td>
                                    <td  >                                        
                                        <input runat=server name="txtCode" value='' style="color:#ff0000; font-weight:bold; padding-left:5px; width:125px; height:25px; vertical-align:middle;" type="text" title="看不清楚?点击图片切换" id="txtCode" maxLength=4  dataType="Require" msg="验证码不能为空" />&nbsp;                                                                
                                     </td>
                                     <td >                           
                                        <img alt='看不清，换一张' id="vcodoImg" src="about:blank" onerror="this.onerror=null;this.src='CheckCode.ashx?abc='+Math.random()" onclick="this.src='CheckCode.ashx?abc='+Math.random()" />
                                    </td>   
                                </tr>                             
                                <tr>
                                    <td height=60></td>
                                    <td >
                                        <asp:Button runat=server class="button" ID="btnLogin" Text="登录" OnClick="Login_Btn" OnClientClick="return Validator.Validate(this.form,1);" />
                                    <td ><input id="chkRemeber" type=checkbox name="chkRemember" style="margin-left:8px; vertical-align:middle;"/><label for="chkRemember" style="vertical-align:middle;">记住本次登录</label>
                                    </td>                                                                
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td colspan=3 height=40  background=images/login_bg.jpg>
                    </td>
                </tr>
            </tbody>
        </table>
       
    </div>
    </form>
</body>
</html>
