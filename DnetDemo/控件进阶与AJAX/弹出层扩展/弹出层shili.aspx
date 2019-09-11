<%@ Page Language="C#" AutoEventWireup="true" CodeFile="弹出层shili.aspx.cs" Inherits="控件进阶与AJAX_弹出层扩展_shili" Theme="mySkin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            选择公司名称：<asp:TextBox ID="txt_company" runat="server"></asp:TextBox>
            <ajaxToolkit:PopupControlExtender ID="txt_company_PopupControlExtender" runat="server"
                BehaviorID="txt_company_PopupControlExtender"
                DynamicServicePath="" ExtenderControlID=""
                TargetControlID="txt_company"
                PopupControlID="Panel1"
                Position="Bottom">
            </ajaxToolkit:PopupControlExtender>
            <asp:Panel ID="Panel1" runat="server">
                <asp:UpdatePanel ID="UpdatePanel1" runat="server"
                    UpdateMode="Conditional">
                    <ContentTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" AutoPostBack="true"></asp:TextBox>
                        <asp:BulletedList ID="BulletedList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="name" DisplayMode="LinkButton" OnClick="BulletedList1_Click">
                        </asp:BulletedList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ceshiSQL %>" SelectCommand="SELECT [name] FROM [t_company] WHERE ([name] LIKE '%' + @name + '%')">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="TextBox1" Name="name" PropertyName="Text" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
