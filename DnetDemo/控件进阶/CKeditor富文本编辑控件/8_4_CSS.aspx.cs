using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _8_CKEDITOR_8_1_Simple : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_css1_Click(object sender, EventArgs e)
    {
        
        string s=ResolveUrl("~/控件进阶/CKeditor富文本编辑控件/CSS_forCKeditor_1.css");
        CK1.ContentsCss = s;

    }
    protected void btn_css2_Click(object sender, EventArgs e)
    {
        string s = ResolveUrl("~/控件进阶/CKeditor富文本编辑控件/CSS_forCKeditor_2.css");
        CK1.ContentsCss = s;
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        div_reader.InnerHtml = CK1.Text;
    }


    protected void Button2_Click(object sender, EventArgs e)
    {
        div1.InnerHtml = CK1.Text;
    }
}