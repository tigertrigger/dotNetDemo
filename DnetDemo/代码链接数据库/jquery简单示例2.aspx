<%@ Page Language="C#" AutoEventWireup="true" CodeFile="jquery简单示例2.aspx.cs" Inherits="代码链接数据库_jquery简单示例2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <script src="http://libs.baidu.com/jquery/1.8.3/jquery.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            //$("#GridView1 td.f")另外一种写法
            $("td.f", "#GridView1").text(function () {
                var _f = $(this).text();
                if (_f < 60) { $(this).css("color", "red"); }
                else { $(this).css("color", "green"); }
            });
        })
        $(document).ready(function () {
            $(".studentName +div").hide();

            $(".studentName").click(function () {
                var node = $("+div", this);
                $(".studentName +div").hide(200);
                if (node.is(':hidden')) {
                    node.show(200);
                }
                else {
                    node.hide(200);
                }
            })
         })
    </script>
    <style type="text/css">
        .studentName{padding:5px; background-color:#99CC33;cursor:pointer;}
        .studentName+div{border-bottom:1px solid gray; padding:10px;margin:3px;}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" OnRowDataBound="GridView1_RowDataBound"></asp:GridView>
          
            <asp:GridView ID="GridView2" runat="server" OnRowDataBound="GridView2_RowDataBound"></asp:GridView>
        </div>
        <div runat="server" id="div_itemholder">

        </div>
    </form>
</body>
</html>
