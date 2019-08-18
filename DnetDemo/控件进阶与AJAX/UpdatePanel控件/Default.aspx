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
            <asp:UpdatePanel ID="UpdatePanel1" runat="server"></asp:UpdatePanel>
        </div>
    </form>
</body>
</html>
