using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using MySql.Data.MySqlClient;
using System.Drawing;

public partial class 控件进阶_11_10_FileUpload_iframe与数据库_1_iframe_upload : System.Web.UI.Page
{
    string mycon = " Database=ceshi;Data Source=localhost;User=root;PWD=123123 ";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["_tempfile"] == null)
        {
            Response.Redirect("i_upload.aspx");
        }
        else
        {
            HttpPostedFile _myfile = (HttpPostedFile)Session["_tempfile"];
            string _ext = Path.GetExtension(_myfile.FileName).ToLower();
            DataTable dt = bind(" select * from t_FileClass where fc_ext like '%" + _ext + "%' ");
            lbl_fcid.Text = "1";
            lbl_fcname.Text = "其他";
            lbl_tdir.Text = "~/upfiles/other";

            foreach (DataRow row in dt.Rows)
            {
                lbl_fcid.Text = row["fc_id"].ToString();
                lbl_fcname.Text = row["fc_name"].ToString();
                lbl_tdir.Text = row["fc_path"].ToString();
            }
            txt_title.Text = _myfile.FileName;
            lbl_tpath.Text = MapPath(lbl_tdir.Text) + DateTime.Now.ToOADate() + _ext;
        }
    }

    public DataTable bind(string command)
    {
        DataTable table = new DataTable();
        MySqlConnection mysql = new MySqlConnection(mycon);
        MySqlCommand mycom = new MySqlCommand(command, mysql);
        MySqlDataAdapter datar = null;

        using (mysql)
        {
            try
            {
                mysql.Open();
                datar = new MySqlDataAdapter(command, mycon);
                datar.Fill(table);
            }
            catch
            {
                Response.Write(123);
            }
            finally
            {
                mysql.Close();
            }
        }
        return table;
    }



    protected void btv_save_Click(object sender, EventArgs e)
    {
        string _targPath = lbl_tpath.Text;
        string _targDir = lbl_tdir.Text;
        try
        {
            Directory.CreateDirectory(MapPath(_targDir));
            HttpPostedFile _myfile = (HttpPostedFile)Session["_tempfile"];
            _myfile.SaveAs(_targPath);
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message+"|"+ex.StackTrace);
        }
        if (File.Exists(_targPath))
        {
            string _fcid, _title, _fname;
            _fcid = lbl_fcid.Text;
            _title = txt_title.Text;
            _fname = Path.GetFileName(lbl_tpath.Text);

            int i = ExeNonQuery(string.Format("insert into t_FileInfo (f_fcid,f_title,f_fname) values "
                + "({0},'{1}','{2}')", _fcid, _title, _fname));
            if (i > 0)
            {
                Session.Remove("_tempfile");
                Response.Redirect("i_done.aspx");
            }
        }
    }

    public int ExeNonQuery(string command)
    {
        string mycon = " Database=ceshi;Data Source=localhost;User=root;PWD=123123 ";
        MySqlConnection mysql = new MySqlConnection(mycon);
        MySqlCommand mycom = new MySqlCommand(command, mysql);
        using (mysql)
        {
            try
            {
                mysql.Open();
                return mycom.ExecuteNonQuery();
            }
            catch
            {
                return 0;
            }
            finally
            {
                mysql.Close();
            }
        }

    }
}