<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MenuTab.aspx.cs" Inherits="TCMgr.MeauTab" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>首页</title>
    <link href="themes/default/easyui.css" rel="stylesheet" type="text/css" />
    <link href="themes/icon.css" rel="stylesheet" type="text/css" />    
    <link href="Styles/Style_d.css" rel="stylesheet" type="text/css" />
    <link href="JS/themes/icon.css" rel="stylesheet" type="text/css" />
    <script src="Scripts/jquery-1.10.2.min.js" type="text/javascript"></script>
    <script src="Scripts/jquery.min.js" type="text/javascript"></script>
    <script src="Scripts/jquery-ui.js" type="text/javascript"></script>
    <script src="Scripts/jquery.easyui.min.js" type="text/javascript"></script>
    <script src="JS/index.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
     <div id="cc">       
        
        <div data-options="region:'west',split:true" title="导航菜单" style="width:150px;">
            <div id="leftMenu">
                <div runat=server id="AdminMenu" visible=true>
                    <ul class="leftMenulist">
                         <li><div ><a href="#" rel="" ><span class="icon icon-users" >&nbsp;</span><span class="nav">用户管理</span></a></div></li>
                         <li><div ><a href="#" rel="" ><span class="icon icon-paste" >&nbsp;</span><span class="nav">公寓管理</span></a></div></li>
                         <li><div ><a href="#" rel="" ><span class="icon icon-user2" >&nbsp;</span><span class="nav">个人资料</span></a></div></li>
                         <li><div ><a href="#" rel="" ><span class="icon icon-tip" >&nbsp;</span><span class="nav">通   知</span></a></div></li>
                         
                    </ul>
                </div>
                <div runat=server id="MgrMenu" visible=false>
                    <ul class="leftMenulist">
                         <li><div ><a href="#" rel="" ><span class="icon icon-table" >&nbsp;</span><span class="nav">房间管理</span></a></div></li>
                         <li><div ><a href="#" rel="" ><span class="icon icon-home1" >&nbsp;</span><span class="nav">房间设施</span></a></div></li>
                         <li><div ><a href="#" rel="" ><span class="icon icon-user" >&nbsp;</span><span class="nav">租客管理</span></a></div></li>
                         <li><div ><a href="#" rel="" ><span class="icon icon-new2" >&nbsp;</span><span class="nav">房租管理</span></a></div></li>
                         <li><div ><a href="#" rel="" ><span class="icon icon-user2" >&nbsp;</span><span class="nav">个人资料</span></a></div></li>

                    </ul>
                </div>
                <div runat=server id="UserMenu" visible=false>
                    <ul class="leftMenulist">
                         <li><div ><a href="#" rel="" ><span class="icon icon-task" >&nbsp;</span><span class="nav">房租查询</span></a></div></li>
                         <li><div ><a href="#" rel="" ><span class="icon icon-user2" >&nbsp;</span><span class="nav">个人资料</span></a></div></li>
                         
                    </ul>
                </div>
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
