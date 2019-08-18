using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class 代码链接数据库_二级导航实践 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        makenav();

    }
    protected void makenav()
    {
        Panel pnl_menuset, pnl_submenu;
        HyperLink a_m0, a_m1;

        DataTable table = bind(" select t1.id,t1.parent_id,t1.name,t1.url,t2.name as panret_name from t_lanmu t1 left join t_lanmu t2 on t1.parent_id=t2.id where t1.parent_id != 0 ");
        foreach(DataRow row in table.Rows)
        {
            string s_m0 = row["parent_id"].ToString();
            pnl_menuset = (Panel)div_menu.FindControl("div_menuset_" + s_m0);
            if (pnl_menuset == null)
            {
                pnl_menuset = new Panel();
                pnl_menuset.CssClass = "menuset";
                pnl_menuset.ID = "div_menuset_" + s_m0;
                div_menu.Controls.Add(pnl_menuset);
            }
            pnl_menuset = (Panel)div_menu.FindControl("div_menuset_" + s_m0);
            a_m0 = (HyperLink)FindControl("a_m0_" + s_m0);
            if (a_m0 == null)
            {
                a_m0 = new HyperLink();
                a_m0.CssClass = "m0";
                a_m0.ID = "a_m0_" + s_m0;
                a_m0.Text = row["panret_name"].ToString();
                pnl_menuset.Controls.Add(a_m0);
            }
            pnl_submenu = (Panel)FindControl("div_submenu_" + s_m0);
            if(pnl_submenu==null)
            {
                pnl_submenu = new Panel();
                pnl_submenu.CssClass = "submenu";
                pnl_submenu.ID = "div_submenu_" + s_m0;
                pnl_menuset.Controls.Add(pnl_submenu);
            }
            pnl_submenu= (Panel)FindControl("div_submenu_" + s_m0);

            a_m1 = new HyperLink();
            a_m1.CssClass = "m1";
            a_m1.ID = "a_m1_" + row["id"].ToString();
            a_m1.Text = row["name"].ToString();
            //会继承当前url，除非是绝对路径“http”开头
            a_m1.NavigateUrl = row["url"].ToString();
            pnl_submenu.Controls.Add(a_m1);
        }
        Panel p = new Panel();
        p.Style.Add("clear", "both");
        div_menu.Controls.Add(p);
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