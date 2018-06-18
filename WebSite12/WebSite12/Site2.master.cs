using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Site2 : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] != null)
        {
            Label1.Visible = true;
            Label2.Text = Session["UserName"].ToString();

            lnkLogin.Visible = false;
            lnkReg.Visible = false;
            lnkAdLog.Visible = true;
            lnkLogout.Visible = true;
            lnkCart.Visible = true;
            lnkWishlist.Visible = true;
        }
        else
        {
            Label1.Visible = false;
            Label2.Visible = false;
            lnkLogout.Visible = false;
            lnkCart.Visible = false;
            lnkWishlist.Visible = false;
            lnkLogin.Visible = true;
            lnkReg.Visible = true;
        }
    }







}
