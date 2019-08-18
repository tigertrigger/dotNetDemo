<%@ Page Language="C#" AutoEventWireup="true" CodeFile="11-2 MultiView和View.aspx.cs" Inherits="控件进阶_11_2_MultiView和View" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>MultiView里面只能放View和Wizard</div>

            <asp:MultiView ID="MultiView1" runat="server"
                ActiveViewIndex="0">
                <asp:View ID="v_default" runat="server">
                    <p>您是否有手机</p>
                    <asp:Button ID="Button2" runat="server" Text="有" OnCommand="di" CommandArgument="有"/>
                    <asp:Button ID="Button3" runat="server" Text="没有" OnCommand="di" CommandArgument="没有"/>
                </asp:View>
                <asp:View ID="v_buy" runat="server">
                    <p>是否需要购买</p>
                    <asp:Button ID="Button4" runat="server" Text="是" OnCommand="di" CommandArgument="是"/>
                    <asp:Button ID="Button5" runat="server" Text="NO" OnCommand="di" CommandArgument="NO"/>
                </asp:View>
                <asp:View ID="v_brand" runat="server">
                    <p>选择手机品牌</p>
                    <asp:RadioButtonList ID="RadioButtonList3" runat="server" AutoPostBack="True" RepeatDirection="Horizontal" CellPadding="0" CellSpacing="0" OnSelectedIndexChanged="RadioButtonList3_SelectedIndexChanged">
                        <asp:ListItem>111</asp:ListItem>
                        <asp:ListItem>222</asp:ListItem>
                        <asp:ListItem>333</asp:ListItem>
                        <asp:ListItem>444</asp:ListItem>
                    </asp:RadioButtonList>
                    <p>Horizontal可以设置radiobutton横竖排</p>
                </asp:View>
                <asp:View ID="v_done" runat="server">
                    <p>谢谢参与</p>
                    <asp:Button ID="Button1" runat="server" Text="返回" OnClick="Button1_Click" />
                </asp:View>
            </asp:MultiView>
        </div>
    </form>
</body>
</html>
