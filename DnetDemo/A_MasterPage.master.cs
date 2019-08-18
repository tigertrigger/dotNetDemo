using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class A_MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel pnl_item;
        Label lab_fname;
        HyperLink hlink_alltext, hlink_lines;

        string[] sarr_fname = Directory.GetFiles(MapPath("image"),"*.txt");
        foreach(string _s in sarr_fname)
        {
            lab_fname = new Label();
            lab_fname.Text = Path.GetFileName(_s);

            hlink_alltext = new HyperLink();
            hlink_alltext.Text = "全部读取";
            hlink_alltext.NavigateUrl = "spl_02_readalltxt.aspx?fname="+lab_fname.Text;

            hlink_lines = new HyperLink();
            hlink_lines.Text = "分行读取";
            hlink_lines.NavigateUrl = "spl_02_readallline.aspx?fname=" + lab_fname.Text;

            pnl_item = new Panel();
            pnl_item.Controls.Add(lab_fname);
            pnl_item.Controls.Add(hlink_alltext);
            pnl_item.Controls.Add(hlink_lines);
            div_right.Controls.Add(pnl_item);
        }
    }
}
