using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class 控件进阶_testMaster : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_sub_Click(object sender, EventArgs e)
    {
        ((TextBox)Master.FindControl("txt_result")).Text =
            TextBox1.Text + TextBox2.Text;
    }
}