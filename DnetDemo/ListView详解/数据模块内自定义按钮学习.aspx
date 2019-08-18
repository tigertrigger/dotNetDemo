<%@ Page Language="C#" AutoEventWireup="true" CodeFile="数据模块内自定义按钮学习.aspx.cs" Inherits="ListView详解_数据模块内自定义按钮学习" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button1" runat="server" Text="Button"
                OnCommand="mycmd" CommandArgument="1" CommandName="group1" />
            <asp:Button ID="Button2" runat="server" Text="Button"
                OnCommand="mycmd" CommandArgument="2" CommandName="group1" />
            <asp:Button ID="Button3" runat="server" Text="Button"
                OnCommand="mycmd" CommandArgument="3" CommandName="group1" />
            <asp:Button ID="Button4" runat="server" Text="Button"
                OnCommand="mycmd" CommandArgument="4" CommandName="group2" />
        </div>
    </form>
</body>
</html>
