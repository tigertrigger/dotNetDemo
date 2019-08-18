using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class 控件进阶_CKeditor富文本编辑控件_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        div_text.InnerText = CKEditorControl1.Text;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        div_html.InnerHtml = CKEditorControl1.Text;
    }
}