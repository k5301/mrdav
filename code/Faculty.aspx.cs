using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Faculty : System.Web.UI.Page
{
    string pth;
    DataTable dt;
    Class1 obj;

    public void databindgrdMbaRecord()
    {
        dt = obj.showWithOutProcedure("select *  from tbFacultyRecord where courseId = '1'");
        grdMBAFaculty.DataSource = dt;
        grdMBAFaculty.DataBind();
    }

    public void databindgrdMcaRecord()
    {
        dt = obj.showWithOutProcedure("select *  from tbFacultyRecord where courseId = '2'");
        grdMCAFaculty.DataSource = dt;
        grdMCAFaculty.DataBind();
    }

    public void databindgrdBbaRecord()
    {
        dt = obj.showWithOutProcedure("select *  from tbFacultyRecord where courseId = '3'");
        grdBBAFaculty.DataSource = dt;
        grdBBAFaculty.DataBind();
    }

    public void databindrptVF()
    {
        dt = obj.showWithOutProcedure("select *  from tbFacultyRecord where courseId = '4'");
        rptVisitingFaculty.DataSource = dt;
        rptVisitingFaculty.DataBind();
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        obj = new Class1();
        if (!IsPostBack)
        {
            databindgrdMbaRecord();
            databindgrdMcaRecord();
            databindgrdBbaRecord();
            databindrptVF();
        }
    }
}