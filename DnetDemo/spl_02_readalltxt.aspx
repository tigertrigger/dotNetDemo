<%@ Page Title="" Language="C#" MasterPageFile="~/A_MasterPage.master" AutoEventWireup="true" CodeFile="spl_02_readalltxt.aspx.cs" Inherits="spl_02_readalltxt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="holder_main" Runat="Server">
    <asp:TextBox ID="txt_content" runat="server" Width="400px" TextMode="MultiLine"
        Rows="13"></asp:TextBox><br/>
    <asp:Button ID="btn_save" runat="server" Text="保存" OnClick="btn_save_Click" />
</asp:Content>

