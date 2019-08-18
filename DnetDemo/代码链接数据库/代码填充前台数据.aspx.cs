using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class 代码链接数据库_代码填充前台数据 : System.Web.UI.Page
{
    string mycon = " Database=ceshi;Data Source=localhost;User=root;PWD=123123 ";
    //eneg小于60，eneg大于60，point小于60，point大于60
    string[] sarr1 = { "Good", "Fail" };
    string[] sarr2 = { "优秀", "不及格" };
    string[] sarr_km = { "eneg", "point" };
    string[] sarr_kmname = { "能量", "分数" };

    protected void Page_Load(object sender, EventArgs e)
    {

        TableRow tr; TableCell tc;
        for (int i = 0; i < sarr_km.Length; i++)
        {
            tr = new TableRow();
            for (int j = 0; j < sarr1.Length; j++)
            {
                tc = new TableCell();
                tc.Text = sarr_kmname[i] + sarr2[j];
                tr.Cells.Add(tc);

                tc = new TableCell();
                tc.ID = sarr1[j] + sarr_km[i];
                tr.Cells.Add(tc);
            }
            tbl_summary.Rows.Add(tr);
        }
        DataTable dt = bind();
        Label lab_name;
        float f;
        foreach (DataRow row in dt.Rows)
        {
            foreach (string _skm in sarr_km)
            {
                lab_name = new Label();
                lab_name.Text = row["name"].ToString();
                f = Convert.ToSingle(row[_skm]);
                if (f < 60)
                {
                    tc = (TableCell)FindControl("Fail" + _skm);
                    tc.Controls.Add(lab_name);
                }
                else if(f>85)
                {
                    tc = (TableCell)FindControl("Good" + _skm);
                    tc.Controls.Add(lab_name);
                }
            }
        }
    }
    public DataTable bind()
    {
        DataTable table = new DataTable();
        string command = " select * from t_news ";
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