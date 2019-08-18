using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class spl_02_readalltxt : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (!string.IsNullOrEmpty(Request.QueryString["fname"].ToString()))
            {
                string _path = Path.Combine(MapPath("image"), Request["fname"].ToString());
                if(File.Exists(_path))
                {
                    txt_content.Text = File.ReadAllText(_path, System.Text.Encoding.Default);
                }
                else
                {
                Response.Redirect("spl_02_default.aspx");
                }
            }
            else
            {
                Response.Redirect("spl_02_default.aspx");
            }
        }
    }

    protected void btn_save_Click(object sender, EventArgs e)
    {
        string _path = Path.Combine(MapPath("image"), Request["fname"].ToString());
        File.WriteAllText(_path, txt_content.Text, System.Text.Encoding.Default);
    }
}