<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="控件进阶与AJAX_Update无刷新联级_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="../../CSS/CSS_DEFAULT.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p class="showtime"><%=DateTime.Now.ToFileTime() %></p>
            <asp:DropDownList ID="ddl_p" runat="server" DataSourceID="XmlDataSource1" DataTextField="Name" DataValueField="Id">
            </asp:DropDownList>
            <asp:DropDownList ID="ddl_c" runat="server">
            </asp:DropDownList>
            <asp:DropDownList ID="ddl_d" runat="server">
            </asp:DropDownList>
            <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/控件进阶与AJAX/Update无刷新联级/province.xml"></asp:XmlDataSource>
        </div>
    </form>
</body>
</html>
