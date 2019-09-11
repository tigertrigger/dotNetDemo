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

        .popBack {
            background-color: silver;
            filter: alpha(opacity=50);
            opacity: 0.5;
        }

        .popDrag {
            height: 20px;
            background-color: blue;
            cursor: move;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>
                <img src="../../image/模式弹出框.png" alt="Alternate Text" style="height: 242px; width: 377px" />
            </div>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Button" />

            <ajaxToolkit:ModalPopupExtender ID="Button1_ModalPopupExtender" runat="server"
                BehaviorID="Button1_ModalPopupExtender"
                DynamicServicePath=""
                TargetControlID="Button1"
                PopupControlID="Panel1"
                BackgroundCssClass="popBack"
                OkControlID="btn_pop_ok"
                CancelControlID="btn_pop_cancel"
                OnOkScript="pop_ok()"
                OnCancelScript="pop_cancel()"
                PopupDragHandleControlID="div_drag">
            </ajaxToolkit:ModalPopupExtender>
            <asp:Panel ID="Panel1" runat="server" CssClass="popOuter">
                <div class="popDrag" id="div_drag">拖动手柄</div>
                模式弹出层
                <div>
                    <asp:Button ID="btn_pop_ok" runat="server" Text="确定" />
                    <asp:Button ID="btn_pop_cancel" runat="server" Text="取消" />
                </div>
            </asp:Panel>
            <script type="text/javascript">
                function pop_ok() {
                    document.getElementById("TextBox1").value = "点击OK";
                }
                function pop_cancel() {
                    document.getElementById("TextBox1").value = "点击Cancel";
                }
                function setBodyHeightToContentHeight() {
                    document.body.style.height = Math.max(document.documentElement.scrollHeight,
                        document.body.scrollHeight) + "px";
                }
                setBodyHeightToContentHeight();
                $addHandler(window, "resize", setBodyHeightToContentHeight);

            </script>
        </div>
    </form>
</body>
</html>
