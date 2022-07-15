using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class index : System.Web.UI.Page
{
    string pth;
    DataTable dt;
    Class1 obj;

    public void databindrptNews()
    {
        dt = obj.showWithOutProcedure("select top 4 * from tbNewsRecord where type='1'  order by nid desc");
        grdNewsRecord.DataSource = dt;
        grdNewsRecord.DataBind();
        int  j = 0;
        foreach (GridViewRow row in grdNewsRecord.Rows)
        {
            Label typeId = (Label)row.FindControl("lblType");
            Image icon = (Image)row.FindControl("imgLogoIcon");
            string news = "~/StaticImages/Icons/News/logo1.png";
            
            j++;
            if (j == 2) { news = "~/StaticImages/Icons/News/logo2.png"; }
            if (j == 3) { news = "~/StaticImages/Icons/News/logo3.png"; }
            if (j == 4) { news = "~/StaticImages/Icons/News/logo4.png"; }
            if (j == 5) { news = "~/StaticImages/Icons/News/logo5.png"; }
            if (j == 6) { news = "~/StaticImages/Icons/News/logo6.png"; }

            icon.ImageUrl = news;
            
            
            if (j == 6)
            {
                j = 0;
            }
            
        }
        //rptNewsRecord.DataSource = dt;
        //rptNewsRecord.DataBind();
    }

    public void databindrptEvents()
    {
        dt = obj.showWithOutProcedure("select top 4 * from tbNewsRecord where type='2'  order by nid desc");
        grdEventsRecord.DataSource = dt;
        grdEventsRecord.DataBind();

        //rptEventRecord.DataSource = dt;
        //rptEventRecord.DataBind();
        int j = 0;
        foreach (GridViewRow row in grdEventsRecord.Rows)
        {
            Label typeId = (Label)row.FindControl("lblType");
            Image icon = (Image)row.FindControl("imgLogoIcon");
            string news = "~/StaticImages/Icons/Events/logo1.png";

            j++;
            if (j == 2) { news = "~/StaticImages/Icons/Events/logo2.png"; }
            if (j == 3) { news = "~/StaticImages/Icons/Events/logo3.png"; }
            if (j == 4) { news = "~/StaticImages/Icons/Events/logo4.png"; }
            if (j == 5) { news = "~/StaticImages/Icons/Events/logo5.png"; }
            if (j == 6) { news = "~/StaticImages/Icons/Events/logo6.png"; }

            icon.ImageUrl = news;


            if (j == 6)
            {
                j = 0;
            }

        }
    }

    public void databindrptNotice()
    {
        dt = obj.showWithOutProcedure("select top 4 * from tbNewsRecord where type='3'  order by nid desc");
        grdNoticeRecord.DataSource = dt;
        grdNoticeRecord.DataBind();
        //rptNoticeRecord.DataSource = dt;
        //rptNoticeRecord.DataBind();
        int j = 0;
        foreach (GridViewRow row in grdNoticeRecord.Rows)
        {
            Label typeId = (Label)row.FindControl("lblType");
            Image icon = (Image)row.FindControl("imgLogoIcon");
            string news = "~/StaticImages/Icons/Notice/logo1.png";

            j++;
            if (j == 2) { news = "~/StaticImages/Icons/Notice/logo2.png"; }
            if (j == 3) { news = "~/StaticImages/Icons/Notice/logo3.png"; }
            if (j == 4) { news = "~/StaticImages/Icons/Notice/logo4.png"; }
            if (j == 5) { news = "~/StaticImages/Icons/Notice/logo5.png"; }
            if (j == 6) { news = "~/StaticImages/Icons/Notice/logo6.png"; }

            icon.ImageUrl = news;


            if (j == 6)
            {
                j = 0;
            }
        }
    }

    public void databindrptDownloads()
    {
        dt = obj.showWithOutProcedure("select top 3 * from tbdownloadableFiles where typeId='1'  order by downloadId desc");
        rptDownloadsRecord.DataSource = dt;
        rptDownloadsRecord.DataBind();
    }

    public void databindrptResults()
    {
        dt = obj.showWithOutProcedure("select top 5 * from tbdownloadableFiles where typeId='2'  order by downloadId desc");
        rptResults.DataSource = dt;
        rptResults.DataBind();
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
            databindrptNews();
            databindrptEvents();
            databindrptNotice();
            databindrptDownloads();
            databindrptResults();
            databindrptTopperStudents();
            databindrptAlmuni();
        }
        
    }
}