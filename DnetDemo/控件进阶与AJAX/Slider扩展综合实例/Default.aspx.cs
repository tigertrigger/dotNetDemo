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
        if (!IsPostBack)
        {
            maketree();
        }
    }
    protected void maketree()
    {
        DataTable table = bind("select * from [pm]");
        TreeNode _tnode;
        foreach (DataRow row in table.Rows)
        {
            _tnode = new TreeNode();
            _tnode.Text = string.Format("{0:D}", (DateTime)row["date"]);
            //_tnode.Value = row["val"].ToString();
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


    protected void tv_date_SelectedNodeChanged(object sender, EventArgs e)
    {
        //TextBox1.Text = tv_date.SelectedValue;
    }


    protected void btn_showList_Click(object sender, EventArgs e)
    {
        string _values = "";
        foreach (TreeNode _node in tv_date.CheckedNodes)
        {
            _values += ","+_node.Value;
        }
        _values = _values.Substring(1);
        TextBox1.Text = _values;
        string _sql = "select * from pm where id in (" + _values + ")";
        SqlDataSource1.SelectCommand = _sql;
    }

}