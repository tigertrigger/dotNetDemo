<%@ Page Language="C#" AutoEventWireup="true" CodeFile="file_upload_simple.aspx.cs" Inherits="控件进阶_11_9_FileUpload文件上传_file_upload_simple" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script src="http://libs.baidu.com/jquery/1.8.3/jquery.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#FileUpload1").val("");
        })
        document.onkeydown = function () {

            if (window.event && window.event.keyCode == 123) {
                event.keyCode = 0;
                event.returnValue = false;
            }
            if (window.event && window.event.keyCode == 13) {
                window.event.keyCode = 505;
            }
            if (window.event && window.event.keyCode == 8) {
                window.event.returnValue = false;
            }

        }
        function checkSize(obj_file) {
            //获取文件大小8388608
            var _size = obj_file.files[0].size;
            if (_size > 800000) {
                alert("超过8M");
                $(obj_file).focus();
                $("#Button1").attr("disabled", true);
            }
            else {
                $("#Button1").attr("disabled", false);

            }
        }
    </script>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:FileUpload ID="FileUpload1" runat="server" onchange="checkSize(this)" />
            <asp:Button ID="Button1" runat="server" Text="上传" OnClick="Button1_Click" />
            <asp:TextBox ID="txt_size" runat="server"></asp:TextBox>
        </div>
    </form>
</body>
</html>
