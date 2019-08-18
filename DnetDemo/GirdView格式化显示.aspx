    <%@ Page Language="C#" AutoEventWireup="true" CodeFile="GirdView格式化显示.aspx.cs" Inherits="GirdView格式化显示" %>

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
                    <asp:BoundField DataField="nickname" HeaderText="nickname" SortExpression="nickname" />
                    <asp:BoundField DataField="money" DataFormatString="{0:c}" HeaderText="money" SortExpression="money" />
                    <asp:BoundField DataField="sort" HeaderText="sort" SortExpression="sort" />
                    <asp:CheckBoxField DataField="del_flag" HeaderText="del_flag" SortExpression="del_flag" />
                    <asp:BoundField DataField="time" HeaderText="time" SortExpression="time" />
                    <asp:BoundField DataField="user_id" HeaderText="user_id" SortExpression="user_id" />
                    <asp:ImageField HeaderText="图片" DataImageUrlField="image" DataImageUrlFormatString="image/{0}">
                    </asp:ImageField>
                    <asp:HyperLinkField DataNavigateUrlFields="user_id" DataNavigateUrlFormatString="user_default.aspx?id={0}" DataTextField="nickname" Text="跳转" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:madMaterialsConnectionString %>" SelectCommand="SELECT t1.*,t2.image FROM [t_Remark] t1 inner join [t_image_list] t2 on t1.img=t2.id" ></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
