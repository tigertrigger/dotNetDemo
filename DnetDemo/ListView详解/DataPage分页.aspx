<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DataPage分页.aspx.cs" Inherits="ListView详解_DataPage分页" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <style type="text/css">
        附带的CSS
        .pager {
            display: block;
            padding: 5px 0;
            margin: 10px 0 10px 0;
        }

        .pager a, .pager span {
            border: 1px solid #E6E7E1;
            line-height: 20px;
            margin-right: 5px;
            padding: 0 6px;
            color: #f00;
            text-decoration: none;
        }

            .pager a:hover {
                border-color: #0046D5;
            }

        .pager .current {
            background-color: #0046D5;
            border-color: #0046D5;
            color: #fff;
            font-weight: bold;
        }

        .pager .total, .pager .total strong {
            color: Gray;
            padding: 0 3px;
        }

        div.divPager{
            padding:10px;background-color:#363636;
        }
        .pager span 
        {
            border:1px solid gray;color:#999;
        }
        .divPager a,.divPager span span
        {
            display:block;float:left;
            padding:5px 8px 5px 8px;margin-left:4px;
            color:#ddd;
            background-color:#630;
            border:1px solid #d88;
            text-decoration:none;
        }
        .divPager a:hover
        {
            color:white;background-color:#a30;
        }
        .pager span.pageNow{
            color:white;background-color:#a30;
            font-weight:bold;border:1px solid #ddd;
        }
        .divPager span span
        {
            border:1px solid gray;color:#999;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="color: red;">
            <p>DataPage控件，其中pagesize属性=1的时候，常用于电子相册，一页一页翻。</p>
            <p>PagedControlID属性对应控制的控件ID。QueryStringField属性会给页数命名进行query传递。</p>
        </div>
        <div>
            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1"
                ItemPlaceholderID="itemholder">
                <LayoutTemplate>
                    <div runat="server" id="itemholder"></div>
                </LayoutTemplate>
                <ItemTemplate>
                    <div style="padding: 5px; border: 1px solid silver;">
                        <%#Eval("mo_name") %>
                    </div>
                </ItemTemplate>
            </asp:ListView>
            <div>
                <p>DataPager的Fields里，TemplatePagerField可以自定义文字等等，可以获取到总记录和页数信息。</p>
                <p>NextPreviousPagerField 则是可以开启上/下一页，和第一/最后页的直接跳转按钮</p>
                <p>NumericPagerField 可以显示页码，还可以按ButtonCount设置的页数跳页</p>
            </div>
            <asp:DataPager ID="DataPager1" class='pager' PagedControlID='ListView1'
                runat="server" PageSize="2">
                <Fields>
                    <asp:TemplatePagerField>
                        <PagerTemplate>
                            <span class="total">共<strong><%=Math.Ceiling ((double)DataPager1.TotalRowCount / DataPager1.PageSize)%></strong>页<strong><%=DataPager1.TotalRowCount%></strong>条记录</span>
                        </PagerTemplate>
                    </asp:TemplatePagerField>
                    <asp:NextPreviousPagerField ButtonType="Link" ShowFirstPageButton="True"
                        ShowNextPageButton="False" ShowPreviousPageButton="true"
                        FirstPageText="首页" RenderDisabledButtonsAsLabels="true" />
                    <asp:NumericPagerField ButtonType="link" ButtonCount="2" CurrentPageLabelCssClass="current"
                        NextPageText=">>" PreviousPageText="<<" />
                    <asp:NextPreviousPagerField ButtonType="Link" ShowLastPageButton="True"
                        ShowNextPageButton="true" ShowPreviousPageButton="False"
                        LastPageText="尾页" RenderDisabledButtonsAsLabels="true" />
                </Fields>
            </asp:DataPager>
            <div class="divPager">
                            <asp:DataPager ID="DataPager2" class='pager' PagedControlID='ListView1'
                runat="server" PageSize="2">
                <Fields>
                    <asp:TemplatePagerField>
                        <PagerTemplate>
                            <span class="total">共<strong><%=Math.Ceiling ((double)DataPager1.TotalRowCount / DataPager1.PageSize)%></strong>页<strong><%=DataPager1.TotalRowCount%></strong>条记录</span>
                        </PagerTemplate>
                    </asp:TemplatePagerField>
                    <asp:NextPreviousPagerField ButtonType="Link" ShowFirstPageButton="True"
                        ShowNextPageButton="False" ShowPreviousPageButton="true"
                        FirstPageText="首页" RenderDisabledButtonsAsLabels="true" />
                    <asp:NumericPagerField ButtonType="link" ButtonCount="2" CurrentPageLabelCssClass="pageNow"
                        NextPageText=">>" PreviousPageText="<<" />
                    <asp:NextPreviousPagerField ButtonType="Link" ShowLastPageButton="True"
                        ShowNextPageButton="true" ShowPreviousPageButton="False"
                        LastPageText="尾页" RenderDisabledButtonsAsLabels="true" />
                </Fields>
            </asp:DataPager>
                <div style="clear:both"></div>
            </div>
            <div>
                <p>分页模板加RenderDisabledButtonsAsLabels="true" 会把无效分页按钮变成< span >方便CSS控制</p>
            </div>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ceshiConnectionString %>" ProviderName="<%$ ConnectionStrings:ceshiConnectionString.ProviderName %>"
                SelectCommand="SELECT * FROM tb_monitor"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
