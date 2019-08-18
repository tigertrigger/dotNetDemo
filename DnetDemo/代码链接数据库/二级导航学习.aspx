<%@ Page Language="C#" AutoEventWireup="true" CodeFile="二级导航学习.aspx.cs" Inherits="代码链接数据库_二级导航学习" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <script src="http://libs.baidu.com/jquery/1.8.3/jquery.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#labl").mouseenter(function () {
                $("#div_result").fadeIn(200);
            })
            $("#labl").mouseleave(function () {
                $("#div_result").fadeOut(200);
            })
        })
    </script>
    <style type="text/css">
        #main div {
            padding: 10px;
            border: 1px solid gray;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h4>position里都以元素左上角定位</h4>
            <p>
                absolute    绝对定位，游离出页平面，由top，left相对于 static 定位以外的第一个父元素进行定位，其他元素会代替其原来的位置。如果无top，left；则停留在原来位置。<br />
                relative    相对定位，元素仍然占有原来位置，但是现实在top，left决定的偏移处。如果无top，left；则停留在原来位置。<br />
                fixed       对定位的元素，相对于浏览器窗口进行定位。<br />
                <br />
                visibility:hidden; 隐藏占位<br />
                display:none; 隐藏不占位
            </p>
        </div>
        <div id="main">

            <div>1</div>
            <div>2</div>
            <div style="position: relative; top: 200px; left: 30px;">3</div>
            <div>4</div>
            <div style="position: absolute; top: 200px; left: 30px;">5</div>
            <div>6</div>
            <div style="visibility: hidden;">7</div>
            <div>8</div>
            <div>9</div>
            <div style="display: none;">10</div>
            <div>11</div>

        </div>
        <h2 style="color: red; margin-left: 200px;">===============分割线==============
        </h2>
        <div>
            <label id="labl">鼠标移入</label>
            <div id="div_result" style="display: none;">123</div>
        </div>
    </form>
</body>
</html>
