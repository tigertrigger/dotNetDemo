using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ListView详解_Sample2_monitor : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void delmark(object s, CommandEventArgs e)
    {
        string str_sql = " update tb_monitor set mo_delete=true " +
            " where mo_id = " + e.CommandArgument.ToString();
        int flag = ExeNonQuery(str_sql);
        if(flag==1)
        {
            Response.Write("删除成功");
        }
        ListView1.DataBind();
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