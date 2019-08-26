<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="控件进阶与AJAX_jQuery_Ajax_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <script src="http://libs.baidu.com/jquery/1.8.3/jquery.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#Button1").click(function () {
                $("#div_content").load("../UpdatePanel控件/Default.aspx #UpdatePanel3", xianshi());
            });
            function xianshi() {
                //各种方法功能包括后面的hide().fadeIn()可以写到这里来;
            }
            $("#div_content").ajaxStart(function () {
                $(this).html("正在加载");
            });
            $("#div_content").ajaxComplete(function () {
                $(this).hide().fadeIn(600);
            });
        });
        //文本乱码改格式用
        //$.ajaxSetup({
        //    'beforeSend': function (xhr) {
        //        xhr.overrideMimeType('text/plain; charset=gb2312');
        //    }
        //});
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p>
                学习内容$(控件).load("路径 #指定元素",#函数或方法())
            带#前缀的是非必须内容，但是加载aspx动态页面的话，尽量选择#指定元素，否则加载整个页面极容易出错。会复制整个页面代码过来。
            </p>
            <p style="color: green">
                在#函数用来在执行完毕后加载指定函数。
                在内/外部自定义函数都可以,写在外部方便重复调用。如果直接或者函数内有alert方法，则需要对弹框消息点击确定才会继续显示加载内容。
            </p>
            <p style="color: red;">
                load功能可以把指定内容加载到指定控件。他有5个步骤，可以监听每个步骤进行回调。但是直接加载图片文件会报错，他只能用于加载文本，可以使用元素和图片链接。
            </p>
        </div>
        <div>
            <input id="Button1" type="button" value="button" />
            <div id="div_content" style="padding: 10px; border: 1px solid gray;">
            </div>
            <div id="div_content2" style="padding: 10px; border: 1px solid gray;">
            </div>
        </div>
    </form>
</body>
</html>
