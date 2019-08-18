using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class 代码链接数据库_jquery简单示例 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string mycon = " Database=ceshi;Data Source=localhost;User=root;PWD=123123 ";
        string command = " select * from t_news ";
        MySqlConnection mysql = new MySqlConnection(mycon);
        MySqlCommand mycom = new MySqlCommand(command, mysql);
        using (mysql)
        {
            try
            {
                mysql.Open();
                MySqlDataReader datar;
                datar = mycom.ExecuteReader();
                GridView1.DataSource = datar;
                GridView1.DataBind();
                while (datar.Read())
                {
                    div_reader.InnerHtml += datar["name"].ToString()+"<br/>";
                }
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


    }

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if(e.Row.RowType==DataControlRowType.DataRow)
        {
            TableCell mytc = e.Row.Cells[3];
           if(Convert.ToSingle(mytc.Text)<60)
            {
                mytc.ForeColor=System.Drawing.Color.Red;
            }
           else if(Convert.ToSingle(mytc.Text) == 60)
            {
                mytc.ForeColor = System.Drawing.Color.Green;
                mytc.Text = "刚好及格";
            }
        }
        Response.Write(e.Row.RowType.ToString() + "<br/>");
    }
}