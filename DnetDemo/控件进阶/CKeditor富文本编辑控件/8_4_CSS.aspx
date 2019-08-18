<%@ Page Title="" Language="C#" MasterPageFile="~/控件进阶/CKeditor富文本编辑控件/AMST_CKEDITOR.master" AutoEventWireup="true" CodeFile="8_4_CSS.aspx.cs" Inherits="_8_CKEDITOR_8_1_Simple" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="CSS_forCKeditor_1.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class ="memo">
        <b>调用外部样式表STYLE文件</b><br />
        设置contentCss属性.<br />
        小BUG:~符号无法自动转换.<br />
        代码控制转换成客户端URL:ResolveUrl(URL)方法.
        与富文本显示容器无缝衔接: ".cke_show_borders"
    </p>

    <%--这是一个富文本编辑器--%>
    <div class="txtContent">
    <CKEditor:CKEditorControl ID="CK1" runat="server" ContentsCss=""></CKEditor:CKEditorControl>
    </div>
    
    <asp:Button ID="btn_css1" runat="server" Text="调用CSS1:RED" onclick="btn_css1_Click" 
        />
    <asp:Button ID="btn_css2" runat="server" Text="调用CSS2:GREEN" onclick="btn_css2_Click" 
         />

         <hr />
        <p>CLASS为.cke_show_borders的层 
            <asp:Button ID="Button1" runat="server" Text="读取CKEDIT内容" onclick="Button1_Click1" 
                /></p>
      <div id="div_reader"  class="cke_show_borders"  style ="border:1px solid black; padding:15px;" runat="server"></div>
            <p>CLASS不为.cke_show_borders的层 
            <asp:Button ID="Button2" runat="server" Text="读取CKEDIT内容" OnClick="Button2_Click"  
                /></p>
      <div id="div1"  style ="border:1px solid black; padding:15px;" runat="server"></div>


        
</asp:Content>

