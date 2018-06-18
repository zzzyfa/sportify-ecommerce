using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



public partial class Cust_ProductDesc : System.Web.UI.Page
{
    public String custID;
    public String prodID;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if(Session["UserName"] == null)
        {
            Response.Redirect("Cust_Log.aspx");
        }
        else
        {
        custID = getUserID(Session["UserName"].ToString());
        prodID = Request.QueryString["id"].ToString();
        try
        {


            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["WAPPDBEntitiesConnectionString"].ConnectionString);

            con.Open();
            string query = "INSERT INTO Cart (customerID, productID) values (@customerID, @productID)";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@customerID", custID);
            cmd.Parameters.AddWithValue("@productID", prodID);

            cmd.ExecuteNonQuery();


            con.Close();

        }
        catch (Exception ex)
        {
            Response.Write("Error: " + ex.ToString());
        }
            //SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["WAPPDBEntitiesConnectionString"].ConnectionString);
            //con.Open();
            //custID = getUserID(Session["UserName"].ToString());
            //prodID = Request.QueryString["id"].ToString();
            //String query = "INSERT INTO Cart (customerID, productID) VALUES ('" + custID + "','" + prodID + "')";
            //SqlCommand cmd = new SqlCommand(query, con);
            //con.Close();
            //label1.InnerText = custID;
            //label2.InnerText = prodID;
        }
    }

    public static string getUserID(String userEmail)
    {
        String userID = "NULL";
        String query = "Select * from customers where emailAdd= '" + userEmail + "'";
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["WAPPDBEntitiesConnectionString"].ConnectionString);
        conn.Open();
        SqlCommand cm = new SqlCommand(query, conn);
        SqlDataReader sdr = cm.ExecuteReader();
        while (sdr.Read())
        {
            userID = sdr["custId"].ToString();
        }

        return userID;
    }
}