using System;
using System.Collections.Generic;
using System.IO;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class 控件进阶_11_12_多文件上传_1_i_mup_uploading : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HttpPostedFile _pstFile;
        TableRow _tr;TableCell _td;

        for (int i = 0; i < 10; i++)
        {
            if(((HttpPostedFile[])Session["postedFiles"])[i]!=null)
            {
                _pstFile = ((HttpPostedFile[])Session["postedFiles"])[i];
                if(uploadFile(_pstFile))
                {
                    //插入表格内容，清除session
                    _tr = new TableRow();
                    _td = new TableCell();
                    _td.Text = _pstFile.FileName;
                    _tr.Cells.Add(_td);

                    _td = new TableCell();
                    _td.Text = "插入成功";
                    _tr.Cells.Add(_td);

                    Table1.Rows.Add(_tr);

                    ((HttpPostedFile[])Session["postedFiles"])[i] = null;
                }
            }
        }
    }

    protected Boolean uploadFile(HttpPostedFile _file)
    {
        string _orgName, _fname, _ext, _fcid, targDir, _targPath, _title;
        _orgName = _title = _file.FileName;
        _ext = Path.GetExtension(_orgName).ToLower();
        _fname = DateTime.Now.ToOADate().ToString() + _ext;
        _targPath = MapPath("~/upfiles/") + _fname;
        try
        {
            Directory.CreateDirectory(MapPath("~/upfiles/"));
            _file.SaveAs(_targPath);
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('" + ex.Message + "，哎嘿嘿')</script>");
        }
        if (File.Exists(_targPath))
        {
            return true;
        }
        else
        {
            return false;
        }
    }
}