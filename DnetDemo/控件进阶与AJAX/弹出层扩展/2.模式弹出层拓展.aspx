<%@ Page Language="C#" AutoEventWireup="true" CodeFile="2.模式弹出层拓展.aspx.cs" Inherits="控件进阶与AJAX_弹出层扩展_模式弹出层拓展" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <style type="text/css">
        .popOuter {
            border: 1px solid red;
            padding: 10px;
            background-color: #ffe;
        }

        .popBack{
            background-color:silver;
            filter:alpha(opacity=50);opacity:0.5;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Button" />

            <ajaxToolkit:ModalPopupExtender ID="Button1_ModalPopupExtender" runat="server"
                BehaviorID="Button1_ModalPopupExtender"
                DynamicServicePath=""
                TargetControlID="Button1"
                PopupControlID="Panel1"
                BackgroundCssClass="popBack">
            </ajaxToolkit:ModalPopupExtender>

            <asp:Panel ID="Panel1" runat="server" CssClass="popOuter"></asp:Panel>
        </div>
    </form>
</body>
</html>
