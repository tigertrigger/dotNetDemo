using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class 控件进阶与AJAX_TreeView控件_example : System.Web.UI.Page
{

    string mycon = " Database=ceshi;Data Source=localhost;User=root;PWD=123123 ";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            try
            {
                maketree();
            }
            catch
            {
                NonMaketree();
            }
        }
    }
    protected void NonMaketree()
    {
        TreeNode _tNode, _parentNode;
        _tNode = new TreeNode();
        _tNode.Text = "湖南";
        _tNode.Value = "p_1";
        TreeView1.Nodes.Add(_tNode);

        //子级2
        _parentNode = TreeView1.FindNode("p_1");
        _tNode = new TreeNode();
        _tNode.Text = "长沙";
        _tNode.Value = "c_2";
        _parentNode.ChildNodes.Add(_tNode);

        //子级3
        _parentNode = TreeView1.FindNode("p_1/c_2");
        _tNode = new TreeNode();
        _tNode.Text = "岳麓区";
        _tNode.Value = "d_3";
        _parentNode.ChildNodes.Add(_tNode);
    }



    protected void maketree()
    {
        TreeNode _tNode, _parentNode;
        DataTable province = bind(" select * from `hjmall_district1` where `level`='p' ");
        if(province == null|| province.Rows.Count<=0)
        {
            throw new Exception();
        }
        foreach (DataRow row in province.Rows)
        {
            _tNode = new TreeNode();
            _tNode.Text = row["name"].ToString();
            _tNode.Value = "p_" + row["id"].ToString();
            TreeView1.Nodes.Add(_tNode);
        }
        DataTable city = bind(" select * from `hjmall_district1` where `level`='c' ");
        foreach (DataRow row1 in city.Rows)
        {
            _parentNode = TreeView1.FindNode("p_" + row1["parent_id"].ToString());
            _tNode = new TreeNode();
            _tNode.Text = row1["name"].ToString();
            _tNode.Value = "c_" + row1["id"].ToString();
            _parentNode.ChildNodes.Add(_tNode);
        }
        DataTable district = bind(" select t1.`id`,t1.`name`,t1.`parent_id` as `p_id`,t2.`parent_id` as `pp_id` from `hjmall_district1` t1 left join " +
            " `hjmall_district1` t2 on t1.`parent_id`=t2.`id` " +
            " where t1.`level`='d' ");
        foreach (DataRow row2 in district.Rows)
        {
            _parentNode = TreeView1.FindNode("p_" + row2["pp_id"].ToString()+"/c_"+ row2["p_id"].ToString());
            _tNode = new TreeNode();
            _tNode.Text = row2["name"].ToString();
            _tNode.Value = "d_" + row2["id"].ToString();
            _parentNode.ChildNodes.Add(_tNode);
        }
    }

    public DataTable bind(string command)
    {
        DataTable table = new DataTable();
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
            catch(Exception ex)
            {
                Response.Write(ex.Message);
            }
            finally
            {
                mysql.Close();
            }
        }
        return table;
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

    protected void TreeView1_SelectedNodeChanged(object sender, EventArgs e)
    {
        TreeNode _tnode = TreeView1.SelectedNode;
        lbl_text.Text = _tnode.Text;
        lbl_value.Text = _tnode.Value;
        lbl_valuePath.Text = _tnode.ValuePath;
    }
}