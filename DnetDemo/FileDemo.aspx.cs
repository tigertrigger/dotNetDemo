using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class FileDemo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            string[] arr = Directory.GetFiles(MapPath("image"), "*.txt");

            ListItem li;
            foreach (string name in arr)
            {
                li = new ListItem();
                string fname = Path.GetFileNameWithoutExtension(name);
                li.Text = fname;
                DropDownList1.Items.Add(li);
            }
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string _fname = DropDownList1.SelectedValue;
        string _path = Path.Combine( MapPath("image"), _fname+ ".txt");

        //TextBox1.Text = _path;
        if(File.Exists(_path))
        {
            TextBox1.Text = File.ReadAllText(_path,System.Text.Encoding.Default);
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        string _fname = DropDownList1.SelectedValue;
        string _path = Path.Combine(MapPath("image"), _fname + ".txt");

        if (File.Exists(_path))
        {
            string _content = TextBox1.Text;
            File.WriteAllText(_path, _content, System.Text.Encoding.Default);
        }
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        string _fname = DropDownList1.SelectedValue;
        string _path = Path.Combine(MapPath("image"), _fname + ".txt");

        if (File.Exists(_path))
        {
            string[] _content = File.ReadAllLines(_path, System.Text.Encoding.Default);
            TextBox _txt;
            foreach(string _s in _content)
            {
                _txt = new TextBox();
                _txt.Text = _s;
                Panel_holder.Controls.Add(_txt);
            }
        }
    }
}