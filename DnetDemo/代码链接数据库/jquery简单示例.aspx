<%@ Page Language="C#" AutoEventWireup="true" CodeFile="jquery简单示例.aspx.cs" Inherits="代码链接数据库_jquery简单示例" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <script src="http://libs.baidu.com/jquery/1.8.3/jquery.min.js"></script>
    <script type="text/javascript">
        //赋值和弹框
        //$(document).ready(function () {
        //    $("#Button1").click(function () {
        //        $("#Text1").val("12345");
        //    })
        //    $("#Button2").click(function () {
        //        $("#Text1").val("123456");
        //    })
        //})
        //function ccc() {
        //    //var t = document.getElementById("Text1");
        //    //alert(t.value);
        //    alert($("#Text1").val());
        //}

        //显示和隐藏
        //$(document).ready(function () {
        //    $("#Button1").click(function () {
        //        $("#Text1").hide();
        //    })
        //    $("#Button2").click(function () {
        //        $("#Text1").show();
        //    })
        //})

        //类别为a1的控件隐藏显示
        //$(document).ready(function () {
        //    $("#Button1").click(function () {
        //        $("input.a1").hide();
        //    })
        //    $("#Button2").click(function () {
        //        $("input.a1").show();
        //    })
        //})

        //jquery控制CSS
        $(document).ready(function () {
            $("#Button1").click(function () {
                $(".a1").css("border", "2px solid red");
            })
            $("#Button2").click(function () {
                $(".a1").css("border", "3px solid green");
            })
            $("#Button3").click(function () {
                $(".a1").css("border", "3px solid green");
            })
        })
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div id="div_reader" runat="server" style="border: 1px solid black;"></div>
            <asp:GridView ID="GridView1" runat="server" OnRowDataBound="GridView1_RowDataBound">
            </asp:GridView>
        </div>
        <div>
            <input id="Button1" type="button" value="隐藏" />
            <asp:Button ID="Button2" runat="server" Text="显示" />
            <input id="Text1" type="text" runat="server" />
            <input id="Button3" type="button" value="button" onclick="ccc()" />
            <br />
            <br />

            <input id="Text2" type="text" />
            <input id="Text3" type="text" class="a1" />
            <input id="Text4" type="text" class="a1" />
        </div>
    </form>
</body>
</html>
