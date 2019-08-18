<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Sample_iframe_child.aspx.cs" Inherits="控件进阶_11_12_多文件上传_1_Sample_iframe_child" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <script type="text/javascript">
        function Button1_onclick() {
            var txt = parent.document.getElementById("txt_p1");
            var txt_org = document.getElementById("Text1");
            txt.value = txt_org.value;
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>child</h2>
            <input id="Text1" type="text" />
            <input id="Button1" type="button" value="button" onclick="return Button1_onclick()"/>
        </div>
    </form>
</body>
</html>
