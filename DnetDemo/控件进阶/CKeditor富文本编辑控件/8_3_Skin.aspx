<%@ Page Title="" Language="C#" MasterPageFile="~/控件进阶/CKeditor富文本编辑控件/AMST_CKEDITOR.master" AutoEventWireup="true" CodeFile="8_3_Skin.aspx.cs" Inherits="_8_CKEDITOR_8_2_ToolbarMode" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class ="memo">
        <b>皮肤选择</b><br />
        已有皮肤3套:kama, office2003, v2<br />
        kama模式下可设置UIcolor,设置面板颜色
    </p>
    
    <p>kama: 默认皮肤</p>
    <CKEditor:CKEditorControl ID="CK_KAMA" runat="server"   ></CKEditor:CKEditorControl>

    <br />
    <p>kama 自定义颜色(Green):</p>
    <CKEditor:CKEditorControl ID="CK_KAMA_COLOR" runat="server" Skin="kama" UIColor="Green" ></CKEditor:CKEditorControl>

    <br />
    <p>office:</p>
    <CKEditor:CKEditorControl ID="CK_OFFICE" runat="server" Skin="office2003"></CKEditor:CKEditorControl>
    <br />
    <p>v2:</p>
    <CKEditor:CKEditorControl ID="CK_V2" runat="server" Skin="v2" ></CKEditor:CKEditorControl>

    
</asp:Content>

