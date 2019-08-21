using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class 控件进阶与AJAX_UpdatePanel控件_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        UpdatePanel1.Update();
    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        string _sDate = Calendar1.SelectedDate.ToLongDateString();
        string _script = "$('#TextBox1').val('"+_sDate+"')";
        ScriptManager.RegisterStartupScript(this, this.GetType(),"oneDream", _script, true);
    }
}