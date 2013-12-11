<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="TCMgr.index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>首页</title>
    <link href="themes/default/easyui.css" rel="stylesheet" type="text/css" />
    <link href="themes/icon.css" rel="stylesheet" type="text/css" />    
    <link href="Styles/Style_d.css" rel="stylesheet" type="text/css" />
    <script src="Scripts/jquery-1.10.2.min.js" type="text/javascript"></script>
    <script src="Scripts/jquery.min.js" type="text/javascript"></script>
    <script src="Scripts/jquery-ui.js" type="text/javascript"></script>
    <script src="Scripts/jquery.easyui.min.js" type="text/javascript"></script>
    <script src="JS/index.js" type="text/javascript"></script>
</head>
<body>
    <noscript>
        <div style=" position:absolute; z-index:100000; height:2046px;top:0px;left:0px; width:100%; background:white; text-align:center;">
            <img src="images/noscript.gif" alt='抱歉，请开启脚本支持！' />
        </div>
    </noscript>       
    <div id="loading-mask" style="position:absolute;top:0px; left:0px; width:100%; height:100%; background:#D2E0F2; z-index:20000">
        <div id="pageloading" style="position:absolute; top:50%; left:50%; margin:-120px 0px 0px -120px; text-align:center;  border:2px solid #8DB2E3; width:200px; height:40px;  font-size:14px;padding:10px; font-weight:bold; background:#fff; color:#15428B;"> 
            <img src="images/loading.gif" align="absmiddle" /> 网络加载中,请稍候...
            </div>
    </div>
    <form id="form1" runat="server">
    
    <div id="cc">       

        <div region="north" split="true" border="false" style="vertical-align:middle;overflow: hidden; height: 30px;
            background: url(images/layout-browser-hd-bg.gif) #7f99be repeat-x center 50%;
            line-height: 20px;color: #fff; font-family: Verdana, 微软雅黑,黑体"> 
            <span id="interface_bt1"><a href='loginout.aspx'><img alt="" src="images/logout.gif" onclick="return confirm('确认：您确认要安全注销，退出登录吗？')" border="0" title="安全注销，退出登陆" align="absmiddle"  /></a></span>             
            <span id="interface_bt2"><a onclick="addTab('个人资料','/manage/Common/User_InfoEdit.aspx','icon-user2')" href='#'><img src="images/menubox_memberico.gif" border="0"  title="个人设置" align="absmiddle"  /></a></span>
            <span style="padding-left:10px; font-size: 15px; font-weight:bold; "><img alt="" src="images/user_logo.png" width="20" height="20" align="absmiddle" /> &nbsp;&nbsp;   <%=strUserName %> </span>
        </div>
        <div data-options="region:'south'" style="height:50px;"></div>
        <div data-options="region:'west',split:true" title="导航菜单" style="width:150px;">
            <div id="leftMenu">
            <!--  左边栏导航内容 -->   
            </div>
        </div>
        <div id="mainPanle" region="center" style="background: #eee; overflow-y:hidden">
            <div id="tabs" class="easyui-tabs"  fit="true" border="false" >
             <!--<div title='隐藏层(勿删)'></div>-->
		    </div>
         </div> 
         <div id="mm" class="easyui-menu" style="width:150px;">
		    <div id="mm-tabupdate">刷新选项卡</div>
		    <div class="menu-sep"></div>
		    <div id="mm-tabclose">关闭</div>
		    <div id="mm-tabcloseall">全部关闭</div>
		    <div id="mm-tabcloseother">除此之外全部关闭</div>
		    <div class="menu-sep"></div>
		    <div id="mm-tabcloseright">当前页右侧全部关闭</div>
		    <div id="mm-tabcloseleft">当前页左侧全部关闭</div>
		    <div class="menu-sep"></div>
		    <div id="mm-exit">退出</div>
	    </div>      
    </div>    
    </form>
</body>
</html>
