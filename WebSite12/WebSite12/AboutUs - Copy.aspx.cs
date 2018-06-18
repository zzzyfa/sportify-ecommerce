using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AboutUs___Copy : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSend_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["WAPPDBEntitiesConnectionString"].ConnectionString);

            con.Open();
            string query = "INSERT INTO feeedback (fullName, emailAdd, message) values (@fullName, @emailAdd, @message)";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@fullName", name.Text);
            cmd.Parameters.AddWithValue("@emailAdd", email.Text);
            cmd.Parameters.AddWithValue("@message", comment.InnerText);

            cmd.ExecuteNonQuery();

            Response.Redirect("Cust_Home.aspx");
            con.Close();
            //string display = "Submited Successfully";
            //ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + display + "');", true);
        }
        catch (Exception ex)
        {
            Response.Write("Error: " + ex.ToString());
        }
    }
}