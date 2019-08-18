using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ListView详解_ItemTemplate设置与功能按钮 : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void mycmd(object s,CommandEventArgs e)
    {
        int flag = ExeNonQuery("update t_series set se_delete=true where se_id=" + e.CommandArgument.ToString());
        Response.Write("影响行："+flag);
        //修改完要重新获取数据源
        ListView1.DataBind();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        TextBox a = (TextBox)ListView1.InsertItem.FindControl("txt_i_order");
        a.Text = a.Text.Trim();
        if(a.Text==null)
        {
            //虽然C#认为不是null，但是传到mysql会变成null
            Response.Write(123);
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