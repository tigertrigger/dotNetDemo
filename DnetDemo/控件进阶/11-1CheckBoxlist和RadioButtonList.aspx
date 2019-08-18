<%@ Page Language="C#" AutoEventWireup="true" CodeFile="11-1CheckBoxlist和RadioButtonList.aspx.cs" Inherits="控件进阶_CheckBoxlist和RadioButtonList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <script src="http://libs.baidu.com/jquery/1.8.3/jquery.min.js"></script>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p>检测至少选了一项，可以通过检测selectedIndex属性>=0，.net验证控件没法做到。 </p>
            <p>或者用客户端Jquery</p>
            <span id="errMSG"></span>
            <asp:CheckBoxList ID="CheckBoxList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="se_name" DataValueField="se_id">
            </asp:CheckBoxList>
            <asp:Button ID="Button1" runat="server" Text="Button"
                OnClientClick="return emptyCheck('#CheckBoxList1','#errMSG','#TextBox1')" />
            <script type="text/javascript">
                function emptyCheck(_ckid, _err_id, _txtid) {
                    var _s = $(":checked", _ckid).val();
                    var _txt="";
                    if (_s == null) {
                        $(_err_id).text("至少选中一项")
                        return false;
                    }
                    else {
                        $(_txtid).val("");
                        $(":checked", _ckid).each(function () {
                            _txt += $(this).parent().text() + ','
                        });
                        $(_txtid).val(_txt);
                        $(_err_id).text("");
                        return true;
                    }
                }
            </script>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ceshiConnectionString %>" ProviderName="<%$ ConnectionStrings:ceshiConnectionString.ProviderName %>" SelectCommand="select * from t_series"></asp:SqlDataSource>

            <span id="errMSG2"></span>
            <asp:CheckBoxList ID="CheckBoxList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="se_name" DataValueField="se_id">
            </asp:CheckBoxList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ceshiConnectionString %>" ProviderName="<%$ ConnectionStrings:ceshiConnectionString.ProviderName %>" SelectCommand="select * from t_series"></asp:SqlDataSource>
            <asp:Button ID="Button2" runat="server" Text="Button" OnClick="Button1_Click"
                OnClientClick="return emptyCheck('#CheckBoxList2','#errMSG2','#TextBox1')" />
            <asp:RadioButton ID="RadioButton1" runat="server" />
        </div>
    </form>
</body>
</html>
