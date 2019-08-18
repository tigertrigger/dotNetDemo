<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Sample2_monitor.aspx.cs" Inherits="ListView详解_Sample2_monitor" MaintainScrollPositionOnPostback="true" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="S2.css" rel="stylesheet" type="text/css" />
    <script src="http://libs.baidu.com/jquery/1.8.3/jquery.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#lb_i_img").change(function () {
                $("#img_i_mo").attr("src", $(this).find("option:selected").text());
            });
            $("#lb_e_img").change(function () {
                $("#img_e_mo").attr("src", $(this).find("option:selected").text());
            });
        });
    </script>
</head>
<body>
    <div>
        <p style="color: red; font-size: 12px">listview控件里面的服务器控件，例如带runat="server"的控件。编译的时候会自动在id前面加上所属容器的id+“_”</p>
        <p style="color: red; font-size: 12px">ClientIDMode="Static" 就可以让id保持不变</p>
        <p style="color: red; font-size: 12px">ClientIDMode="Predictable" 就可以自定义id后缀，例如变成产品id。需要要父容器设置ClientIDMode="static" ClientIDRowSuffix="字段名"</p>
    </div>
    <form id="form1" runat="server">
        <div>
            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1"
                DataKeyNames="mo_id" ItemPlaceholderID="itemholder" InsertItemPosition="FirstItem"
                ClientIDMode="static"
                ClientIDRowSuffix="mo_name">
                <LayoutTemplate>
                    <div runat="server" id="itemholder"></div>
                </LayoutTemplate>

                <ItemTemplate>
                    <div class="Item">
                        <div class="Btns">
                            <asp:Button ID="btn_edit" runat="server" Text="编辑" CommandName="edit" />
                            <br />
                            <asp:Button ID="Button1" runat="server" Text="删除" OnCommand="delmark"
                                CommandArgument='<%#Eval("mo_id") %>'
                                OnClientClick="return confirm('确定删除？')" />
                        </div>
                        <div class="img">
                            <img src='<%#Eval("src") %>' id="img_item" runat="server" clientidmode="Predictable" />
                        </div>
                        <div class="Info">
                            <h3>产品名称：<%#Eval("mo_name") %></h3>
                            <p>系列名称：<%#Eval("se_name") %></p>
                            <p>产品尺寸：<%#Eval("si_name") %></p>
                            <p>
                                接口类型：
                                <%#(Boolean)Eval("mo_phdmi")==true?"HDMI":"" %>
                                <%#(Boolean)Eval("mo_pdvi")==true?"DIV":"" %>
                                <%#(Boolean)Eval("mo_pvga")==true?"VGA":"" %>
                            </p>
                            <p>
                                有效产品：
                                <asp:CheckBox ID="chk_enable" runat="server"
                                    Checked='<%#Eval("mo_enable") %>' Enabled="false" />
                            </p>
                        </div>
                        <div class="clr"></div>
                </ItemTemplate>
                <ItemSeparatorTemplate>
                    <hr />
                </ItemSeparatorTemplate>
                <InsertItemTemplate>
                    <div class="Insert">
                        <div class="Btns">
                            <asp:Button ID="btn_insert" runat="server" Text="插入记录"
                                CommandName="insert" ValidationGroup="v_insert" />
                            <asp:Button ID="btn_i_cancel" runat="server"
                                Text="取消添加" CommandName="cancel" />
                        </div>
                        <div class="img">
                            <asp:ListBox ID="lb_i_img" runat="server" DataSourceID="SqlDataSource2" DataTextField="IMGSRC" DataValueField="img_id"
                                SelectedValue='<%#Bind("mo_imgid") %>' Rows="7" ClientIDMode="Static"></asp:ListBox>
                            <img id="img_i_mo" />
                        </div>
                        <div class="Info">
                            <p>
                                产品名称：
                                <asp:TextBox ID="txt_i_name" runat="server" Text='<%#Bind("mo_name") %>' />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                    ErrorMessage="必须输入产品名称！" CssClass="warn" ValidationGroup="v_insert" SetFocusOnError="true" ControlToValidate="txt_i_name" EnableClientScript="False"></asp:RequiredFieldValidator>
                                <p>
                                    系列名称：
                                  <asp:DropDownList ID="ddl_i_se" runat="server" DataSourceID="ads_ddl_se"
                                      DataTextField="se_name" DataValueField="se_id"
                                      SelectedValue='<%#Bind("mo_seid") %>'>
                                  </asp:DropDownList>
                                </p>
                                <p>
                                    产品尺寸：
                                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="ads_ddl_si"
                                        DataTextField="si_name" DataValueField="si_id"
                                        SelectedValue='<%#Bind("mo_siid") %>'>
                                    </asp:DropDownList>
                                </p>
                                <p>
                                    产品接口：
                                    <asp:CheckBox ID="chk_i_hdmi" runat="server"
                                        Checked='<%#Bind("mo_phdmi") %>' Text="HDMI" />
                                    <asp:CheckBox ID="chk_i_dvi" runat="server"
                                        Checked='<%#Bind("mo_pdvi") %>' Text="DVI" />
                                    <asp:CheckBox ID="chk_i_vga" runat="server"
                                        Checked='<%#Bind("mo_pvga") %>' Text="VGA" />
                                </p>
                                <p>
                                    有效性：
                                    <asp:CheckBox ID="chk_i_enable" runat="server"
                                        Checked='<%#Bind("mo_enable") %>' />
                                </p>
                                <p>
                                    排序：
                                    <asp:TextBox ID="txt_i_order" runat="server"
                                        Text='<%#Bind("mo_order") %>' />
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                                        ErrorMessage="输入数值！" ControlToValidate="txt_i_order" Display="Dynamic" EnableClientScript="False" ValidationExpression="^[1-9]\d*$" SetFocusOnError="True" ValidationGroup="v_insert"></asp:RegularExpressionValidator>
                                </p>
                            </p>
                        </div>
                        <div class="clr"></div>
                    </div>
                </InsertItemTemplate>
                <EditItemTemplate>
                    <div class="Edit">
                        <div class="Btns">
                            <asp:Button ID="btn_update" runat="server" Text="保存修改"
                                CommandName="update" ValidationGroup="v_update" />
                            <asp:Button ID="btn_e_cancel" runat="server"
                                Text="取消添加" CommandName="cancel" />
                        </div>
                        <div class="img">
                            <asp:ListBox ID="lb_e_img" runat="server" DataSourceID="SqlDataSource2" DataTextField="IMGSRC" DataValueField="img_id"
                                SelectedValue='<%#Bind("mo_imgid") %>' Rows="7" ClientIDMode="Static"></asp:ListBox>
                            <img id="img_e_mo" src='<%#Eval("src") %>'  />
                        </div>
                        <div class="Info">
                            <p>
                                产品名称：
                                <asp:TextBox ID="txt_e_name" runat="server" Text='<%#Bind("mo_name") %>' />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                    ErrorMessage="必须输入产品名称！" CssClass="warn" ValidationGroup="v_update" SetFocusOnError="true" ControlToValidate="txt_e_name" EnableClientScript="False"></asp:RequiredFieldValidator>
                                <p>
                                    系列名称：
                                  <asp:DropDownList ID="ddl_e_se" runat="server" DataSourceID="ads_ddl_se"
                                      DataTextField="se_name" DataValueField="se_id"
                                      SelectedValue='<%#Bind("mo_seid") %>'>
                                  </asp:DropDownList>
                                </p>
                                <p>
                                    产品尺寸：
                                    <asp:DropDownList ID="ddl_e_si" runat="server" DataSourceID="ads_ddl_si"
                                        DataTextField="si_name" DataValueField="si_id"
                                        SelectedValue='<%#Bind("mo_siid") %>'>
                                    </asp:DropDownList>
                                </p>
                                <p>
                                    产品接口：
                                    <asp:CheckBox ID="chk_e_hdmi" runat="server"
                                        Checked='<%#Bind("mo_phdmi") %>' Text="HDMI" />
                                    <asp:CheckBox ID="chk_e_dvi" runat="server"
                                        Checked='<%#Bind("mo_pdvi") %>' Text="DVI" />
                                    <asp:CheckBox ID="chk_e_vga" runat="server"
                                        Checked='<%#Bind("mo_pvga") %>' Text="VGA" />
                                </p>
                                <p>
                                    有效性：
                                    <asp:CheckBox ID="chk_e_enable" runat="server"
                                        Checked='<%#Bind("mo_enable") %>' />
                                </p>
                                <p>
                                    排序：
                                    <asp:TextBox ID="txt_e_order" runat="server"
                                        Text='<%#Bind("mo_order") %>' />
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                                        ErrorMessage="输入数值！" ControlToValidate="txt_e_order" Display="Dynamic" EnableClientScript="False" ValidationExpression="^[1-9]\d*$" SetFocusOnError="True" ValidationGroup="v_update"></asp:RegularExpressionValidator>
                                </p>
                            </p>
                        </div>
                        <div class="clr"></div>
                    </div>
                </EditItemTemplate>

            </asp:ListView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ceshiConnectionString %>"
                DeleteCommand="DELETE FROM tb_monitor WHERE mo_id = ?"
                InsertCommand="INSERT INTO tb_monitor (mo_id, mo_seid, mo_siid, mo_imgid, mo_name, mo_order, mo_enable, mo_phdmi, mo_pvga, mo_pdvi) VALUES ( ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"
                ProviderName="<%$ ConnectionStrings:ceshiConnectionString.ProviderName %>"
                SelectCommand="SELECT
