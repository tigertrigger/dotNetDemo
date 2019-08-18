<%@ Page Language="C#" AutoEventWireup="true" CodeFile="example.aspx.cs" Inherits="控件进阶与AJAX_TreeView控件_example" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="../../CSS/StyleSheet.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>
                AJAX扩展：首先必须要有一个ScriptManager控件。然后再UpdatePanel控件里添加模板和触发器
                <br />
                例如现在的节点属性放在了ContentTemplate里，触发器Triggers的控制器id是treeview1的id
                <br />
                所以操作treeview1的时候，只刷新模板里的数据，不会刷新整个页面。除非点刷新按钮和F5。
            </div>
            <%=DateTime.Now.ToFileTime() %>
            <div id="div_treeview" class="fl">
                <asp:TreeView ID="TreeView1" runat="server" OnSelectedNodeChanged="TreeView1_SelectedNodeChanged"></asp:TreeView>
            </div>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <div id="div_other" class="fr">
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <%=DateTime.Now.ToFileTime() %><br />
                        <h4 style="color: red;margin:0px;padding:0px;">[ContentTemplate]</h4>
                        TEXT:<asp:Label ID="lbl_text" runat="server" Text="Label"></asp:Label><br />
                        VALUE:<asp:Label ID="lbl_value" runat="server" Text="Label"></asp:Label><br />
                        VALUEPATH:<asp:Label ID="lbl_valuePath" runat="server" Text="Label"></asp:Label><br />
                        <h4 style="color: red;margin:0px;">[ContentTemplate]</h4>
                    </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="TreeView1" />
                    </Triggers>
                </asp:UpdatePanel>
            </div>
            <div class="clr"></div>
        </div>
    </form>
</body>
</html>
