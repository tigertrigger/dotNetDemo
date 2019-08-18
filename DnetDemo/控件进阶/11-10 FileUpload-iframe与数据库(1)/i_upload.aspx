<%@ Page Language="C#" AutoEventWireup="true" CodeFile="i_upload.aspx.cs" Inherits="控件进阶_11_10_FileUpload_iframe与数据库_1_iframe_upload" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <script src="http://libs.baidu.com/jquery/1.8.3/jquery.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#fup1").val("");
        });

        function checkdata() {
            if ($("#fup1").val() == "") {
                alert("请选择文件");
                $("#fup1").focus();
                return false;
            }

            var _file = document.getElementById("#fup1");
            var _size = _file._file[0].size;
            if (_size > 4000000) {
                alert("文件大于4M！");
                $("fup1").focus();
                return false;
            }

            return true;
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:FileUpload ID="fup1" runat="server" />
            <asp:Button ID="Button1" runat="server" Text="上传" OnClick="Button1_Click" 
              OnClientClick="return checkdata()"  />
        </div>
    </form>
</body>
</html>
