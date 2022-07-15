using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdmBanner : System.Web.UI.Page
{
    string pth;
    DataTable dt;
    Class1 obj;

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnModifyBannerImage_Click(object sender, EventArgs e)
    {
        lblBannerName.Text = "";
        lblError.Visible = false;
        lblpthBanner.Text = "";
        divUploadBanner.Visible = true;
        divImageBanner.Visible = Visible = false;
        txtHead.Text = "";
        Response.Redirect("AdmBanner.aspx");
    }

    protected void btnChangeBannerImage_Click(object sender, EventArgs e)
    {
        lblError.Visible = false;
        var filepath = Server.MapPath(lblpthBanner.Text);
        if (File.Exists(filepath))
        {
            File.Delete(filepath);
            lblpthBanner.Text = "";
            lblBannerName.Text = "";
        }
        divUploadBanner.Visible = true;
        divImageBanner.Visible = false;

    }

    protected void btnUploadBannerImage_Click(object sender, EventArgs e)
    {
        lblError.Visible = false;
        string var = Guid.NewGuid().ToString().Substring(0, 6);
        if (txtHead.Text!="1" && txtHead.Text != "2" && txtHead.Text != "3" && txtHead.Text != "4" && txtHead.Text != "5")
        {
            lblError.Text = "ERROR: Choose The Correct Index";
            lblError.Visible = true;
            return;
        }

        var postedFileExtension = Path.GetExtension(bannerImg.FileName);
        if (postedFileExtension != ".jpg")
        {
            lblError.Text = "ERROR: Choose The Correct Format of the File i.e. jpg";
            lblError.Visible = true;
            return;
        }
        //pth = "~//DynamicImages//GalleryRecord//SmallImages//" + var + smallImg.FileName;
        lblBannerName.Text = "BannerImage" + txtHead.Text + ".jpg";
        pth = "~//DynamicImages//ImageRecord//BannerImage//" + lblBannerName.Text;
        lblpthBanner.Text = pth;
        var filepath = Server.MapPath(lblpthBanner.Text);
        if (File.Exists(filepath))
        {
            File.Delete(filepath);
        }

        bannerImg.PostedFile.SaveAs(Server.MapPath(pth));
        bImg.ImageUrl = pth;
        divImageBanner.Visible = true;
        divUploadBanner.Visible = false;

    }

    protected void bannerRecord_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdmBanner.aspx");
    }

    protected void personRecord_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdmPerson.aspx");
    }

    protected void facilitiesRecord_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdmFacilities.aspx");
    }
}