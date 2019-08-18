<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="控件进阶_CKeditor富文本编辑控件_Default" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <CKEditor:CKEditorControl ID="CKEditorControl1" runat="server"
                Toolbar="Basic"></CKEditor:CKEditorControl>
            <asp:Button ID="Button1" runat="server" Text="读取文本" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" Text="读取富文本" OnClick="Button2_Click" />

            <div id="div_text" runat="server"></div>
            <div id="div_html" runat="server"></div>
        </div>
    </form>
</body>
</html>
