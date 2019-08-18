using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class 代码链接数据库_jquery简单示例2 : System.Web.UI.Page
{
    string mycon = " Database=ceshi;Data Source=localhost;User=root;PWD=123123 ";

    protected void Page_Load(object sender, EventArgs e)
    {
        GridView1.DataSource = bind();
        GridView1.DataBind();
        GridView2.DataSource = bind();
        GridView2.DataBind();
        string command = " select * from t_news ";
        MySqlConnection mysql = new MySqlConnection(mycon);
        MySqlCommand mycom = new MySqlCommand(command, mysql);
        using (mysql)
        {
            try
            {
                mysql.Open();
                MySqlDataReader datar = mycom.ExecuteReader();
                Panel pnl_name;
                Panel pnl_fitems;
                Label lab_fitem, lab_name;
                while (datar.Read())
                {
                    Single[] arrf = new float[2];
                    arrf[0] = Convert.ToSingle(datar["eneg"]);
                    arrf[1] = Convert.ToSingle(datar["point"]);
                    if (checkfen(arrf))
                    {
                        continue;
                    }

                    lab_name = new Label(); lab_name.Text = datar["name"].ToString();
                    pnl_name = new Panel(); pnl_name.Controls.Add(lab_name); pnl_name.CssClass = "studentName";
                    div_itemholder.Controls.Add(pnl_name);

                    pnl_fitems = new Panel();
                    lab_fitem = new Label(); lab_fitem.Text = "语文：" + datar["eneg"].ToString();
                    pnl_fitems.Controls.Add(lab_fitem);
                    lab_fitem = new Label(); lab_fitem.Text = "数学：" + datar["point"].ToString();
                    pnl_fitems.Controls.Add(lab_fitem);
                    div_itemholder.Controls.Add(pnl_fitems);
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
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            e.Row.Cells[3].CssClass = "f";
            e.Row.Cells[4].CssClass = "f";
        }
    }
    protected void GridView2_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            int _count = 0;
            for (int i = 3; i < 5; i++)
            {
                TableCell mytc = e.Row.Cells[i];
                Single _f = Convert.ToSingle(mytc.Text);
                if (_f < 60)
                {
                    _count++;
                }
            }
            if (_count >= 2)
            {
                e.Row.Visible = false;
            }
        }
    }
    protected Boolean checkfen(Single[] _arrf)
    {
        Boolean _result = false;
        int count = 0;

        foreach (Single _s in _arrf)
        {
            if (_s < 60)
            {
                count++;
            }
        }
        if (count >= 2)
        {
            _result = true;
        }
        return _result;
    }
}