using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class news : System.Web.UI.Page
{
    string pth;
    DataTable dt;
    Class1 obj;

    public void databindrptFiles()
    {
        dt = obj.showWithOutProcedure("select * from tbNewsRecord Where type in ('1','2') order by nid desc");
        grdNewsEventsRecord.DataSource = dt;
        grdNewsEventsRecord.DataBind();

        int i = 0,j = 0;
        foreach(GridViewRow row in grdNewsEventsRecord.Rows)
        {
            Label typeId = (Label)row.FindControl("lblType");
            Image icon = (Image)row.FindControl("imgLogoIcon");
            string news = "~/StaticImages/Icons/News/logo1.png";
            string events = "~/StaticImages/Icons/Events/logo1.png";
            if (typeId.Text == "1")
            {
                j++;
                if (j == 2){news = "~/StaticImages/Icons/News/logo2.png"; }
                if (j == 3) { news = "~/StaticImages/Icons/News/logo3.png"; }
                if (j == 4) { news = "~/StaticImages/Icons/News/logo4.png"; }
                if (j == 5) { news = "~/StaticImages/Icons/News/logo5.png"; }
                if (j == 6) { news = "~/StaticImages/Icons/News/logo6.png"; }

                icon.ImageUrl = news;
            }
            else
            {
                i++;
                if (i == 2) { events = "~/StaticImages/Icons/Events/logo2.png"; }
                if (i == 3) { events = "~/StaticImages/Icons/Events/logo3.png"; }
                if (i == 4) { events = "~/StaticImages/Icons/Events/logo4.png"; }
                if (i == 5) { events = "~/StaticImages/Icons/Events/logo5.png"; }
                if (i == 5) { events = "~/StaticImages/Icons/Events/logo6.png"; }
                icon.ImageUrl = events;
            }
            if (i == 6)
            {
                i = 0;
            }
            if (j == 6)
            {
                j = 0;
            }
        }
        //rptDownloadsRecord.DataSource = dt;
        //rptDownloadsRecord.DataBind();
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