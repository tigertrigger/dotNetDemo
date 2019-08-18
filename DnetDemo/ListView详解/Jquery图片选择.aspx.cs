using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ListView详解_Jquery图片选择 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

     }

    protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Image1.ImageUrl = ListBox1.SelectedValue;
    }
}