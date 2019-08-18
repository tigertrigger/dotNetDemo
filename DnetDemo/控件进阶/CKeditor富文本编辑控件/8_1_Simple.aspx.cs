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

    protected void btn_txt_Click(object sender, EventArgs e)
    {
        div_text.InnerText = CK1.Text;
    }
    protected void btn_html_Click(object sender, EventArgs e)
    {

        div_html.InnerHtml = CK1.Text;
    }
}