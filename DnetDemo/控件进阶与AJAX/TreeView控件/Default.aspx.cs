using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class 控件进阶与AJAX_TreeView控件_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        TreeNode _treeNode;
        _treeNode = TreeView1.SelectedNode;

        Response.Write(_treeNode.Text + "<br/>");
        Response.Write(_treeNode.Value + "<br/>");
        Response.Write(_treeNode.ValuePath + "<br/>");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        TreeNode _treeNode = new TreeNode();
        _treeNode.Text = "新添加节点";
        _treeNode.Value = "V_NEW";

        TreeView1.Nodes.Add(_treeNode);
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        TreeNode _treeNode = new TreeNode();
        _treeNode.Text = "新添加节点";
        _treeNode.Value = "V_NEW";


        TreeNode _pTreeNode = TreeView1.FindNode("222/B1");
        _pTreeNode.ChildNodes.Add(_treeNode);
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        foreach(TreeNode _tnode in TreeView1.CheckedNodes)
        {
            Response.Write(_tnode.ValuePath+"<br />");
        }
    }
}