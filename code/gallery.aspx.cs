using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class gallery : System.Web.UI.Page
{
    string pth;
    DataTable dt;
    Class1 obj;

    public void databindCategoryRecord()
    {
        dt = obj.showWithOutProcedure("select * from tbImageCategory");
        rptCategory.DataSource = dt;
        rptCategory.DataBind();
    }

    public void databindrptImages(string cid)
    {
        if (cid == "0")
        {
            dt = obj.showWithOutProcedure("select simgPath,limgPath,imageTitle from tbGalleryImageRecord where cid not in ('-1','-2') order by cid");
        }
        else
        {
            dt = obj.showWithOutProcedure("select simgPath,limgPath,imageTitle from tbGalleryImageRecord where cid='" + cid + "'");
        }
        rptImages.DataSource = dt;
        rptImages.DataBind();
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        obj = new Class1();
        if (!IsPostBack)
        {
            databindCategoryRecord();
            databindrptImages("0");
        }
    }



    protected void rptCategory_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        string id = e.CommandArgument.ToString();
        databindrptImages(id);
    }

    protected void linkAll_Click(object sender, EventArgs e)
    {
        databindrptImages("0");
    }
}