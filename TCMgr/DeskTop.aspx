<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DeskTop.aspx.cs" Inherits="TCMgr.DeskTop" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <meta http-equiv="refresh" content="500">
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE8"/><title>我的桌面</title>
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
<body >
    <form id="form1" runat="server">
    <div id="cc" style="width:95%; height:95%">
        <table >
        <tr>
            <td style="width:60%; height:460px">
                <div id="list" class="easyui-panel" title="房屋信息" style="padding:5px;"  data-options="fit:true,iconCls:'icon-save',collapsible:true">
                    <asp:GridView ID="gvList" runat="server" AllowPaging="True" 
                        AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" 
                        ForeColor="#333333" GridLines="None" 
                        Width="524px" HorizontalAlign="Center" >
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="ID" HeaderText="序号" />
                            <asp:BoundField DataField="FlatsID" HeaderText="楼栋号" >
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="RoomID" HeaderText="房间号" >
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="RoomStatus" HeaderText="是否出租" >
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="FlatsAddr" HeaderText="楼栋地址" >
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:TCMgrConnectionString %>" 
                        SelectCommand="select a.ID,a.FlatsID,a.RoomID,(case when a.RoomStatus='0' then '否' else '是' end) as RoomStatus,b.FlatsAddr from dbo.tabRoom a left join dbo.tabFlatsAdmin b on a.FlatsID=b.FlatsID">
                    </asp:SqlDataSource>
                </div>
            </td>
            <td style="width:40%; height:460px">
                <div id="note" class="easyui-panel" title="通知" style="padding:5px;"  data-options="fit:true,iconCls:'icon-save',collapsible:true,">
                    <table id="dg"></table>
                </div>
            </td>
        </tr>
        
        </table>
    </div>
    <div id="winNote" class="easyui-window" title="通知" 
        data-options="iconCls:'icon-save',closed:true," 
        style="width:359px; height:321px; padding:5px;" >
        <div class="easyui-layout" data-options="fit:true">
            <div data-options="region:'center'" style="padding:10px;">
                <table style="width:95%; height:80%">
                    <tr >
                        <td align=center><label id="labID" style=" font-size:medium"></label></td>
                    </tr>
                    <tr>
                        <td><textarea id="txtNote" runat=server  
                                style=" width: 298px; height: 113px; margin-right: 0px;" ></textarea></td>
                    </tr>
                    <tr>
                        <td align=right><label id="labDate" style=" font-size:medium"></label></td>
                    </tr>
                </table>
            </div>
            <div data-options="region:'south',border:false" style="text-align:right;padding:5px 0 0;">                
                <a class="easyui-linkbutton" data-options="iconCls:'icon-cancel'" href="javascript:void(0)" onclick="$('#winNote').window('close')">关闭</a>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
