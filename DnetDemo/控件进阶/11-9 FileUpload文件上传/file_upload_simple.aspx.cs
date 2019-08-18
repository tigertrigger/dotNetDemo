using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class 控件进阶_11_9_FileUpload文件上传_file_upload_simple : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            //string _targPath = MapPath("~/upfiles/") + FileUpload1.FileName;
                                                                                //给他一个完整文件名，他能获取扩展名
            string _targPath = MapPath("~/upfiles/") + DateTime.Now.ToOADate().ToString()+Path.GetExtension(FileUpload1.FileName);
            //防止前段代码被修改
            if (FileUpload1.PostedFile.ContentLength>8388608)
            {
                //后台弹框
                Response.Write("script>alert('提示内容!');</script>");
            }
            else
            {
                try
                {
                    FileUpload1.SaveAs(_targPath);
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "，哎嘿嘿')</script>");
                }
            }
            Response.Redirect(Request.RawUrl);
        }
    }
}