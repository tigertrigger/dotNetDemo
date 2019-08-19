<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="控件进阶与AJAX_UpdatePanel控件_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:Panel ID="Panel1" runat="server">
                <p><%=DateTime.Now.ToFileTime() %></p>
                <asp:Button ID="Button1" runat="server" Text="Button" />
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </asp:Panel>
            <hr />
            <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
                    <p><%=DateTime.Now.ToFileTime() %></p>
                    <asp:Button ID="Button2" runat="server" Text="Button" />
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="Button1" />
                </Triggers>
            </asp:UpdatePanel>
            
            <hr />
            <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
                    <p><%=DateTime.Now.ToFileTime() %></p>
                    <asp:Button ID="Button3" runat="server" Text="Button" OnClick="Button3_Click" />
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </form>
</body>
</html>
