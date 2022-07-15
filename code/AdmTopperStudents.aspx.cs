using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdmTopperStudents : System.Web.UI.Page
{
    string pth;
    DataTable dt;
    Class1 obj;
    
    public void databindrptImages()
    {
        dt = obj.showWithOutProcedure("select simgPath,limgPath,imageTitle,imageName from tbGalleryImageRecord where cid='-1' order by imgId desc");
        rptImages.DataSource = dt;
        rptImages.DataBind();
    }
    public void databindImageRecord()
    {
        
       dt = obj.showWithOutProcedure("select imgId,simgPath,limgPath,imageTitle,imageName from tbGalleryImageRecord where cid='-1' order by imgId desc");
            
        grdTopperRecord.DataSource = dt;
        grdTopperRecord.DataBind();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        obj = new Class1();
        if (!IsPostBack)
        {
            databindrptImages();
        }
    }
   
    protected void btnUploadSmallImage_Click(object sender, EventArgs e)
    {
        lblError.Visible = false;
        string var = Guid.NewGuid().ToString().Substring(0, 6);

        pth = "~//DynamicImages//Others//SmallImages//" + var + smallImg.FileName;

        //pth = "~//DynamicImages//GalleryRecord//SmallImages//gallry1.gif";

        smallImg.PostedFile.SaveAs(Server.MapPath(pth));
        sImg.ImageUrl = pth;
        lblpthS.Text = pth;
        divImageS.Visible = true;
        divUploadS.Visible = false;

    }

    protected void btnChangeS_Click(object sender, EventArgs e)
    {
        var filepath = Server.MapPath(lblpthS.Text);
        if (File.Exists(filepath))
        {
            File.Delete(filepath);
            lblpthS.Text = "";
        }
        divUploadS.Visible = true;
        divImageS.Visible = false;

    }

    protected void btnUploadLargeImage_Click(object sender, EventArgs e)
    {
        lblError.Visible = false;
        string var = Guid.NewGuid().ToString().Substring(0, 6);

        pth = "~//DynamicImages//Others//LargeImages//" + var + largeImg.FileName;

        //pth = "~//DynamicImages//GalleryRecord//SmallImages//gallry1.gif";

        largeImg.PostedFile.SaveAs(Server.MapPath(pth));
        lImg.ImageUrl = pth;
        lblpthL.Text = pth;
        divImageL.Visible = true;
        divUploadL.Visible = false;

    }

    protected void btnChangeL_Click(object sender, EventArgs e)
    {
        var filepath = Server.MapPath(lblpthL.Text);
        if (File.Exists(filepath))
        {
            File.Delete(filepath);
            lblpthL.Text = "";
        }
        divUploadL.Visible = true;
        divImageL.Visible = false;

    }

    protected void btnUploadImage_Click(object sender, EventArgs e)
    {
        lblError.Visible = false;
        //if (drpCategory.SelectedValue.ToString() == "0")
        //{
        //    lblError.Text = "Choose a Category first.";
        //    lblError.Visible = true;
        //    return;
        //    //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert", "alert('Choose a Catogry First.\r\n hello')", true);
        //    //Response.Write("<script>alert('Choose a Catogry First.\r\n hello')</script>");
        //}
        if (lblpthS.Text == "")
        {
            lblError.Text = "Choose a Small Image File First and Fire the View Button";
            lblError.Visible = true;
            return;

        }
        else if (lblpthL.Text == "")
        {
            lblError.Text = "Choose a Large Image File First and Fire the View Button";
            lblError.Visible = true;
            return;

        }
        obj.queryWithOutProcedure("insert into tbGalleryImageRecord values('" + lblpthS.Text + "','" + lblpthL.Text + "','-1','" + txtImgTitle.Text + "','"+txtName.Text+"')");
        lblpthL.Text = "";
        lblpthS.Text = "";
        txtImgTitle.Text = "";
        divImageL.Visible = false;
        divImageS.Visible = false;
        divUploadL.Visible = true;
        divUploadS.Visible = true;
        sImg.ImageUrl = "";
        lImg.ImageUrl = "";
        txtName.Text = "";
        databindrptImages();
    }


    protected void grdTopperRecord_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string id = grdTopperRecord.DataKeys[e.RowIndex].Value.ToString();
        GridViewRow row = grdTopperRecord.Rows[e.RowIndex];
        Label simgPath = (Label)row.FindControl("lblsimgPath");
        Label limgPath = (Label)row.FindControl("lbllimgPath");

        var filepath = Server.MapPath(simgPath.Text);
        if (File.Exists(filepath))
        {
            File.Delete(filepath);
        }
        filepath = Server.MapPath(limgPath.Text);
        if (File.Exists(filepath))
        {
            File.Delete(filepath);
        }
        obj.queryWithOutProcedure("delete from tbGalleryImageRecord where imgId='" + id + "'");
        databindImageRecord();
    }


    protected void galleryRecord_Click(object sender, EventArgs e)
    {
        divRR.Visible = false;
        divAR.Visible = false;
        divTR.Visible = true;
        databindrptImages();
    }

    protected void addTRecord_Click(object sender, EventArgs e)
    {
        divRR.Visible = false;
        divAR.Visible = true;
        divTR.Visible = true;
        databindrptImages();

    }

    protected void removeTRecord_Click(object sender, EventArgs e)
    {
        divRR.Visible = true;
        databindImageRecord();
        divAR.Visible = false;
        divTR.Visible = false;

    }
}