using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class 控件进阶_11_12_多文件上传_1_Sample_iframe_child : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string _script;
        _script= " <script>parent.document.getElementById('txt_p1').value=12345</script> ";
        Response.Write(_script);


    }
}