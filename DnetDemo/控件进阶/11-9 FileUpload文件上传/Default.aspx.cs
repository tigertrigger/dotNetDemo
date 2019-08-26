using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    string mycon = " Database=ceshi;Data Source=localhost;User=root;PWD=123123 ";
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["123"] = FileUpload1.PostedFile;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        if((HttpPostedFile)Session["123"] != null)
        {
            HttpPostedFile _file = (HttpPostedFile)Session["123"];
            string _orgName = _file.FileName;
            string  _targPath = MapPath("~/upfiles/") + _orgName;
            try
            {
                _file.SaveAs(_targPath);
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "，哎嘿嘿')</script>");
            }
        }
        else
        {
            Response.Write("空的");
        }
    }
    public int ExeNonQuery(string command)
    {
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
    public DataTable bind( string command)
    {
        string mycon = " Database=ceshi;Data Source=localhost;User=root;PWD=123123 ";
        DataTable table = new DataTable();
        MySqlConnection mysql = new MySqlConnection(mycon);
        MySqlCommand mycom = new MySqlCommand(command, mysql);
        MySqlDataAdapter datar = null;
        using (mysql)
        {
            try
            {
                mysql.Open();
                datar = new MySqlDataAdapter(command, mysql);
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



}