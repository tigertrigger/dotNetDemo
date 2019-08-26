<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="控件进阶与AJAX_日历扩展CalendarExtender_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script src="http://libs.baidu.com/jquery/1.8.3/jquery.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#TextBox1").attr("readonly", "readonly");
        })
    </script>
    <style type="text/css">
        .myCalendar{
            border:3px solid red;
            padding:10px;
            color:green;
            background-color:silver;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div> 
                <p>CalendarExtender工具给ReadOnly="True"的textbook赋予的值无法通过服务器传送。
                    使用js给textbox添加readonly属性，要遵循html的规则，并不是true或false。
                </p>
            </div>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:Button ID="Button1" runat="server" Text="Button" />

            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <ajaxToolkit:CalendarExtender 
                ID="TextBox1_CalendarExtender" 
                runat="server" 
                BehaviorID="TextBox1_CalendarExtender" 
                TargetControlID="TextBox1" 
                PopupButtonID="Button1" CssClass="myCalendar"/>
            <asp:Button ID="Button2" runat="server" Text="Button" OnClick="Button2_Click" />
        </div>
    </form>
</body>
</html>
