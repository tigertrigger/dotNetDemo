<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="控件进阶与AJAX_Update无刷新联级_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="../../CSS/CSS_DEFAULT.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p style="color: green;">
                选择省的时候，页面回发生成对应的市，但是地区需要在市区绑定后再生成，不然会出现如下：
                <br />
                湖南省 衡阳市 蒸湘区 =》湖北省 武汉市 蒸湘区。地区部分还是上一次衡阳市的回发生成的，因为页面生命周期只有一个databind
                <br />
                地区和市区都是在湖北省和衡阳市这个回发值生成的。
            </p>
            <p style="color: red;">解决方法：方法①选择省的时候把地区清空。方法②给市区加OnDataBound事件，意指databind事件后要干什么，这时在事件里对地区重新做数据绑定</p>
        </div>
        <div>
            <p class="showtime"><%=DateTime.Now.ToFileTime() %></p>
            <asp:DropDownList ID="ddl_p" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddl_p_SelectedIndexChanged">
            </asp:DropDownList>


            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional" RenderMode="Inline">
                <ContentTemplate>
                    <asp:DropDownList ID="ddl_c" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddl_c_SelectedIndexChanged"
                        OnDataBound="reload_d">
                    </asp:DropDownList>
                    <asp:DropDownList ID="ddl_d" runat="server">
                    </asp:DropDownList>
                    <p class="showtime"><%=DateTime.Now.ToFileTime() %></p>
                </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="ddl_p" />
                </Triggers>
            </asp:UpdatePanel>
        </div>
    </form>
</body>
</html>
