using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _8_CKEDITOR_8_2_ToolbarMode : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //所有工具的名称,根据需要注释掉不需要的部分即可.

        CK_DEF.config.toolbar = new object[]
        {
            new object[] { "Source", "-", "Save", "NewPage", "Preview", "-", "Templates" },
            new object[] { "Cut", "Copy", "Paste", "PasteText", "PasteFromWord", "-", "Print", },
            //new object[] {"SpellChecker", "Scayt" },
            //new object[] { "Undo", "Redo", "-", "Find", "Replace", "-", "SelectAll", "RemoveFormat" },
            //new object[] { "Form", "Checkbox", "Radio", "TextField", "Textarea", "Select", "Button", "ImageButton", "HiddenField" },
            //"/",
            new object[] { "Bold", "Italic", "Underline", "Strike", "-", "Subscript", "Superscript" },
            new object[] { "NumberedList", "BulletedList", "-", "Outdent", "Indent", "Blockquote", "CreateDiv" },
            new object[] { "JustifyLeft", "JustifyCenter", "JustifyRight", "JustifyBlock" },
            //new object[] { "BidiLtr", "BidiRtl" },
            new object[] { "Link", "Unlink", "Anchor" },
            //new object[] { "Image", "Flash", "Table", "HorizontalRule", "Smiley", "SpecialChar", "PageBreak", "Iframe" },
            //"/",
            //new object[] { "Styles", "Format", "Font", "FontSize" },
            new object[] { "TextColor", "BGColor" },
            //new object[] { "Maximize", "ShowBlocks", "-", "About" }
        };
    }
}