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
    public string myconStr = System.Configuration.ConfigurationManager.ConnectionStrings["ceshiSQL"].ToString();

    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            maketree();
        }
    }
    protected void maketree()
    {
        DataTable table = bind("select * from pm");
        TreeNode _tnode;
        foreach(DataRow row in table.Rows)
        {
            _tnode = new TreeNode();
            _tnode.Text = row["date"].ToString();
            _tnode.Value = row["id"].ToString();

            tv_date.Nodes.Add(_tnode);      
        }
    }
    public DataTable bind(string command)
    {
        DataTable table = new DataTable();
        SqlConnection mycon = new SqlConnection(myconStr);
        using (mycon)
        {
            try
            {
                SqlDataAdapter datar = new SqlDataAdapter(command, mycon);
                datar.Fill(table);
                datar.Dispose();
            }
            catch
            {
                Response.Write(123);
            }
            finally
            {
                mycon.Close();
            }
        }
        return table;
    }

}