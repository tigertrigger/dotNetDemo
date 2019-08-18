using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class 控件进阶_11_3_MasterPage母板页_1_ : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_mst_Click(object sender, EventArgs e)
    {
        string s = ((TextBox)ContentPlaceHolder1.FindControl("TextBox1")).Text;
        string s2 = ((TextBox)ContentPlaceHolder1.FindControl("TextBox2")).Text;
        txt_result.Text = s + s2;
    }
}
