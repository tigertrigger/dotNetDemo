<%@ Page Language="C#" AutoEventWireup="true" CodeFile="7_6_DataControls.aspx.cs" Inherits="_7_6_DataControls" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="sex" HeaderText="sex" SortExpression="sex" />
                    <asp:BoundField DataField="old" HeaderText="old" SortExpression="old" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:madMaterialsConnectionString %>" SelectCommand="SELECT * FROM [t_Materials]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
