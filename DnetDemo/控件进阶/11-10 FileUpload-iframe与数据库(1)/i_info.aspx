<%@ Page Language="C#" AutoEventWireup="true" CodeFile="i_info.aspx.cs" Inherits="控件进阶_11_10_FileUpload_iframe与数据库_1_iframe_upload" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            title:
            <asp:TextBox ID="txt_title" runat="server"></asp:TextBox><br />
            fc_id:<asp:Label ID="lbl_fcid" runat="server" Text="Label"></asp:Label><br />
            fc_name:<asp:Label ID="lbl_fcname" runat="server" Text="Label"></asp:Label><br />
            targDir:<asp:Label ID="lbl_tdir" runat="server" Text="Label"></asp:Label><br />
            targPath:<asp:Label ID="lbl_tpath" runat="server" Text="Label"></asp:Label><br />
            <asp:Button ID="btv_save" runat="server" Text="保存" OnClick="btv_save_Click" />
            <asp:Image ID="Image1" runat="server" />
        </div>
    </form>
</body>
</html>
