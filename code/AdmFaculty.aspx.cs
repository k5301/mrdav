using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdmFaculty : System.Web.UI.Page
{
    string pth;
    DataTable dt;
    Class1 obj;
    public void databindSelectCourse()
    {
        dt = obj.showWithOutProcedure("Select 0 as courseId,' All' as courseName union select * from tbCourse");
        drpCourse.DataSource = dt;
        drpCourse.DataTextField = "courseName";
        drpCourse.DataValueField = "courseId";
        drpCourse.DataBind();
    }

    public void databindFacultyRecord()
    {
        grdFaculty.Columns[7].Visible = false;
        txtDesignation.Visible = true;
        txtDesignation2.Visible = true;
        if (drpCourse.SelectedValue.ToString() == "0")
        {
            grdFaculty.Columns[7].Visible = true;
            dt = obj.showWithOutProcedure("select A.facultyId,A.facultyName,A.facultyDesignation,A.facultyQualifications,B.courseName from tbCourse B,tbFacultyRecord A where A.courseId=B.courseId and B.courseId <> '4' order by A.courseId");
        }
        else if (drpCourse.SelectedValue.ToString() == "4")
        {
            txtDesignation.Visible = false;
            txtDesignation2.Visible = false;
            grdFaculty.Columns[5].Visible = false;
            dt = obj.showWithOutProcedure("select A.facultyId,A.facultyName,A.facultyDesignation,A.facultyQualifications,B.courseName from tbCourse B,tbFacultyRecord A where A.courseId=B.courseId and B.courseId = '4'");
        }
        else
        {
            dt = obj.showWithOutProcedure("select A.facultyId,A.facultyName,A.facultyDesignation,A.facultyQualifications,B.courseName from tbCourse B,tbFacultyRecord A where A.courseId=B.courseId and B.courseId='"+drpCourse.SelectedValue.ToString()+"'");
        }
        grdFaculty.DataSource = dt;
        grdFaculty.DataBind();
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        obj = new Class1();
        if (!IsPostBack)
        {
            databindSelectCourse();
            databindFacultyRecord();
        }
    }

    protected void drpCourse_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (divMf.Visible == true)
        {
            lblfacultyId2.Text = "";
            txtDesignation2.Text = "";
            txtName2.Text = "";
            txtQualification2.Text = "";
            divMf.Visible = false;
        }
        lblError.Visible = false;
        databindFacultyRecord();
    }

    protected void grdFaculty_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string id = grdFaculty.DataKeys[e.RowIndex].Value.ToString();
        obj.queryWithOutProcedure("delete from tbFacultyRecord where facultyId='" + id + "'");
        databindFacultyRecord();
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        lblError.Visible = false;
        if (drpCourse.SelectedValue.ToString() == "0")
        {
            lblError.Text = "ERROR: Choose The CourseType For this Faculty First";
            lblError.Visible = true;
            return;
        }
        obj.queryWithOutProcedure("insert into tbFacultyRecord values('" + txtName.Text + "','" + txtDesignation.Text + "','" + txtQualification.Text + "','" + drpCourse.SelectedValue.ToString() + "')");
        txtName.Text = "";
        txtDesignation.Text = "";
        txtQualification.Text = "";
        databindFacultyRecord();
    }

    protected void facultyRecord_Click(object sender, EventArgs e)
    {
        divUf.Visible = false;
        divMf.Visible = false;
        grdFaculty.Columns[0].Visible = false;
        grdFaculty.Columns[1].Visible = false;
    }

    protected void AddFaculty_Click(object sender, EventArgs e)
    {
        divUf.Visible = true;
        divMf.Visible = false;
        grdFaculty.Columns[0].Visible = false;
        grdFaculty.Columns[1].Visible = false;

    }

    protected void updateFaculty_Click(object sender, EventArgs e)
    {
        divUf.Visible = false;
        divMf.Visible = false;
        grdFaculty.Columns[0].Visible = false;
        grdFaculty.Columns[1].Visible = true;

    }

    protected void deleteFaculty_Click(object sender, EventArgs e)
    {
        divUf.Visible = false;
        divMf.Visible = false;
        grdFaculty.Columns[0].Visible = true;
        grdFaculty.Columns[1].Visible = false;

    }

    protected void grdFaculty_RowEditing(object sender, GridViewEditEventArgs e)
    {
        divMf.Visible = true;
        GridViewRow row = grdFaculty.Rows[e.NewEditIndex];
        Label facultyId = (Label)row.FindControl("lblfacultyId");
        lblfacultyId2.Text = facultyId.Text;
        Label facultyName = (Label)row.FindControl("lblName");
        txtName2.Text = facultyName.Text;
        Label facultyDesignation = (Label)row.FindControl("lblDesignation");
        txtDesignation2.Text = facultyDesignation.Text;
        Label facultyQualification = (Label)row.FindControl("lblQualification");
        txtQualification2.Text = facultyQualification.Text;
    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        obj.queryWithOutProcedure("update tbFacultyRecord set facultyName = '" + txtName2.Text + "', facultyDesignation = '"+txtDesignation2.Text+"', facultyQualifications='"+txtQualification2.Text+"' where facultyId = '" + lblfacultyId2.Text + "'");
        databindFacultyRecord();
        lblfacultyId2.Text = "";
        txtDesignation2.Text = "";
        txtName2.Text = "";
        txtQualification2.Text = "";
        divMf.Visible = false;
    }
}