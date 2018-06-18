using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



    public partial class Cust_Cart : System.Web.UI.Page
    {
        public decimal totalprice;
        private static SqlConnection connection;
        private static SqlCommand command;
        double TotalPrice;

        protected void Page_Load(object sender, EventArgs e)
        {


            if (Session["UserName"] == null)
        {
            Response.Redirect("Cust_Log.aspx");
        }
        //if (Request.QueryString["DeleteWishList"] != null)
        //{

        //}
        if (Request.QueryString["Cartid"] != null)
        {
            SqlConnection conn1 = new SqlConnection(ConfigurationManager.ConnectionStrings["WAPPDBEntitiesConnectionString"].ConnectionString);
            conn1.Open();
            String cartid = Request.QueryString["CartID"].ToString();

            String query = "Delete From Cart where CartID=" +cartid;
            SqlCommand cmd = new SqlCommand(query, conn1);
            cmd.ExecuteNonQuery();
            conn1.Close();
        }
        if (Request.QueryString["Cartid"] != null)
        {
            SqlConnection conn1 = new SqlConnection(ConfigurationManager.ConnectionStrings["WAPPDBEntitiesConnectionString"].ConnectionString);
            conn1.Open();
            String cartid = Request.QueryString["CartID"].ToString();

            String query = "Delete From Cart where CartID=" + cartid;
            SqlCommand cmd = new SqlCommand(query, conn1);
            cmd.ExecuteNonQuery();
            conn1.Close();
        }



        else
        {

            String UserID = getUserID(Session["UserName"].ToString());
            String query = "SELECT dbo.Cart.CartID, dbo.Cart.customerID, dbo.Cart.productID,  dbo.Product.ProductName, dbo.Product.ProductCategory, dbo.Product.ProductType, dbo.Product.ProductSize, dbo.Product.ProductPrice FROM dbo.Cart INNER JOIN dbo.Product ON Product.ProductID = Cart.productID WHERE dbo.Cart.customerID=" + UserID;
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["WAPPDBEntitiesConnectionString"].ConnectionString);
            conn.Open();
            SqlCommand cm = new SqlCommand(query, conn);
            SqlDataReader sdr = cm.ExecuteReader();
            bool flag = false;
            StringBuilder sb = new StringBuilder();


            if (sdr.HasRows)
            {
                flag = true;
            }

            if (flag)
            {
                while (sdr.Read())
                {
                    sb.Append("<tr><td>" + sdr["ProductName"].ToString() + " </td>");
                    sb.Append("<td>" + sdr["ProductCategory"].ToString() + " </td>");
                    sb.Append("<td> " + sdr["ProductType"].ToString() + " </td>");
                    sb.Append("<td> " + sdr["ProductSize"].ToString() + " </td>");
                    sb.Append("<td> " + sdr["ProductPrice"].ToString() + " </td>");

                    sb.Append("<td><a href='Cust_Cart.aspx?deletecart=TRUE&Cartid=" + sdr["CartID"].ToString() + "'   class='btn btn-danger btn-sm'  >Remove</a></td>");
                    sb.Append("</tr>");

                    totalprice += Convert.ToDecimal(sdr["ProductPrice"]);

                }

                amount.InnerText = totalprice.ToString();
                lbltotalprice.Text = totalprice.ToString();

                tbody.InnerHtml = sb.ToString();
            }
        }













        //string custid = null;
        //this.Session[custid] = 1;

        //SqlConnection con = new SqlConnection(connectionString: ConfigurationManager.ConnectionStrings["WAPPDBEntitiesConnectionString"].ConnectionString);
        //con.Open();
        //String cquery = "SELECT Cart.productID, ProductName, ProductCategory, ProductSize, ProductPrice, ProductType  FROM Cart,Product WHERE customerID=" + Session[custid] + "AND Product.ProductID = Cart.productID";
        //SqlCommand ccmd = new SqlCommand(cquery, con);
        //var dataReader = ccmd.ExecuteReader();
        //var dataTable = new DataTable();
        //dataTable.Load(dataReader);
        //reap.DataSource = dataTable;
        //reap.DataBind();

        //con.Close();

        //object sumObject;
        //sumObject = dataTable.Compute("Sum(ProductPrice)", "");
        //Label3.Text = sumObject.ToString();
        //string connectionString = ConfigurationManager.ConnectionStrings["WAPPDBEntitiesConnectionString"].ToString(); // Makes connectionString 

        //connection = new SqlConnection(connectionString);
        //command = new SqlCommand("", connection);

        //// Used for Checking database Row by row to check if ID exists //
        //connection.Open(); // Open Connection to the database (refer to connection declaration above) //
        //command.Connection = connection;
        //command.CommandText = "SELECT * from Cart"; // launch SQL command to select EVERYTHING from table Users//

        //using (SqlDataReader readline = command.ExecuteReader()) // using a Line reader (SqlDataReader) and declare it as readline = command.Executereader() <---- this is a function //
        //    while (readline.Read()) // to loop while the system can read data from a row
        //    //{
        //    //    TotalPrice += Convert.ToInt32(readline["ProductPrice"]);
        //    //}
        //lbltotalprice.Text = TotalPrice.ToString();
        //connection.Close();
    }


    public static string getUserID(string userEmail)
    {
        string userID = "NULL";
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
    //protected void LinkButton1_Click(object sender, CommandEventArgs e)
    //{
    //    string confirmValue1 = Request.Form["confirm_value1"];
    //    if (confirmValue1 == "Yes")
    //    {
        
    //        int r;
    //        int.TryParse(e.CommandArgument.ToString(), out r);
    //        try
    //        {
    //            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["WAPPDBEntitiesConnectionString"].ConnectionString);
    //            con.Open();
    //            string query = "DELETE FROM Cart WHERE productID = @ID";
    //            SqlCommand cmd = new SqlCommand(query, con);
    //            cmd.Parameters.AddWithValue("@ID", r);
    //            cmd.ExecuteNonQuery();
    //            con.Close();
    //            Response.Redirect("Cust_Cart.aspx");
    //        }
    //        catch (Exception ex)
    //        {
    //            Response.Write("Error  " + ex.ToString());
    //        }

    //    }
    //    else
    //    {

    //    }
    //}

    protected void Button1_Click(object sender, EventArgs e)
    {
        string confirmValue1 = "Yes";
        if (confirmValue1 == "Yes")
        {

            try
            {
                String UserID = getUserID(Session["UserName"].ToString());
                string status = "paid";
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["WAPPDBEntitiesConnectionString"].ConnectionString);

                con.Open();
                string query = "INSERT INTO transaction1 (RecipientName, DeliveryStatus, ShippingAddress, TotalPrice, ContactNumber, CardNumber) values (@RecipientName, @DeliveryStatus, @ShippingAddress, @TotalPrice, @ContactNumber, @CardNumber)";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@RecipientName", txtName.Text);
                cmd.Parameters.AddWithValue("@DeliveryStatus", status);
                cmd.Parameters.AddWithValue("@ShippingAddress", txtAddress.Text);
                cmd.Parameters.AddWithValue("@TotalPrice", amount.InnerText);
                cmd.Parameters.AddWithValue("@ContactNumber", txtContact.Text);
                cmd.Parameters.AddWithValue("@CardNumber", txtCard.Text);
                cmd.ExecuteNonQuery();



                
                con.Close();

                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["WAPPDBEntitiesConnectionString"].ConnectionString);
                conn.Open();
                string query1 = "Delete From Cart where customerID=" + UserID;
                SqlCommand cmd1 = new SqlCommand(query1, conn);
                cmd1.ExecuteNonQuery();
                conn.Close();
                Label3.Text = "Payment Successful";
                System.Threading.Thread.Sleep(3000);
                Response.Redirect("Cust_Cart.aspx");



            }
            catch (Exception ex)
            {
                Response.Write("Error: " + ex.ToString());
            }

        }
        else
        {

        }
        
    }


}