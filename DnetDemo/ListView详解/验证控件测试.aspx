<%@ Page Language="C#" AutoEventWireup="true" CodeFile="验证控件测试.aspx.cs" Inherits="ListView详解_验证控件测试" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .txtred{color:red; font-size:12px;}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ErrorMessage="必填字段！" CssClass="txtred" ControlToValidate="TextBox1" EnableClientScript="False" Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ErrorMessage="输入数值！" CssClass="txtred" ControlToValidate="TextBox1" Display="Dynamic" EnableClientScript="False" ValidationExpression="^[1-9]\d*$"></asp:RegularExpressionValidator>
            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
            </div>
    </form>
</body>
</html>
