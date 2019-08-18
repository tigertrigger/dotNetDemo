<%@ Page Title="" Language="C#" MasterPageFile="~/控件进阶/CKeditor富文本编辑控件/AMST_CKEDITOR.master" AutoEventWireup="true" CodeFile="8_1_Simple.aspx.cs" Inherits="_8_CKEDITOR_8_1_Simple" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class ="memo">
        <b>CKEDIT.TEXT</b><br />
        读出CKEDIT.text。分别以HTML和TEXT方式写入DIV。
    </p>

    <%--这是一个富文本编辑器--%>
    <CKEditor:CKEditorControl ID="CK1" runat="server"></CKEditor:CKEditorControl>

    
    <asp:Button ID="btn_txt" runat="server" Text="读取TEXT内容到DIV" onclick="btn_txt_Click" 
        />
    <asp:Button ID="btn_html" runat="server" Text="读取HTML内容到DIV" 
        onclick="btn_html_Click" />


    <p>CKEDIT - TEXT</p>
    <div class ="divContent" id="div_text" runat="server"></div>


    <p>CKEDIT - HTML</p>
    <div class ="divContent" id="div_html" runat="server"></div>

    
</asp:Content>

