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

    }

    protected void ddl_p_SelectedIndexChanged(object sender, EventArgs e)
    {

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