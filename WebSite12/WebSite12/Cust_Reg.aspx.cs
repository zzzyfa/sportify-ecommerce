using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Cust_Reg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnRegister_Click(object sender, EventArgs e)
    {
        string user_name = this.txtEmail.Text;
        SqlConnection con = new
    SqlConnection(ConfigurationManager.ConnectionStrings["WAPPDBEntitiesConnectionString"].ConnectionString);

        try
        {
            con.Open();
            string query = "INSERT INTO customers (fullName, emailAdd, password, contactNo, shippingAdd) values (@fullName, @emailAdd, @password, @contactNo, @shippingAdd)";
            SqlCommand cmd = new SqlCommand(query, con);


            cmd.Parameters.AddWithValue("@fullName", txtFullName.Text);
            cmd.Parameters.AddWithValue("@emailAdd", txtEmail.Text);
            cmd.Parameters.AddWithValue("@password", txtPassword.Text);
            cmd.Parameters.AddWithValue("@contactNo", txtContactNo.Text);
            cmd.Parameters.AddWithValue("@shippingAdd", txtAddress.Text);

            cmd.ExecuteNonQuery();



            Response.Redirect("Cust_Log.aspx");
            con.Close();
        }
        catch (Exception ex)
        {
            Response.Write("Error: " + ex.ToString());
        }
    }
}