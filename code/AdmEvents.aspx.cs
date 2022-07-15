using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdmEvents : System.Web.UI.Page
{
    string pth;
    DataTable dt;
    Class1 obj;
    public void databindNewsRecord()
    {
        dt = obj.showWithOutProcedure("select * from tbNewsRecord where type='2' order by nid desc");
        grdNews.DataSource = dt;
        grdNews.DataBind();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        obj = new Class1();
        databindNewsRecord();
    }
    protected void grdNews_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string id = grdNews.DataKeys[e.RowIndex].Value.ToString();
        obj.queryWithOutProcedure("delete from tbNewsRecord where nid='" + id + "'");
        databindNewsRecord();
    }
    protected void btnUpload_Click(object sender, EventArgs e)
    {
        pth = DateTime.Now.ToLongDateString() + ", " + DateTime.Today.DayOfWeek.ToString() + " " + DateTime.Now.ToShortTimeString();
        obj.queryWithOutProcedure("insert into tbNewsRecord values('" + txtHead.Text + "','" + txtNewsDetail.Text + "','" + pth + "','2')");
        txtHead.Text = "";
        txtNewsDetail.Text = "";
        databindNewsRecord();
    }
    protected void newsRecord_Click(object sender, EventArgs e)
    {
        un.Visible = false;
        //hpl.Visible = false;
        grdNews.Columns[0].Visible = false;
        grdNews.Columns[1].Visible = true;
        databindNewsRecord();
    }
    protected void uploadNews_Click(object sender, EventArgs e)
    {
        un.Visible = true;
        //hpl.Visible = false;
        grdNews.Columns[0].Visible = false;
        grdNews.Columns[1].Visible = true;
    }
    protected void deleteNews_Click(object sender, EventArgs e)
    {
        un.Visible = false;
        //hpl.Visible = false;
        grdNews.Columns[1].Visible = false;
        grdNews.Columns[0].Visible = true;
    }
    protected void homepage_Click(object sender, EventArgs e)
    {
        un.Visible = false;
        //hpl.Visible = true;
        grdNews.Columns[0].Visible = false;
        grdNews.Columns[1].Visible = true;
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdmNews.aspx");
    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdmNotice.aspx");
    }
}