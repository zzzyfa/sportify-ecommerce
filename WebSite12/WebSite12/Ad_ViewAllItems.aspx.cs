using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Ad_ViewAllItens : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["UserName"] == null)
        {
            Response.Redirect("Ad_Log.aspx");
        }

    }



    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Ad_Update.aspx?Id=" + txtDeliveryID.Text);
    }
}