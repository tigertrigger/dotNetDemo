using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class 控件进阶_11_12_多文件上传_1_multiUpload : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_addSession_Click(object sender, EventArgs e)
    {
        for (int i = 0; i < 10; i++)
        {
            if (((HttpPostedFile[])Session["postedFiles"])[i] == null)
            {
                ((HttpPostedFile[])Session["postedFiles"])[i] = fup1.PostedFile;
                break;
            }
        }
        Response.Redirect(Request.RawUrl);
    }
}