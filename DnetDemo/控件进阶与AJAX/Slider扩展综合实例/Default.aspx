<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="控件进阶与AJAX_Slider扩展综合实例_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <script src="http://libs.baidu.com/jquery/1.8.3/jquery.min.js"></script>

    <style type="text/css">
        #div_nav {
            width: 200px;
        }

        #div_content {
            width: 500px;
            margin-left: 20px;
            padding: 10px;
        }

        .myHandle {
            width: 10px;
            height: 20px;
            margin-top:3px;
        }

        .myRail {
            width: 500px;
            height: 10px;
            background-image: url("../../image/rail_pm.png");
            background-repeat: no-repeat;
            position: relative;
        }
    </style>
    <link href="../../CSS/CSS_DEFAULT.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div id="div_nav" class="fl">
                <asp:TreeView ID="tv_date" runat="server"
                    OnSelectedNodeChanged="tv_date_SelectedNodeChanged">
                </asp:TreeView>
            </div>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <div id="div_content" class="fl">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <ajaxToolkit:SliderExtender ID="TextBox1_SliderExtender" runat="server"
                    BehaviorID="TextBox1_SliderExtender"
                    Maximum="500" Minimum="0"
                    TargetControlID="TextBox1" HandleCssClass="myHandle" HandleImageUrl="~/image/handle_pm.png" RailCssClass="myRail" />
            </div>
            <div class="clr"></div>
        </div>
    </form>
</body>
</html>
