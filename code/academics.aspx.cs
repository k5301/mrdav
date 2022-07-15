using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class academics : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void mba1_Click(object sender, EventArgs e)
    {
        if (lbl1.Text == "0"){lbl1.Text = "1";div1.Visible = true;}
        else{lbl1.Text = "0";div1.Visible = false;}
    }

    protected void mba2_Click(object sender, EventArgs e)
    {
        if (lbl2.Text == "0") { lbl2.Text = "1"; div2.Visible = true; }
        else { lbl2.Text = "0"; div2.Visible = false; }
    }

    protected void mba3_Click(object sender, EventArgs e)
    {
        if (lbl3.Text == "0") { lbl3.Text = "1"; div3.Visible = true; }
        else { lbl3.Text = "0"; div3.Visible = false; }
    }

    protected void mba4_Click(object sender, EventArgs e)
    {
        if (lbl4.Text == "0") { lbl4.Text = "1"; div4.Visible = true; }
        else { lbl4.Text = "0"; div4.Visible = false; }
    }

    protected void mba5_Click(object sender, EventArgs e)
    {
        if (lbl5.Text == "0") { lbl5.Text = "1"; div5.Visible = true; }
        else { lbl5.Text = "0"; div5.Visible = false; }
    }

    protected void mba6_Click(object sender, EventArgs e)
    {
        if (lbl6.Text == "0") { lbl6.Text = "1"; div6.Visible = true; }
        else { lbl6.Text = "0"; div6.Visible = false; }
    }

    protected void mba7_Click(object sender, EventArgs e)
    {
        if (lbl7.Text == "0") { lbl7.Text = "1"; div7.Visible = true; }
        else { lbl7.Text = "0"; div7.Visible = false; }
    }

    protected void mba8_Click(object sender, EventArgs e)
    {
        if (lbl8.Text == "0") { lbl8.Text = "1"; div8.Visible = true; }
        else { lbl8.Text = "0"; div8.Visible = false; }
    }

    protected void mba9_Click(object sender, EventArgs e)
    {
        if (lbl9.Text == "0") { lbl9.Text = "1"; div9.Visible = true; }
        else { lbl9.Text = "0"; div9.Visible = false; }
    }

    //protected void mba10_Click(object sender, EventArgs e)
    //{
    //    if (lbl10.Text == "0") { lbl10.Text = "1"; div10.Visible = true; }
    //    else { lbl10.Text = "0"; div10.Visible = false; }
    //}

    //protected void mba11_Click(object sender, EventArgs e)
    //{
    //    if (lbl11.Text == "0") { lbl11.Text = "1"; div11.Visible = true; }
    //    else { lbl11.Text = "0"; div11.Visible = false; }
    //}

    //protected void mba12_Click(object sender, EventArgs e)
    //{
    //    if (lbl12.Text == "0") { lbl12.Text = "1"; div12.Visible = true; }
    //    else { lbl12.Text = "0"; div12.Visible = false; }
    //}

    //protected void mba13_Click(object sender, EventArgs e)
    //{
    //    if (lbl13.Text == "0") { lbl13.Text = "1"; div13.Visible = true; }
    //    else { lbl13.Text = "0"; div13.Visible = false; }
    //}

    //protected void mba14_Click(object sender, EventArgs e)
    //{
    //    if (lbl14.Text == "0") { lbl14.Text = "1"; div14.Visible = true; }
    //    else { lbl14.Text = "0"; div14.Visible = false; }
    //}

    protected void mca1_Click(object sender, EventArgs e)
    {
        if (Label1.Text == "0") { Label1.Text = "1"; div15.Visible = true; }
        else { Label1.Text = "0"; div15.Visible = false; }
    }

    protected void mca2_Click(object sender, EventArgs e)
    {
        if (Label2.Text == "0") { Label2.Text = "1"; div16.Visible = true; }
        else { Label2.Text = "0"; div16.Visible = false; }
    }
    protected void mca3_Click(object sender, EventArgs e)
    {
        if (Label3.Text == "0") { Label3.Text = "1"; div17.Visible = true; }
        else { Label3.Text = "0"; div17.Visible = false; }
    }
    protected void mca4_Click(object sender, EventArgs e)
    {
        if (Label4.Text == "0") { Label4.Text = "1"; div18.Visible = true; }
        else { Label4.Text = "0"; div18.Visible = false; }
    }
    protected void mca5_Click(object sender, EventArgs e)
    {
        if (Label5.Text == "0") { Label5.Text = "1"; div19.Visible = true; }
        else { Label5.Text = "0"; div19.Visible = false; }
    }
    protected void mca6_Click(object sender, EventArgs e)
    {
        if (Label6.Text == "0") { Label6.Text = "1"; div20.Visible = true; }
        else { Label6.Text = "0"; div20.Visible = false; }
    }
}