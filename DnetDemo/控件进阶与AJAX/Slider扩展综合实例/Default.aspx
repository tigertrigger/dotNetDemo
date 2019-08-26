<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="控件进阶与AJAX_Slider扩展综合实例_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        #div_nav{
            width:200px;
        }
        #div_content{width:500px;
                     margin-left:20px;
                     padding:10px;
        }
    </style>
    <script src="http://libs.baidu.com/jquery/1.8.3/jquery.min.js"></script>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
            <div id="div_nav" class="fl">
                <asp:TreeView ID="tv_date" runat="server"></asp:TreeView>
            </div>
            <div id="div_content" class="fl"></div>
            <div class="clr"></div>
        </div>
    </form>
</body>
</html>
