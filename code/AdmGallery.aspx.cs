using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdmGallery : System.Web.UI.Page
{
    string pth;
    DataTable dt;
    Class1 obj;
    
    public void databindSelectCategory()
    {
        dt = obj.showWithOutProcedure("select 0 as cid,' All' as ctitle union select * from tbImageCategory");
        drpCategory.DataSource = dt;
        drpCategory.DataTextField = "ctitle";
        drpCategory.DataValueField = "cid";
        drpCategory.DataBind();
    }

    public void databindrptImages()
    {
        if (drpCategory.SelectedValue.ToString() == "0")
        {
            dt = obj.showWithOutProcedure("select simgPath,limgPath,imageTitle from tbGalleryImageRecord where cid not in ('-1','-2') order by cid");
        }
        else
        {
            dt = obj.showWithOutProcedure("select simgPath,limgPath,imageTitle from tbGalleryImageRecord where cid='"+drpCategory.SelectedValue.ToString()+"'");
        }
        rptImages.DataSource = dt;
        rptImages.DataBind();
    }
    public void databindCategoryRecord()
    {
        dt = obj.showWithOutProcedure("select * from tbImageCategory");
        grdCategory.DataSource = dt;
        grdCategory.DataBind();
    }
    public void databindImageRecord()
    {
        if (drpCategory.SelectedValue.ToString() == "0")
        {
            dt = obj.showWithOutProcedure("select A.imgId,A.simgPath,A.limgPath,A.imageTitle,B.ctitle,A.cid from tbGalleryImageRecord A,tbImageCategory B where A.cid=B.cid order by A.cid");

        }
        else
        {
            dt = obj.showWithOutProcedure("select A.imgId,A.simgPath,A.limgPath,A.imageTitle,B.ctitle,A.cid from tbGalleryImageRecord A,tbImageCategory B where A.cid=B.cid and A.cid='" + drpCategory.SelectedValue.ToString()+"' order by A.cid");

        }
        grdImageRecord.DataSource = dt;
        grdImageRecord.DataBind();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        obj = new Class1();
        if (!IsPostBack)
        {
            databindSelectCategory();
            databindrptImages();   
        }
        
    }
    protected void galleryRecord_Click(object sender, EventArgs e)
    {
        gr.Visible = true;
        reptr.Visible = true;
        ui.Visible = false;
        di.Visible = false;
        Cgrd.Visible = false;
        ac.Visible = false;
        databindrptImages();
    }

    protected void uploadImage_Click(object sender, EventArgs e)
    {
        lblError.Visible = false;
        gr.Visible = true;
        mcr.Visible = false;
        reptr.Visible = true;
        ui.Visible = true;
        di.Visible = false;
        Cgrd.Visible = false;
        ac.Visible = false;
        databindSelectCategory();
        databindrptImages();

    }

    protected void deleteImages_Click(object sender, EventArgs e)
    {
        gr.Visible = true;
        reptr.Visible = false;
        mcr.Visible = false;
        ui.Visible = false;
        di.Visible = true;
        Cgrd.Visible = false;
        ac.Visible = false;
        databindImageRecord();
    }

    protected void addCategory_Click(object sender, EventArgs e)
    {
        gr.Visible = false;
        ui.Visible = false;
        mcr.Visible = false;
        di.Visible = false;
        Cgrd.Visible = true;
        ac.Visible = true;
        databindCategoryRecord();
        grdCategory.Columns[0].Visible = false;
        grdCategory.Columns[1].Visible = false;
    }

    protected void removeCategory_Click(object sender, EventArgs e)
    {
        gr.Visible = false;
        ui.Visible = false;
        mcr.Visible = false;
        di.Visible = false;
        Cgrd.Visible = true;
        ac.Visible = false;
        databindCategoryRecord();
        grdCategory.Columns[0].Visible = true;
        grdCategory.Columns[1].Visible = false;

    }

    protected void btnAddCategory_Click(object sender, EventArgs e)
    {
        obj.queryWithOutProcedure("insert into tbImageCategory values('" + txtCtitle.Text + "')");
        txtCtitle.Text = "";
        databindCategoryRecord();
    }

    protected void grdCategory_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string id = grdCategory.DataKeys[e.RowIndex].Value.ToString();
        databindImageRecord();
        foreach(GridViewRow row in grdImageRecord.Rows)
        {
            Label cid = (Label)row.FindControl("lblcid");
            if (cid.Text == id)
            {
                Label imgId = (Label)row.FindControl("lblimgId");
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
            }
        }
        obj.queryWithOutProcedure("delete from tbGalleryImageRecord where cid = '" + id + "'");
        obj.queryWithOutProcedure("delete from tbImageCategory where cid='" + id + "'");

        databindCategoryRecord();
    }


    protected void btnUploadSmallImage_Click(object sender, EventArgs e)
    {
        lblError.Visible = false;
        string var = Guid.NewGuid().ToString().Substring(0, 6);

        pth = "~//DynamicImages//GalleryRecord//SmallImages//" + var + smallImg.FileName;

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

        pth = "~//DynamicImages//GalleryRecord//LargeImages//" + var + largeImg.FileName;

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

    protected void drpCategory_SelectedIndexChanged(object sender, EventArgs e)
    {
        lblError.Visible = false;
        databindrptImages();
        if (di.Visible == true)
        {
            databindImageRecord();
        }
    }

    protected void btnUploadImage_Click(object sender, EventArgs e)
    {
        lblError.Visible = false;
        if (drpCategory.SelectedValue.ToString() == "0")
        {
            lblError.Text = "Choose a Category first.";
            lblError.Visible = true;
            return;
            //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert", "alert('Choose a Catogry First.\r\n hello')", true);
            //Response.Write("<script>alert('Choose a Catogry First.\r\n hello')</script>");
        }
        else if (lblpthS.Text == "")
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
        obj.queryWithOutProcedure("insert into tbGalleryImageRecord values('" + lblpthS.Text + "','" + lblpthL.Text + "','" + drpCategory.SelectedValue.ToString() + "','"+txtImgTitle.Text+"','GalleryImage')");
        lblpthL.Text = "";
        lblpthS.Text = "";
        txtImgTitle.Text = "";
        divImageL.Visible = false;
        divImageS.Visible = false;
        divUploadL.Visible = true;
        divUploadS.Visible = true;
        sImg.ImageUrl = "";
        lImg.ImageUrl = "";
        databindrptImages();
    }

    protected void grdImageRecord_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string id = grdImageRecord.DataKeys[e.RowIndex].Value.ToString();
        GridViewRow row = grdImageRecord.Rows[e.RowIndex];
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

    protected void ModifyCategory_Click(object sender, EventArgs e)
    {
        gr.Visible = false;
        ui.Visible = false;
        di.Visible = false;
        Cgrd.Visible = true;
        ac.Visible = false;
        mcr.Visible = true;
        databindCategoryRecord();
        grdCategory.Columns[0].Visible = false;
        grdCategory.Columns[1].Visible = true;
    }

    protected void grdCategory_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridViewRow row = grdCategory.Rows[e.NewEditIndex];
        Label cid = (Label)row.FindControl("lblcid");
        lblCid.Text = cid.Text;
        Label title = (Label)row.FindControl("lblctitle");
        txtTitle.Text = title.Text;
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        obj.queryWithOutProcedure("update tbImageCategory set ctitle = '"+txtTitle.Text+"' where cid = '"+lblCid.Text+"'");
        databindCategoryRecord();
        txtTitle.Text = "";
        lblCid.Text = "";
    }
}