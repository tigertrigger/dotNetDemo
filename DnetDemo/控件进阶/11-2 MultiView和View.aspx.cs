using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class 控件进阶_11_2_MultiView和View : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void di(object s,CommandEventArgs e)
    {
        switch (e.CommandArgument.ToString())
        {
            case "有":
                MultiView1.SetActiveView(v_brand);
                break;
            case "没有":
                MultiView1.SetActiveView(v_buy);
                break;
            case "是":
                MultiView1.SetActiveView(v_brand);
                break;
            case "NO":
                MultiView1.SetActiveView(v_done);
                break;
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        MultiView1.SetActiveView(v_default);
    }

    protected void RadioButtonList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        MultiView1.SetActiveView(v_done);
    }
}