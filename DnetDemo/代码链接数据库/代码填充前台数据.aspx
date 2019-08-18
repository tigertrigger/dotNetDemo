<%@ Page Language="C#" AutoEventWireup="true" CodeFile="代码填充前台数据.aspx.cs" Inherits="代码链接数据库_代码填充前台数据" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        #tbl_summary{border:1px solid black;}
        #tbl_summary td,#tbl_summary th
        {
            padding:10px;border:1px solid silver;
        }
        td span{margin:10px;}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Table ID="tbl_summary" runat="server">
                <asp:TableHeaderRow>
                    <asp:TableHeaderCell ColumnSpan="4">成绩汇总</asp:TableHeaderCell>
                </asp:TableHeaderRow>
            </asp:Table>
        </div>
    </form>
</body>
</html>
