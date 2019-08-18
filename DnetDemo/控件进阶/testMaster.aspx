<%@ Page Title="" Language="C#" MasterPageFile="~/控件进阶/11-3 MasterPage母板页（1）.master" AutoEventWireup="true" CodeFile="testMaster.aspx.cs" Inherits="控件进阶_testMaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ClientIDMode="Static"
    ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>调用CSS等代码文件，相对路径会以子页面的路径为准。</p>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <asp:Button ID="btn_sub" runat="server" Text="sub" OnClick="btn_sub_Click" />
</asp:Content>
<asp:Content ID="C1" ContentPlaceHolderID="myCPH" runat="server">
    <img src="../image/123.jpg"/>
</asp:Content>

