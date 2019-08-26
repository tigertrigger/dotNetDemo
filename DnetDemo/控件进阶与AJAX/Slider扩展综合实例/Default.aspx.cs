using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class 控件进阶与AJAX_Slider扩展综合实例_Default : System.Web.UI.Page
{
    string connStr= ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();

    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        DataSet ds = new DataSet();
        using (SqlConnection cn = new SqlConnection())
        {
            //VS2012 自带的SQL为 localdb,连接字符串有一点点不一样，其他功能都一样操作
            cn.ConnectionString = connStr;
            cn.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = cn;
            cmd.CommandText = "select * from ceshi";

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(ds);
        }
        Response.Write(ds.Tables[0].Rows[0]["name"].ToString());
    }
}