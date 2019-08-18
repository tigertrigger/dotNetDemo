<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="控件进阶与AJAX_TreeView控件_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <style type="text/css">
        .lv1 {
            font-size: 18px;
            color: red;
        }

        .lv2 {
            font-size: 15px;
            color: green;
        }
        .lv3{font-size:12px;color:gray;}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            ShowCheckBoxes属性可以让treeview控件前面变成可选项。
            LevelStyles手动添加几个，就代表第几级的CssClass。
        </div>

        <div>
            <asp:TreeView ID="TreeView1" runat="server" ShowCheckBoxes="All">
                <LevelStyles>
                    <asp:TreeNodeStyle CssClass="lv1" Font-Underline="False" />
                    <asp:TreeNodeStyle CssClass="lv2" Font-Underline="False" />
                    <asp:TreeNodeStyle CssClass="lv3" Font-Underline="False" />
                </LevelStyles>
                <Nodes>
                    <asp:TreeNode Text="111" Value="111">
                        <asp:TreeNode Text="A1" Value="A1"></asp:TreeNode>
                        <asp:TreeNode Text="A2" Value="A2"></asp:TreeNode>
                        <asp:TreeNode Text="A3" Value="A3"></asp:TreeNode>
                    </asp:TreeNode>
                    <asp:TreeNode Text="222" Value="222">
                        <asp:TreeNode Text="B1" Value="B1">
                            <asp:TreeNode Text="BB1" Value="BB1"></asp:TreeNode>
                        </asp:TreeNode>
                    </asp:TreeNode>
                    <asp:TreeNode Text="333" Value="333"></asp:TreeNode>
                    <asp:TreeNode Text="444" Value="444"></asp:TreeNode>
                </Nodes>
            </asp:TreeView>
            <asp:Button ID="Button1" runat="server" Text="获取节点信息" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" Text="添加一级节点" OnClick="Button2_Click" />
            <asp:Button ID="Button3" runat="server" Text="添加子节点的子节点" OnClick="Button3_Click" />
            <br />
            <asp:Button ID="Button4" runat="server" Text="遍历选中节点" OnClick="Button4_Click" />
        </div>
    </form>
</body>
</html>
