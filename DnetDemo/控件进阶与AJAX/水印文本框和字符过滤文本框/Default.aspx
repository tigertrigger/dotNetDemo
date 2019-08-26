<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="控件进阶与AJAX_水印文本框和字符过滤文本框_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .waterMK{
            color:silver;
            background-color:#fafafa;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <ajaxToolkit:FilteredTextBoxExtender 
                ID="TextBox1_FilteredTextBoxExtender" 
                runat="server" 
                BehaviorID="TextBox1_FilteredTextBoxExtender" 
                TargetControlID="TextBox1" 
                FilterType="Custom, Numbers" 
                ValidChars="abc" 
                />

            <ajaxToolkit:TextBoxWatermarkExtender 
                ID="TextBox1_TextBoxWatermarkExtender" 
                runat="server" 
                BehaviorID="TextBox1_TextBoxWatermarkExtender" 
                TargetControlID="TextBox1" 
                WatermarkText="水印" 
                WatermarkCssClass="waterMK"
                />
        </div>
    </form>
</body>
</html>
