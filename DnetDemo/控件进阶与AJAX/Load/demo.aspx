<%@ Page Language="C#" AutoEventWireup="true" CodeFile="demo.aspx.cs" Inherits="控件进阶与AJAX_jQuery_Ajax_demo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="../../CSS/CSS_NEWS.css" rel="stylesheet" />
    <script src="http://libs.baidu.com/jquery/1.8.3/jquery.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#ddl_news").change(function () {
                var _nid = $(this).val();
                var _qs = "nid=" + _nid;
                $("#div_nHolder").load("load.aspx #newsContent",_qs).hide().show(300);
            });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p>load方法第二个参数可以用函数方法，也可以用来做querystring参数且不需要带问号。</p>
            <p>函数方法怎么写，在Default.aspx里说了</p>
        </div>
        <div>
            <asp:DropDownList ID="ddl_news" runat="server" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="Id">

            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Id], [name] FROM [ceshi]"></asp:SqlDataSource>
        </div>
        <div id="div_nHolder" style="border:1px solid gray;">

        </div>
    </form>
</body>
</html>
