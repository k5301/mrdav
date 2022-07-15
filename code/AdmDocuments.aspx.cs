using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdmDocuments : System.Web.UI.Page
{
    string pth;
    DataTable dt;
    Class1 obj;

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnUploadAF_Click(object sender, EventArgs e)
    {
        lblErrorAF.Visible = false;
        string var = Guid.NewGuid().ToString().Substring(0, 6);
        var postedFileExtension = Path.GetExtension(applicationForm1.FileName);
        if (postedFileExtension != ".pdf")
        {
            lblErrorAF.Text = "ERROR: Choose The Correct Format of the File i.e. pdf";
            lblErrorAF.Visible = true;
            return;
        }

        lblAFname.Text = "Application form.pdf";

        pth = "~//DownloadableFiles//Documents//" + lblAFname.Text;
        lblAFpth.Text = pth;
        var filepath = Server.MapPath(lblAFpth.Text);
        if (File.Exists(filepath))
        {
            File.Delete(filepath);
        }

        applicationForm1.PostedFile.SaveAs(Server.MapPath(pth));
    }

    protected void btnUploadP_Click(object sender, EventArgs e)
    {
        lblErrorP.Visible = false;
        string var = Guid.NewGuid().ToString().Substring(0, 6);
        var postedFileExtension = Path.GetExtension(prospectus1.FileName);
        if (postedFileExtension != ".pdf")
        {
            lblErrorP.Text = "ERROR: Choose The Correct Format of the File i.e. pdf";
            lblErrorP.Visible = true;
            return;
        }

        lblPName.Text = "Prospectus.pdf";

        pth = "~//DownloadableFiles//Documents//" + lblPName.Text;
        lblPpth.Text = pth;
        var filepath = Server.MapPath(lblPpth.Text);
        if (File.Exists(filepath))
        {
            File.Delete(filepath);
        }

        prospectus1.PostedFile.SaveAs(Server.MapPath(pth));

    }

    protected void btnUploadMD_Click(object sender, EventArgs e)
    {
        lblErrorMD.Visible = false;
        string var = Guid.NewGuid().ToString().Substring(0, 6);
        var postedFileExtension = Path.GetExtension(mandatoryDisclosure1.FileName);
        if (postedFileExtension != ".pdf")
        {
            lblErrorMD.Text = "ERROR: Choose The Correct Format of the File i.e. pdf";
            lblErrorMD.Visible = true;
            return;
        }
        lblMDName.Text = "AICTE Mandatory Disclosure.pdf";

        pth = "~//DownloadableFiles//Documents//" + lblMDName.Text;
        lblMDpth.Text = pth;
        var filepath = Server.MapPath(lblMDpth.Text);
        if (File.Exists(filepath))
        {
            File.Delete(filepath);
        }

        mandatoryDisclosure1.PostedFile.SaveAs(Server.MapPath(pth));
    }


    protected void applicationForm_Click(object sender, EventArgs e)
    {
        lblErrorAF.Visible = false;
        divAP.Visible = true;
        divP.Visible = false;
        divMD.Visible = false;
    }

    protected void prospectus_Click(object sender, EventArgs e)
    {
        lblErrorP.Visible = false;
        divAP.Visible = false;
        divP.Visible = true;
        divMD.Visible = false;
    }

    protected void mandatoryDisclosure_Click(object sender, EventArgs e)
    {
        lblErrorMD.Visible = false;
        divAP.Visible = false;
        divP.Visible = false;
        divMD.Visible = true;
    }
}