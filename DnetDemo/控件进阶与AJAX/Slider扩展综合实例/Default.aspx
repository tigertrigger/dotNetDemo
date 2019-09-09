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
            margin-top: 3px;
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
                    OnSelectedNodeChanged="tv_date_SelectedNodeChanged" ShowCheckBoxes="All">
                </asp:TreeView>
                <asp:Button ID="btn_showList" runat="server" Text="Button" OnClick="btn_showList_Click" />
                </div>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <div id="div_content" class="fl">
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

                        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1"
                            ItemPlaceholderID="itemHolder">
                            <LayoutTemplate>
                                <div id="itemHolder" runat="server"></div>
                            </LayoutTemplate>
                            <ItemTemplate>
                                <h3><%#Eval("date","{0:D}") %></h3>
                                <asp:TextBox ID="txt_pm25" runat="server"
                                    Text='<%#Eval("val") %>' /><br />
                                <ajaxToolkit:SliderExtender ID="TextBox1_SliderExtender" runat="server"
                                    Maximum="500" Minimum="0"
                                    TargetControlID="txt_pm25" HandleCssClass="myHandle" HandleImageUrl="~/image/handle_pm.png" RailCssClass="myRail" />
                            </ItemTemplate>
                        </asp:ListView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ceshiSQL %>" SelectCommand="SELECT * FROM [pm] WHERE ([id] = @id)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="tv_date" DefaultValue="1" Name="id" PropertyName="SelectedValue" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>

                    </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="btn_showList" />
                    </Triggers>
                </asp:UpdatePanel>


            </div>

            <div class="clr"></div>
        </div>
    </form>
</body>
</html>
