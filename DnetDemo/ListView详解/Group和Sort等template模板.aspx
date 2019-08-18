<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Group和Sort等template模板.aspx.cs" Inherits="ListView详解_Group和Sort" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <style type="text/css">
        .item {
            padding: 9px;
            border: 1px solid silver;
            margin: 5px;
            float: left;
        }

            .item img {
                width: 160px;
                height: 120px;
            }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1"
                ItemPlaceholderID="itemholder"
                GroupPlaceholderID="groupholder"
                GroupItemCount="5">

                <LayoutTemplate>
                    <asp:Button ID="Button1" runat="server" Text="Button"
                        CommandName="Sort" CommandArgument="mo_name" />
                    <asp:Button ID="Button2" runat="server" Text="Button"
                        CommandName="Sort" CommandArgument="mo_siid" />
                    <div runat="server" id="groupholder"></div>
                </LayoutTemplate>
                <EmptyDataTemplate>
                    <p class="item" >大变态，无相关数据。</p>
                </EmptyDataTemplate>

                <GroupTemplate>
                    <div runat="server" id="itemholder">
                    </div>
                </GroupTemplate>
                <GroupSeparatorTemplate>
                    <hr style="clear: both;" />
                </GroupSeparatorTemplate>
                <EmptyItemTemplate>
                    <div class="item">
                        <p>空数据</p>
                    </div>
                </EmptyItemTemplate>
                <ItemTemplate>
                    <div class="item">
                        <img src='<%#Eval("imgsrc") %>' />
                        <br />
                        <p><%#Eval("mo_name") %></p>
                    </div>
                </ItemTemplate>

            </asp:ListView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ceshiConnectionString %>" ProviderName="<%$ ConnectionStrings:ceshiConnectionString.ProviderName %>"
                SelectCommand="SELECT tb_monitor.*, CONCAT(t_imgmanager.img_folder , t_imgmanager.img_name) AS imgsrc FROM tb_monitor INNER JOIN t_imgmanager ON tb_monitor.mo_imgid = t_imgmanager.img_id where 1>2"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
