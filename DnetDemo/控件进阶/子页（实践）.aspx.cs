using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class 控件进阶_子页_实践_ : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Master.FindControl("div_prod").Visible = false;
    }
}