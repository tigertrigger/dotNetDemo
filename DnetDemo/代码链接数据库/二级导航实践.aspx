<%@ Page Language="C#" AutoEventWireup="true" CodeFile="二级导航实践.aspx.cs" Inherits="代码链接数据库_二级导航实践" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script src="http://libs.baidu.com/jquery/1.8.3/jquery.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            /* hide是从右下角往左上角慢慢消失，fadeout是整体淡化消失 */
            $("a.m0").mouseenter(function () {
                $(".submenu").hide();
                $("+.submenu", this).fadeIn(200);
            })
             $("#div_menu").mouseleave(function () {
                $(".submenu").fadeOut(200);
            })           
        })
    </script>

    <style type="text/css">
        body {margin:0px;padding:0px;}
        #div_menu{border:1px solid silver;background-image:url(../image/菜单栏.png);
                  background-repeat:repeat-x;
        }
        a{display:block;text-decoration:none;color:gray;}
        a:hover{color:#930;}
        a.m0{margin:10px 0px 10px 0px;
             padding:10px 10px 0px 10px;
             font-size:20px;
        }
        a.m1{margin:5px;padding:10px;}
        a.m1+a.m1{border-top:1px solid silver;}
        .menuset+.menuset a.m0{border-left:1px solid silver;}
        .menuset{float:left;}
        .submenu{position:absolute;
                 display:none;
        }/*使其游离页面用处：1.不会因为子菜单撑大主菜单。2
            #div_menu的背景图也只保留在.menuset主菜单处；*/
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="width:200px;height:200px;">
            <div id="div_menu" runat="server"></div>
        </div>
    </form>
</body>
</html>
