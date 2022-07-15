using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class customer : System.Web.UI.MasterPage
{
    string pth;
    DataTable dt;
    Class1 obj;
    public void databindrptNewsHead()
    {
        dt = obj.showWithOutProcedure("select top 2 * from tbNewsRecord where type='1' order by nid desc");
        rptNews.DataSource = dt;
        rptNews.DataBind();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        obj = new Class1();
        databindrptNewsHead();
    }
}
