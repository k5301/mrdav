using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Result : System.Web.UI.Page
{
    string pth;
    DataTable dt;
    Class1 obj;

    public void databindrptFiles()
    {
        dt = obj.showWithOutProcedure("select * from tbDownloadableFiles Where typeId='2' order by downloadId desc");
        rptDownloadsRecord.DataSource = dt;
        rptDownloadsRecord.DataBind();
    }
    public void databindrptTopperStudents()
    {
        dt = obj.showWithOutProcedure("select top 5 * from tbGalleryImageRecord where cid='-1'  order by imgId desc");
        rptTopperRecord.DataSource = dt;
        rptTopperRecord.DataBind();
    }

    public void databindrptAlmuni()
    {
        dt = obj.showWithOutProcedure("select top 5 * from tbGalleryImageRecord where cid='-2'  order by imgId desc");
        rptAlmuni.DataSource = dt;
        rptAlmuni.DataBind();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        obj = new Class1();
        if (!IsPostBack)
        {
            databindrptFiles();
            databindrptAlmuni();
            databindrptTopperStudents();
        }
    }
}