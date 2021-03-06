﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="TCMgr.index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>首页</title>
    <link href="themes/default/easyui.css" rel="stylesheet" type="text/css" />
    <link href="themes/icon.css" rel="stylesheet" type="text/css" />    
    <link href="JS/themes/icon.css" rel="stylesheet" type="text/css" />
    <script src="Scripts/jquery-1.10.2.min.js" type="text/javascript"></script>
    <script src="Scripts/jquery.min.js" type="text/javascript"></script>
    <script src="Scripts/jquery-ui.js" type="text/javascript"></script>
    <script src="Scripts/jquery.easyui.min.js" type="text/javascript"></script>
    <script src="JS/index.js" type="text/javascript"></script>
    <script type="text/javascript">
        window.onload = function () { $('#loading-mask').fadeOut(); }
        $(window).resize(function () {
            var width = $(window).width() - 10;
            var height = $(window).height() - 10;
            $('#cc').width(width);
            $('#cc').height(height);
            $('#cc').layout();   //窗口改变大小时加载  
            window.location.reload();
        });
         
    </script>    
    <style type="text/css">  
        table {  
            border: 1px solid #ccddff;  
            padding:0;   
            margin:0 auto;  
            border-collapse: collapse;            
        }  
        
       td {  
            border: 1px solid #ccddff;             
            font-size:12px;  
            padding: 1px 1px 1px 1px;  
            color: #4f6b72;  
        } 
        
    </style>  
</head>
<body>
    <form id="form1" runat="server">
    <div id="loading-mask" style="position:absolute;top:0px; left:0px; width:100%; height:100%; background:#D2E0F2; z-index:20000">
        <div id="pageloading" style="position:absolute; top:50%; left:50%; margin:-120px 0px 0px -120px; text-align:center;  border:2px solid #8DB2E3; width:200px; height:40px;  font-size:14px;padding:10px; font-weight:bold; background:#fff; color:#15428B;"> 
            <img src="images/loading.gif" align="absmiddle" /> 网络加载中,请稍候...
            </div>
    </div>
    <div id="cc">        
         
            <table runat=server id="tabMain"   style=" width:900px;height:754px; ">
            
                <tr>
                    <td colspan=3 align=right style=" background-image:url('images/login-wel.gif'); background-repeat:repeat; height:120px;">
                         <div id="divWelcom" style="width:160px;height:120px">
                            <table id="tabWel" style="width:100%; height:100%; border:1px; border-color:#15428B;">
                             <tr>
                                    <td align=center><span >&nbsp;&nbsp;&nbsp;&nbsp;</span></td>                        
                                </tr>
                                <tr>
                                    <td align=left><span style=" font-style:oblique; color:Red; font-size:large">欢迎您：</span></td>                        
                                </tr>
                                <tr>
                                    <td align=center><span><asp:Label ID="labusn" runat="server" Font-Size=Larger Text=""></asp:Label></span></td>                        
                                </tr>
                               
                                <tr>
                                    <td style="vertical-align:middle;" align=center>
                                        <a href='loginout.aspx' ><span class="nav">注销登录</span><span class="icon icon-undo" >&nbsp;</span></a>
                                    </td>                        
                                </tr>
                            </table>
                        </div>
                        
                        
                    </td>
                </tr>
                
                <tr>
                    <td style="width:900px; height:570px"> 
                        <div id="main" runat=server style="width:890px; height:568px">
                            <iframe id="tabIframe" name="subFrameIns" frameborder="0" src="../MenuTab.aspx" style="width: 100%; height: 100%;"></iframe>
                        </div>
                    </td>
                </tr>
                 <tr>
                    <td colspan=3  style=" background-repeat:repeat;" align=center>
                       <a><span>版权所有 |</span></a> <a><span>联系我们 |</span></a><a><span>小樱</span></a>
                    </td>
                 </tr>          
         </table>
     </div>
    </form>
</body>
</html>
