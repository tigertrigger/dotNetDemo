<%@ Page Language="C#" AutoEventWireup="true" CodeFile="multiUpload.aspx.cs" Inherits="控件进阶_11_12_多文件上传_1_multiUpload" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <script src="http://libs.baidu.com/jquery/1.8.3/jquery.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#fup1").val();

            $("#img_upload").click(function () {
                $("#fup1").click();
            })

            $("#fup1").change(function () {
                $("#btn_addSession").click();
            });

            function datacheck() {
                var _file = document.getElementById("#fup1");
                var _size = _file.files[0].size;
                if (_size > 1000000) {
                    alert("文件大于1M！请重新选择！");
                    return false;
                }
                var _count = $("#txt_FilesCount").val();
                if (_count >= 10) {
                    alert("队列已满，完成上传后再次选择！");
                    return false;
                }
            }
        })
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>多文件上传</h2>
            <img src="../../image/123.jpg" alt="Alternate Text" width="32" id="img_upload" />
            <div id="div_hidden">
                <asp:FileUpload ID="fup1" runat="server" />
                <asp:Button ID="btn_addSession" runat="server" Text="Button"
                    OnClientClick="return datacheck()" OnClick="btn_addSession_Click" />
                <asp:TextBox ID="txt_FilesCount" runat="server"></asp:TextBox>
            </div>
            <iframe id="ifm_1" src="i_mup_sessionList.aspx" width="100%"></iframe>
        </div>
    </form>
</body>
</html>
