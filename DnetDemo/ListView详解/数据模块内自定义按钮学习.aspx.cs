using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ListView详解_数据模块内自定义按钮学习 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void mycmd(object sender ,CommandEventArgs e)
    {
        switch (e.CommandName)
        {
            case "group1":
                Response.Write(e.CommandArgument);
                break;

        }
    }
}