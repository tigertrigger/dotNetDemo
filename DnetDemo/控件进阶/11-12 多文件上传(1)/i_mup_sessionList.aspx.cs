using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class 控件进阶_11_12_多文件上传_1_i_mup_sessionList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HttpPostedFile[] arr_Files = (HttpPostedFile[])Session["postedFiles"];
        int _count = 0;
        TableRow _tr;TableCell _td;Button _btn;
        for (int i = 0; i < 10; i++)
        {
            if(arr_Files[i] !=null)
            {
                _count++;
                _tr = new TableRow();
                _td = new TableCell();
                _td.Text = arr_Files[i].FileName;
                _tr.Cells.Add(_td);

                _td = new TableCell();
                _btn = new Button();
                _btn.Command += _btn_Command;
                _btn.CommandArgument = i.ToString();
                _btn.Text = "取消文件";
                _td.Controls.Add(_btn);
                _tr.Cells.Add(_td);
                Table1.Rows.Add(_tr);
            }
        }
        if(_count==0)
        {
            div_main.InnerText = "队列为空，请选择文件！";
        }
        //因为该页面是multiUpload页面iframe里面的。所以要用parent.
        Response.Write("<script>parent.document.getElementById('txt_FilesCount').value='" + _count + "'</script>");
    }

    private void _btn_Command(object sender, CommandEventArgs e)
    {
        //throw new NotImplementedException();
        int i =int.Parse(e.CommandArgument.ToString());
        ((HttpPostedFile[])Session["postedFiles"])[i] = null;

        //清空后刷新一下。
        Response.Redirect(Request.RawUrl);
    }
}