<%@ Page Title="" Language="C#" MasterPageFile="~/A_MasterPage.master" AutoEventWireup="true" CodeFile="spl_02_readallline.aspx.cs" Inherits="spl_02_readallline" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
<style type="text/css">
    #txts_holder input{display:block;width:400px;}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="holder_main" runat="Server" >
    <div id="txts_holder" style="width: 400px" runat="server" ClientIDMode="Static"></div>
    <asp:Button ID="btn_save" runat="server" Text="保存" OnClick="btn_save_Click" />
</asp:Content>

