using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ServiceStack.Redis;
using System.Data;
using System.Threading;

public partial class 测试redis : System.Web.UI.Page
{
    RedisClient red = new RedisClient("127.0.0.1", 6379);

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //if(string.IsNullOrEmpty(red.Get<string>("token")))
        //{
        //    TimeSpan t0 = new TimeSpan(0, 0, 3);
        //    red.Set("token", 234, t0);
        //    ExeNonQuery("update t_series set se_order=se_order+" + TextBox1.Text + " where se_id=8");
        //}
        //else
        //{
        //    Response.Write("请勿频繁操作");
        //}
        DataTable dt = bind(" select * from t_series where se_name =123 ");
        Thread.Sleep(3000);
        if (dt!=null && dt.Rows.Count>0  )
        {
            Response.Write("<script>alert('操作成功');</script>");
        }
        else
        {
            Response.Write(ExeNonQuery(" INSERT INTO t_series (se_name) values ('123') "));
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
    public DataTable bind(string command)
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