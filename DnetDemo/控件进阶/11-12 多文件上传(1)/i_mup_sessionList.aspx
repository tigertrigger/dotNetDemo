<%@ Page Language="C#" AutoEventWireup="true" CodeFile="i_mup_sessionList.aspx.cs" Inherits="控件进阶_11_12_多文件上传_1_i_mup_sessionList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script src="http://libs.baidu.com/jquery/1.8.3/jquery.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            //这样防止没内容的时候，主页面框高度小于子页面默认body等标签高度，出现拖动条。
            var _h = div_main.offsetHeight + 30;
            var _ifm = parent.document.getElementById("ifm_1");
            $(_ifm).attr("height", _h);
        })
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div id="div_main" runat="server">
            <asp:Table ID="Table1" runat="server">

            </asp:Table>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/控件进阶/11-12 多文件上传(1)/i_mup_uploading.aspx" >上传全部文件</asp:HyperLink>
        </div>
    </form>
</body>
</html>
