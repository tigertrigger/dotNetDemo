using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class spl_02_readallline : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string _path = getpath();
        string[] sarr_content = File.ReadAllLines(_path,System.Text.Encoding.Default);
        TextBox _txt;
        foreach (string _s in sarr_content)
        {
            _txt = new TextBox();
            _txt.Text = _s;
            txts_holder.Controls.Add(_txt);
        }
    }

    protected string getpath()
    {
        string _path = "";
        if (Request["fname"] == null)
        {
            Response.Redirect("spl_02_default.aspx");
        }
        _path = Path.Combine(MapPath("image"), Request["fname"].ToString());
        if(!File.Exists(_path))
        {
            Response.Redirect("spl_02_default.aspx");
        }
        return _path;
    }
    protected void btn_save_Click(object sender, EventArgs e)
    {
        string _content = "";
        foreach(Control _ctl in txts_holder.Controls)
        {
            if(_ctl is TextBox)
            {
                _content += ((TextBox)_ctl).Text + '\u0081';
            }
        }
        _content = _content.Substring(0, _content.Length - 1);

        string[] _lines = _content.Split('\u0081');
        string path = Path.Combine(MapPath("image"), Request["fname"].ToString());
        File.WriteAllLines(path, _lines, System.Text.Encoding.Default);
    }
}