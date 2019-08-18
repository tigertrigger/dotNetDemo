<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Jquery图片选择.aspx.cs" Inherits="ListView详解_Jquery图片选择" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <script src="http://libs.baidu.com/jquery/1.8.3/jquery.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#ListBox2").change(function () {
                $("#img2").attr("src", $(this).val());
                $("#TextBox1").val($(this).val());
            });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ListBox ID="ListBox1" runat="server" DataSourceID="SqlDataSource1" DataTextField="img_name" DataValueField="src" AutoPostBack="True" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged"></asp:ListBox>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ceshiConnectionString %>" ProviderName="<%$ ConnectionStrings:ceshiConnectionString.ProviderName %>" SelectCommand="SELECT img_name, concat(img_folder,img_name) as src FROM t_imgmanager"></asp:SqlDataSource>
            <asp:Image ID="Image1" runat="server" Width="240"/>
            <br />
            <hr />用jQuery监听listbox，来改变html元素img属性的src时，记得取消listbox的autoposeback属性<br />
            <asp:ListBox ID="ListBox2" runat="server" DataSourceID="SqlDataSource1" DataTextField="img_name" DataValueField="src" ></asp:ListBox>
            <img id="img2" width="240" alt="" />
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </div>
    </form>
</body>
</html>
