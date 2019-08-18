<%@ Page Language="C#" AutoEventWireup="true" CodeFile="eight_queen.aspx.cs" Inherits="eight_queen" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <style type="text/css">
        table {
            border: 1px solid #000000;
            border-collapse: collapse;
        }

        td {
            border: 1px solid gray;
            width: 40px;
            height: 40px;
        }

            td.black {
                background-color: black;
            }

            td.queen {background-image:url(image/321.png);
                      background-repeat: no-repeat; 
                      background-position: center;
                      background-size: 90%;
            }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
        </div>

            <asp:ListBox ID="ListBox1" runat="server" Height="148px" Width="125px" AutoPostBack="True" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged" ></asp:ListBox>
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Button" />

    </form>
</body>
</html>
