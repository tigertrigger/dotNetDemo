<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FileDemo.aspx.cs" Inherits="FileDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        #Panel_holder input
        {
             display:block;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DropDownList ID="DropDownList1" runat="server" Height="17px" Width="170px">
            </asp:DropDownList>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
            <asp:Button ID="Button3" runat="server" Text="读取行" OnClick="Button3_Click" />
            <br />
            <asp:TextBox ID="TextBox1" runat="server" Height="107px" TextMode="MultiLine" Width="236px"></asp:TextBox>
            <br />
            <asp:Button ID="Button2" runat="server" Text="保存" OnClick="Button2_Click" />
            <br />
            <br />
            <asp:Panel ID="Panel_holder" runat="server">
            </asp:Panel>
        </div>
    </form>
</body>
</html>
