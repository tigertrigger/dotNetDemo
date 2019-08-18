using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class 控件进阶_11_12_多文件上传_1_Sample_iframe_parent : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        for (int i = 0; i < 5; i++)
        {
            Button _btn = new Button();
            _btn.Text = i.ToString();
            _btn.Command += _btn_Command;
            _btn.CommandArgument = i.ToString();
            pnl_btns.Controls.Add(_btn);
        }
    }

    private void _btn_Command(object sender, CommandEventArgs e)
    {
        //throw new NotImplementedException();
        Response.Write(e.CommandArgument.ToString());
    }
}