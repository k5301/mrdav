using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdmResults : System.Web.UI.Page
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
    public void databindFilesRecord()
    {
        dt = obj.showWithOutProcedure("select * from tbDownloadableFiles Where typeId='2' order by downloadId desc");
        grdDownloadableRecord.DataSource = dt;
        grdDownloadableRecord.DataBind();
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        obj = new Class1();
        if (!IsPostBack)
        {
            databindrptFiles();
        }
    }

    protected void resultsRecord_Click(object sender, EventArgs e)
    {
        divDr.Visible = true;
        divDFile.Visible = false;
        divUfile.Visible = false;
    }

    protected void uploadFile_Click(object sender, EventArgs e)
    {
        divDr.Visible = true;
        divDFile.Visible = false;
        divUfile.Visible = true;

    }

    protected void deleteFile_Click(object sender, EventArgs e)
    {
        divDr.Visible = false;
        divDFile.Visible = true;
        divUfile.Visible = false;
        databindFilesRecord();

    }

    protected void btnUpload_Click(object sender, EventArgs e)
    {
        string var = Guid.NewGuid().ToString().Substring(0, 6);

        pth = "~//DownloadableFiles//UploadedFiles//ForResults//" + var + FileUpload1.FileName;

        FileUpload1.PostedFile.SaveAs(Server.MapPath(pth));
        lblpth.Text = pth;

        var postedFileExtension = Path.GetExtension(FileUpload1.FileName);
        if (postedFileExtension != ".xls")
        {
            lblIconPath.Text = "StaticImages/pdflogo.png";
        }
        else
        {
            lblIconPath.Text = "StaticImages/excelIconLogo.jpg";
        }
        string dtime = DateTime.Now.ToLongDateString() + ", " + DateTime.Today.DayOfWeek.ToString() + " " + DateTime.Now.ToShortTimeString();

        obj.queryWithOutProcedure("insert into tbDownloadableFiles values('" + lblIconPath.Text + "','" + txtDescription.Text + "','" + lblpth.Text + "','" + dtime + "','2')");
        lblIconPath.Text = "";
        txtDescription.Text = "";
        lblpth.Text = "";
        databindrptFiles();


    }

    protected void grdDownloadableRecord_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string id = grdDownloadableRecord.DataKeys[e.RowIndex].Value.ToString();
        GridViewRow row = grdDownloadableRecord.Rows[e.RowIndex];
        Label lblPath = (Label)row.FindControl("lbldownloadFilePath");

        var filepath = Server.MapPath(lblPath.Text);
        if (File.Exists(filepath))
        {
            File.Delete(filepath);
        }

        obj.queryWithOutProcedure("delete from tbDownloadableFiles where downloadId='" + id + "'");
        databindFilesRecord();
    }
}