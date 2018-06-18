using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Site1 : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] == null)
        {
            Label1.Visible = false;
            Label2.Visible = false;
            lnkLogout.Visible = false;
            
        }
        else {
            Label2.Text = Session["UserName"].ToString();

        }
    }
}