tb_monitor.mo_id,
tb_monitor.mo_name,
t_series.se_name,
tb_monitor.mo_phdmi,
tb_monitor.mo_pvga,
tb_monitor.mo_pdvi,
t_size.si_name,
CONCAT(img_folder,img_name) AS src,
tb_monitor.mo_enable,tb_monitor.*
FROM
tb_monitor
left JOIN t_imgmanager ON tb_monitor.mo_imgid = t_imgmanager.img_id
INNER JOIN t_series ON tb_monitor.mo_seid = t_series.se_id
INNER JOIN t_size ON tb_monitor.mo_siid = t_size.si_id
where mo_enable=true and mo_delete=FALSE
ORDER BY mo_id DESC"
                UpdateCommand="UPDATE tb_monitor SET mo_seid = ?, mo_siid = ?, mo_imgid = ?, mo_name = ?, mo_order = ?, mo_enable = ?, mo_phdmi = ?, mo_pvga = ?, mo_pdvi = ? WHERE mo_id = ?">
                <DeleteParameters>
                    <asp:Parameter Name="mo_id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="mo_id" Type="Int32" />
                    <asp:Parameter Name="mo_seid" Type="Int32" />
                    <asp:Parameter Name="mo_siid" Type="Int32" />
                    <asp:Parameter Name="mo_imgid" Type="Int32" />
                    <asp:Parameter Name="mo_name" Type="String" />
                    <asp:Parameter Name="mo_order" Type="Int32" />
                    <asp:Parameter Name="mo_enable" Type="Int32" />
                    <asp:Parameter Name="mo_phdmi" Type="Int32" />
                    <asp:Parameter Name="mo_pvga" Type="Int32" />
                    <asp:Parameter Name="mo_pdvi" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="mo_seid" Type="Int32" />
                    <asp:Parameter Name="mo_siid" Type="Int32" />
                    <asp:Parameter Name="mo_imgid" Type="Int32" />
                    <asp:Parameter Name="mo_name" Type="String" />
                    <asp:Parameter Name="mo_order" Type="Int32" />
                    <asp:Parameter Name="mo_enable" Type="Int32" />
                    <asp:Parameter Name="mo_phdmi" Type="Int32" />
                    <asp:Parameter Name="mo_pvga" Type="Int32" />
                    <asp:Parameter Name="mo_pdvi" Type="Int32" />
                    <asp:Parameter Name="mo_id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
        <asp:SqlDataSource ID="ads_ddl_si" runat="server" ConnectionString="<%$ ConnectionStrings:ceshiConnectionString %>" ProviderName="<%$ ConnectionStrings:ceshiConnectionString.ProviderName %>" SelectCommand="SELECT si_id, si_name FROM t_size"></asp:SqlDataSource>
        <asp:SqlDataSource ID="ads_ddl_se" runat="server" ConnectionString="<%$ ConnectionStrings:ceshiConnectionString %>" ProviderName="<%$ ConnectionStrings:ceshiConnectionString.ProviderName %>" SelectCommand="SELECT se_id, se_name FROM t_series"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ceshiConnectionString %>" ProviderName="<%$ ConnectionStrings:ceshiConnectionString.ProviderName %>" SelectCommand="SELECT img_id, CONCAT(img_folder, img_name) AS IMGSRC FROM t_imgmanager"></asp:SqlDataSource>
    </form>
</body>
</html>
