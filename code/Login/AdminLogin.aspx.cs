using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Net.Mail;

public partial class Login_AdminLogin : System.Web.UI.Page
{
    Class1 obj = new Class1();
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["uid"] = "";
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
                int x = obj.matchWithOutProcedure("select count(*) from tbAdmin where Username='" + txtId.Text + "' and Password='" + txtPass.Text + "'");

                if (x > 0)
                {



                    Session["uid"] = txtId.Text;
                    


                    Response.Redirect("../AdmNews.aspx");
                    
                }
                else
                {
                    Response.Write("<script>alert('Worng Username and Password')</script>");




                }
            }
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('" + ex.Message + "')</script>");
        }
    }
    protected void linkForgot_Click(object sender, EventArgs e)
    {
       // string pwd="" ;
       //DataTable dt= obj.show("select password from tbLogin where UserName='admin'");
       //if (dt.Rows.Count > 0)
       //{
       //    pwd = dt.Rows[0]["password"].ToString();
       //    gmail("iconscomputersrtk@gmail.com", pwd);

       //}

    }
    public void gmail(string email, string name)
    {
        try
        {
             
            SmtpClient smtpclient = new SmtpClient();
            MailMessage mail = new MailMessage();
            mail.IsBodyHtml = true;
            //Set the email from address of mail message -  Change this as per your settings
            MailAddress fromaddress = new MailAddress("goliathmedicare@gmail.com");
            //Set the email smtp host -  Change this as per your settings
            smtpclient.Host = "smtp.gmail.com";
            //Set the email client port -  Change this as per your settings
            smtpclient.Port = 587;
            smtpclient.EnableSsl = true;
            mail.From = fromaddress;

            // MailText = MailText.Replace("[newusername]", name.Trim());
            //MailText = MailText.Replace("[MSG]", txtMsg.Text.Trim());
            //MailText = MailText.Replace("[Phone]", txtPhone.Text.Trim());

            //Adding email id of receiver link
            mail.To.Add(email.Trim());
            //MailText = MailText.Replace("[email]", txtEmail.Text.Trim());
            //Set the email subject
            mail.Subject = ("I-CONS COMPUTERS OF EDUCATION");

            //Set the email body - Change this as per your logic
            mail.Body = "Your Password is=\n " + name + ",\n Thank you...";
            smtpclient.DeliveryMethod = SmtpDeliveryMethod.Network;
            smtpclient.Credentials = new System.Net.NetworkCredential("goliathmedicare@gmail.com", "GMCARE@123#");
            //Sending Email//
            smtpclient.Send(mail);
            Response.Write("<script>alert('Mail Sent')</script>");
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('" + ex.Message + "')</script>");
        }
    }
}