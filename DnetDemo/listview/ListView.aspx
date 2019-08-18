<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ListView.aspx.cs" Inherits="ListView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1"
                ItemPlaceholderID="holder">
                <LayoutTemplate>
                    <p>1234</p>
                    <p runat="server" id="holder"></p>
                    <p>ABCD</p>
                </LayoutTemplate>
                <ItemTemplate>
                    <p>
                        <%#Eval("nickname") %>
                        <%#Eval("time","{0:D}") %>
                        <asp:CheckBox ID="CheckBox1" runat="server"  Enabled="false" Checked='<%#Eval("del_flag") %>' />
                    </p>
                </ItemTemplate>
            </asp:ListView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:madMaterialsConnectionString %>" SelectCommand="SELECT * FROM [t_Remark]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
