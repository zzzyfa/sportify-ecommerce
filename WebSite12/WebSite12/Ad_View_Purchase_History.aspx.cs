using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



    public partial class Ad_View_Purchase_History : System.Web.UI.Page
    {
        private static SqlConnection connection;
        private static SqlCommand command;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] == null)
        {
            Response.Redirect("Ad_Log.aspx");
        }
    }

    //protected void Button1_Click1(object sender, EventArgs e)
    //{
    //    string confirmValue = Request.Form["confirm_value"];
    //    if (confirmValue == "Yes")
    //    {
    //        string connectionString = ConfigurationManager.ConnectionStrings["WAPPDBEntitiesConnectionString"].ToString(); // Makes connectionString 

    //        connection = new SqlConnection(connectionString);
    //        command = new SqlCommand("", connection);

    //        // Used for Checking database Row by row to check if ID exists //
    //        command.Connection = connection;
    //        string query = "UPDATE Transaction SET DeliveryStatus = @DeliveryStatus WHERE Id = @Id ";
    //        SqlCommand cmd = new SqlCommand(query, connection);
    //        string Fulfilled = "Fulfilled";
    //        cmd.Parameters.AddWithValue("@Id", txtDeliveryID.Text.ToString());
    //        cmd.Parameters.AddWithValue("@DeliveryStatus", Fulfilled);
    //        cmd.Connection.Open(); // Open Connection to the database (refer to connection declaration above) //

    //        try
    //        {
    //            cmd.ExecuteNonQuery();
    //        }
    //        catch (Exception ex)
    //        {
    //            throw new Exception("Error " + ex.Message);
    //        }
    //        finally
    //        {
    //            Response.Redirect("Ad_Home.aspx");

    //        }

    //    }
    //    else
    //    {

    //    }




    //}


}