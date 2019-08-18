using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class 控件进阶_CheckBoxlist和RadioButtonList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Write("CheckBoxList1.SelectedIndex会显示已选位数最小的index；从0开始；");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //TextBox1.Text = "";
        //foreach (ListItem li in CheckBoxList1.Items)
        //{
        //    if(li.Selected)
        //    {
        //        TextBox1.Text += li.Value + ":" + li.Text + ",";
        //    }
        //}
        //会显示已选位数最小的index；从0开始；
        //TextBox1.Text = CheckBoxList1.SelectedIndex.ToString();
    }
}