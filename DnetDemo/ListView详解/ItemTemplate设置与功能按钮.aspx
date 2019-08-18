<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ItemTemplate设置与功能按钮.aspx.cs" Inherits="ListView详解_ItemTemplate设置与功能按钮" MaintainScrollPositionOnPostback="true" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <script src="http://libs.baidu.com/jquery/1.8.3/jquery.min.js"></script>
    <style type="text/css">
        .divItem {
            padding: 5px;
        }

        .divBtns {
            width: 130px;
        }

        .divInfo {
            width: 350px;
            padding: 0px 10px 0px 10px;
            border-left: 1px solid #dadada;
            border-right: 1px solid #dadada;
        }

        .divInfo2 {
            width: 200px;
        }

        .divBtns, .divInfo, .divInfo2 {
            float: left;
        }

        .clr {
            clear: both;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p style="font-size: 12px;">因为mysql里没有bool类型(tinyint类型代替1字节)，所以前端控件更新数据参数返回为bool类型的，要在参数类型里手动设置成Int32</p>
            <p style="color: red">有些数据源控件会默认为object,直接返回true。mysql数据无法识别就会报错！！！！</p>
            <p style="color: red; font-size: 12px;">
                button控件的OnClientClick="return confirm('是否确定插入？')"会和这个js冲突，导致验证控件会转到服务器去执行，就会刷新下页面。
如果想不出现刷新，就把此button代码取消。
            </p>
        </div>
        <div>
            <asp:ListView ID="ListView1" runat="server" ItemPlaceholderID="itemholder" DataSourceID="SqlDataSource1"
                DataKeyNames="se_id" InsertItemPosition="LastItem">
                <%--DataKeyNames="se_id"告诉listview主键--%>
                <LayoutTemplate>
                    <div runat="server" id="itemholder"></div>
                </LayoutTemplate>
                <ItemTemplate>
                    <div class="divItem">
                        <div class="divBtns">
                            <asp:Button ID="btn_edit" runat="server" Text="编辑" CommandName="edit" />
                            <asp:Button ID="btn_delete" runat="server" Text="删除" CommandName="delete" OnClientClick="return confirm('是否确定删除？')" />
                            <asp:Button ID="btn_delmak" runat="server" Text="标记删除" CommandName="lvcmd" CommandArgument='<%#Eval("se_id") %>' OnCommand="mycmd" OnClientClick="return confirm('是否确定删除？')" />
                        </div>
                        <div class="divInfo">
                            <h2><%#Eval("se_name") %></h2>
                            <p><%#Eval("se_memo") %></p>
                        </div>
                        <div class="divInfo2">
                            <asp:CheckBox ID="chk_enable" runat="server" Checked='<%#Eval("se_enable") %>'
                                Enabled="false" Text="有效性" /><br />
                            <p>排序：<%#Eval("se_order") %></p>
                        </div>
                        <div class="clr"></div>
                    </div>
                </ItemTemplate>
                <InsertItemTemplate>
                    <div class="divItem" style="border: 1px solid red;">
                        <div class="divBtns">
                            <asp:Button ID="btn_insert" runat="server" Text="插入" CommandName="insert" ValidationGroup="v_insert" OnClick="Button1_Click" />
                            <%--<input type="reset" /> html的清空--%>
                            <asp:Button ID="btn_cancel" runat="server" Text="取消" CommandName="cancel" />
                        </div>
                        <div class="divInfo">
                            系列名称:<asp:TextBox ID="txt_i_name" runat="server" Text='<%#Bind("se_name") %>' />
                            <%--改成封闭标签，属性</asp:TextBox>--%>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                ErrorMessage="必填字段" ControlToValidate="txt_i_name" EnableClientScript="False" Display="Dynamic" SetFocusOnError="True" ValidationGroup="v_insert"></asp:RequiredFieldValidator>
                            <br />
                            系列简介:<br />
                            <asp:TextBox ID="txt_i_memo" runat="server" Text='<%#Bind("se_memo") %>' TextMode="MultiLine" Rows="4" Columns="40" />
                        </div>
                        <div class="divInfo2">
                            <asp:CheckBox ID="chk_i_enable" runat="server" Checked='<%#Bind("se_enable") %>'
                                Text="有效性" /><br />
                            排序:<asp:TextBox ID="txt_i_order" runat="server" Text='   <%#Bind("se_order") %>' /><%--改成封闭标签，属性</asp:TextBox>--%>
                            <br />
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                                ErrorMessage="输入数值！" ControlToValidate="txt_i_order" Display="Dynamic" EnableClientScript="False" ValidationExpression="^[1-9]\d*$" SetFocusOnError="True" ValidationGroup="v_insert"></asp:RegularExpressionValidator>
                        </div>
                        <div class="clr"></div>
                    </div>
                </InsertItemTemplate>
                <EditItemTemplate>
                    <div class="divItem" style="border: 1px solid blue;">
                        <div class="divBtns">
                            <asp:Button ID="btn_insert" runat="server" Text="保存" CommandName="update" OnClientClick="return confirm('是否保存更改？')" ValidationGroup="v_edit" />
                            <%--<input type="reset" /> html的清空--%>
                            <asp:Button ID="btn_cancel" runat="server" Text="取消" CommandName="cancel" />
                        </div>
                        <div class="divInfo">
                            系列名称:<asp:TextBox ID="txt_e_name" runat="server" Text='<%#Bind("se_name") %>' />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                ErrorMessage="必填字段" ControlToValidate="txt_e_name" EnableClientScript="False" Display="Dynamic" SetFocusOnError="True" ValidationGroup="v_edit"></asp:RequiredFieldValidator>

                            <br />
                            <%--改成封闭标签，属性</asp:TextBox>--%>
                            系列简介:<br />
                            <asp:TextBox ID="txt_e_memo" runat="server" Text='<%#Bind("se_memo") %>' TextMode="MultiLine" Rows="4" Columns="40" />
                        </div>
                        <div class="divInfo2">
                            <asp:CheckBox ID="chk_e_enable" runat="server" Checked='<%#Bind("se_enable") %>'
                                Text="有效性" /><br />
                            排序:<asp:TextBox ID="txt_e_order" runat="server" Text='<%#Bind("se_order") %>' /><%--改成封闭标签，属性</asp:TextBox>--%>
                            <br />
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                                ErrorMessage="输入数值！" ControlToValidate="txt_e_order" Display="Dynamic" EnableClientScript="False" ValidationExpression="^[1-9]\d*$" SetFocusOnError="True" ValidationGroup="v_edit"></asp:RegularExpressionValidator>
                        </div>
                        <div class="clr"></div>
                    </div>
                </EditItemTemplate>

            </asp:ListView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ceshiConnectionString %>"
                DeleteCommand="DELETE FROM t_series WHERE se_id = ?"
                InsertCommand="INSERT INTO t_series (se_id,se_name, se_memo, se_order, se_enable) VALUES (?,?, ?, ifnull(?,0),?)"
                ProviderName="<%$ ConnectionStrings:ceshiConnectionString.ProviderName %>"
                SelectCommand="SELECT * FROM t_series where se_delete=false order by se_order"
                UpdateCommand="UPDATE t_series SET se_name = ?, se_memo = ?, se_order = ifnull(?,0), se_enable = ? WHERE se_id = ?">
                <DeleteParameters>
                    <asp:Parameter Name="se_id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="se_id" Type="Int32" />
                    <asp:Parameter Name="se_name" Type="String" />
                    <asp:Parameter Name="se_memo" Type="String" />
                    <asp:Parameter Name="se_order" Type="Int32" />
                    <asp:Parameter Name="se_enable" Type="Int32" />
                    <%--因为mysql数据库没有bool，这里要改成int32--%>
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="se_name" Type="String" />
                    <asp:Parameter Name="se_memo" Type="String" />
                    <asp:Parameter Name="se_order" Type="Int32" />
                    <asp:Parameter Name="se_enable" Type="Int32" />
                    <asp:Parameter Name="se_id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
