<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Sample_iframe_parent.aspx.cs" Inherits="控件进阶_11_12_多文件上传_1_Sample_iframe_parent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>parent</h2>
            <asp:TextBox ID="txt_p1" runat="server"></asp:TextBox>
            <iframe src="Sample_iframe_child.aspx" width="100%"></iframe>

            <asp:Panel ID="pnl_btns" runat="server">

            </asp:Panel>
        </div>
    </form>
</body>
</html>
