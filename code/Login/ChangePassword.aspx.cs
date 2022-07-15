using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Login_ChangePassword : System.Web.UI.Page
{
    Class1 obj = new Class1();
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        try
        {
            if (txtId.Text.Equals("") || txtPass.Text.Equals(""))
            {
                Response.Write("<script>alert('Enter Username and Password')</script>");
            }
            else
            {
                //int x = obj.check("select count(*) from tbLogin where Username='" + txtId.Text + "' and Password='" + txtPass.Text + "'");
                //obj.insert("update tbLogin set password='" + txtNewPassword.Text + "' where Username='" + txtId.Text + "' and Password='" + txtPass.Text + "' ");
                //obj.insert("update tbBranchLogin set password='" + txtNewPassword.Text + "' where Username='" + txtId.Text + "' and Password='" + txtPass.Text + "'");
                //Response.Redirect("AdminLogin.aspx");
                
            }
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('" + ex.Message + "')</script>");
        }
    }
}