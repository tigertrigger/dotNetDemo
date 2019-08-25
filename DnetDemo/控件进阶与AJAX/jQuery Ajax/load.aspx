<%@ Page Language="C#" AutoEventWireup="true" CodeFile="load.aspx.cs" Inherits="控件进阶与AJAX_jQuery_Ajax_load" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="../../CSS/CSS_NEWS.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div  id="newsContent">
            <asp:ListView ID="ListView1" runat="server"
                ItemPlaceholderID="n_holder" DataSourceID="SqlDataSource1">
                <LayoutTemplate>
                    <div id="n_holder" runat="server"></div>
                </LayoutTemplate>
                <ItemTemplate>
                    <h1 id="NewsTTL"><%#Eval("name") %></h1>
                    <p class="tc">
                        <span id="NewsDate">日期：<%#Eval("date","{0:d}") %></span>
                        <span id="NewsFrom">来源：<%#Eval("from") %></span>
                    </p>
                    <div id="div_newsHolder" class="cke_show_borders">
                        <%#Eval("content") %>
                    </div>
                </ItemTemplate>
            </asp:ListView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [ceshi] WHERE ([Id] = @Id)">
                <SelectParameters>
                    <asp:QueryStringParameter DefaultValue="1" Name="Id" QueryStringField="nid" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
