<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="控件进阶与AJAX_Slider滑块扩展_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <style type="text/css">
        .myHandle{
            width:20px;height:20px;
        }
        .myRail{
            width:620px;height:20px;
            background-image:url(../../image/r4.png);background-repeat:repeat-x;
            position:relative;
        }
    </style>
    <script type="text/javascript">
        function Button2_onclick() {
            alert(document.getElementById("TextBox1").value);
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p>SliderExtender滑块属性decimals：小数点个数；</p>
            <p>step；总共需要几步</p>
            <p style="color:firebrick">这种类似地铁站到站指示图的滑动块，可以通过CSS控制背景图大小来和step以及max和min属性配合实现，同时background-repeat背景图要设置成no-repeat不循环。
                <br />
                但也可以把原图切成最小等分<img src="../../image/r4.png"/>，通过repeat-x循环来进行滑动次数的自定义，这样可以省的重新制作背景图了，但是要注意计算合适长度。
            </p>
        </div>
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

            <ajaxToolkit:SliderExtender
                ID="TextBox1_SliderExtender"
                runat="server"
                BehaviorID="TextBox1_SliderExtender"
                Maximum="6"
                Minimum="0"
                TargetControlID="TextBox1" 
                BoundControlID="Label1" Decimals="1" 
                HandleImageUrl="~/image/handle_green.png" 
                Steps="7" HandleCssClass="myHandle" 
                RailCssClass="myRail"

                />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
            <input id="Button2" type="button" value="button" onclick="Button2_onclick()" />
        </div>
    </form>
</body>
</html>
