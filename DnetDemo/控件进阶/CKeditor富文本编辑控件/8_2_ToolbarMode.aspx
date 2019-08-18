<%@ Page Title="" Language="C#" MasterPageFile="~/控件进阶/CKeditor富文本编辑控件/AMST_CKEDITOR.master" AutoEventWireup="true" CodeFile="8_2_ToolbarMode.aspx.cs" Inherits="_8_CKEDITOR_8_2_ToolbarMode" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class ="memo">
        <b>CKEDIT工具栏模式</b><br />
        三种模式:Basic; Full; 定制
    </p>
    
    <p>基本模式:</p>
    <CKEditor:CKEditorControl ID="CK_BASIC" runat="server" Toolbar="Basic" ></CKEditor:CKEditorControl>
    <br />
    <p>全工具模式:</p>
    <CKEditor:CKEditorControl ID="CK_FULL" runat="server"></CKEditor:CKEditorControl>
    <br />
    <p>定制模式:</p>
    <CKEditor:CKEditorControl ID="CK_DEF" runat="server" ></CKEditor:CKEditorControl>
</asp:Content>

