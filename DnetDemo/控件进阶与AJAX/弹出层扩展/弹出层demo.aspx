<%@ Page Language="C#" AutoEventWireup="true" CodeFile="弹出层demo.aspx.cs" Inherits="控件进阶与AJAX_弹出层扩展_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .pnlPopup{
            padding:10px;border:1px solid gray;background-color:#eaeaea;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <ajaxToolkit:PopupControlExtender ID="TextBox1_PopupControlExtender" runat="server" 
                BehaviorID="TextBox1_PopupControlExtender" 
                DynamicServicePath="" 
                ExtenderControlID="" 
                TargetControlID="Image1"
                PopupControlID="Panel1" 
                Position="Bottom"
                CommitProperty="src" >
            </ajaxToolkit:PopupControlExtender>

            <asp:Image ID="Image1" runat="server" ImageUrl="~/image/123.jpg" />    
            <div>Ajax是js代码控制，所以CommitProperty指定弹出层返回参数要Html代码的属性，不能用服务器的 
                <br />
                例如现在Image控件的ImageUrl属性，应该换成src属性。且image的src属性在postback后会重置成原图。<br />
                <p style="color:#1a71fb"> 所以需要记录当前图路径，再下次页面生成时在Page_Load把路径重新给image控件，其他控件同理。（类似用textbox记录）</p>
               
            </div>
            <asp:Panel ID="Panel1" runat="server" CssClass="pnlPopup">
                <p>静态弹出层</p>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                    <ContentTemplate>
                        <%=DateTime.Now.ToFileTime() %>
                        <asp:RadioButtonList ID="RBList_1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RBList_1_SelectedIndexChanged">
                            <asp:ListItem>1111</asp:ListItem>
                            <asp:ListItem>2222</asp:ListItem>
                            <asp:ListItem>3333</asp:ListItem>
                            <asp:ListItem>4444</asp:ListItem>
                        </asp:RadioButtonList>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </asp:Panel>
            <asp:Button ID="Button1" runat="server" Text="Button" />
        </div>
    </form>
</body>
</html>
