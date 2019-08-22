using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

public partial class 控件进阶与AJAX_Update无刷新联级_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataTable tb_p = CXmlToDataTable("~/控件进阶与AJAX/Update无刷新联级/province.xml", 0);
            ddl_p.DataSource = tb_p;
            ddl_p.DataTextField = "name";
            ddl_p.DataValueField = "id";
            ddl_p.DataBind();
            ListItem item = new ListItem();
            item.Text = "请选择";
            item.Value = "00";
            item.Selected = true;
            ddl_p.Items.Insert(0, item);
        }
    }

    protected void ddl_p_SelectedIndexChanged(object sender, EventArgs e)
    {
        string id = ddl_p.SelectedValue.ToString();
        child(id, "c");
        //ddl_d.Items.Clear();
    }

    protected void child(string p_id, string cd)
    {
        DataTable tb_c;
        if (cd == "c")
        {
            tb_c = CXmlToDataTable("~/控件进阶与AJAX/Update无刷新联级/city.xml", 0);
        }
        else
        {
            tb_c = CXmlToDataTable("~/控件进阶与AJAX/Update无刷新联级/district.xml", 0);
        }
        DataTable tb_sc = tb_c.Clone();
        foreach (DataRow row in tb_c.Rows)
        {
            if (row["p_id"].ToString() == p_id)
            {
                tb_sc.ImportRow(row);
            }
        }
        if (tb_sc != null && tb_sc.Rows.Count > 0)
        {
            DropDownList ddl = (DropDownList)FindControl("ddl_" + cd);
            ddl.DataSource = tb_sc;
            ddl.DataTextField = "name";
            ddl.DataValueField = "id";
            ddl.DataBind();
            //ListItem lt = new ListItem();
            //lt.Text = "请选择";
            //lt.Value = "00";
            //lt.Selected = true;
            //ddl.Items.Insert(0, lt);
        }
        else
        {
            ddl_c.Items.Clear();
            ddl_d.Items.Clear();
        }
    }

    protected void ddl_c_SelectedIndexChanged(object sender, EventArgs e)
    {
        string id = ddl_c.SelectedValue.ToString();
        child(id, "d");
    }

    protected void reload_d(object sender ,EventArgs e)
    {
        string id = ddl_c.SelectedValue.ToString();
        child(id, "d");
    }


    public static DataTable CXmlToDataTable(string xmlFilePath, int tableIndex)
    {
        return CXmlFileToDataSet(xmlFilePath).Tables[tableIndex];
    }
    public static DataSet CXmlFileToDataSet(string xmlFilePath)
    {
        if (!string.IsNullOrEmpty(xmlFilePath))
        {
            string path = HttpContext.Current.Server.MapPath(xmlFilePath);
            StringReader StrStream = null;
            XmlTextReader Xmlrdr = null;
            try
            {
                XmlDocument xmldoc = new XmlDocument();
                //根据地址加载Xml文件
                xmldoc.Load(path);

                DataSet ds = new DataSet();
                //读取文件中的字符流
                StrStream = new StringReader(xmldoc.InnerXml);
                //获取StrStream中的数据
                Xmlrdr = new XmlTextReader(StrStream);
                //ds获取Xmlrdr中的数据
                ds.ReadXml(Xmlrdr);
                return ds;
            }
            catch (Exception e)
            {
                throw e;
            }
            finally
            {
                //释放资源
                if (Xmlrdr != null)
                {
                    Xmlrdr.Close();
                    StrStream.Close();
                    StrStream.Dispose();
                }
            }
        }
        else
        {
            return null;
        }
    }

}