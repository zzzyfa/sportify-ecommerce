using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Ad_Update : System.Web.UI.Page
{
    private object item_name;
    public object HiddenField_Id { get; private set; }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] == null)
        {
            Response.Redirect("Ad_Log.aspx");
        }

        if (!IsPostBack)
        {
            try
            {

                String contact_id = Request.QueryString["Id"];
                int intTest = Convert.ToInt32(contact_id);

                string constr = ConfigurationManager.ConnectionStrings["WAPPDBEntitiesConnectionString"].ConnectionString;
                using (SqlConnection con = new SqlConnection(constr))
                {
                    using (SqlCommand cmd = new SqlCommand("SELECT * FROM Product WHERE ProductID=" + contact_id))
                    {
                        using (SqlDataAdapter sda = new SqlDataAdapter())
                        {
                            cmd.Connection = con;
                            sda.SelectCommand = cmd;
                            using (DataTable dt = new DataTable())
                            {
                                sda.Fill(dt);
                                //return dt;
                                foreach (DataRow row in dt.Rows)
                                {

                                    string itemid = row["ProductID"].ToString();
                                    string item_name = row["ProductName"].ToString();
                                    string item_description = row["ProductDescp"].ToString();
                                    string item_size = row["ProductSize"].ToString();
                                    string item_price = row["ProductPrice"].ToString();
                                    string item_category = row["ProductCategory"].ToString();
                                    string item_type = row["ProductType"].ToString();
                                    string item_pic = row["Product_Image_Name1"].ToString();


                                    //String type = Request.Form["producttype"];
                                    //String size = Request.Form["productsize"];
                                    //String image = Request.Form["productpic"];
                                    //String category = Request.Form["productcategory"];
                                    //String price = Request.Form["productprice"];

                                    this.HiddenField_Id1.Value = itemid;
                                    this.txtname.Text = item_name;
                                    this.txtdescription.Text = item_description;
                                   
                                    this.productprice.Text = item_price;



                                    productsize.SelectedValue = productsize.Items.FindByText(row["ProductSize"].ToString()).Value;
                                    productcategory.SelectedValue = productcategory.Items.FindByText(row["ProductCategory"].ToString()).Value;
                                    producttype.SelectedValue = producttype.Items.FindByText(row["ProductType"].ToString()).Value;


                                }
                                con.Close();
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("Error: " + ex.ToString());
            }
        }


    }
    protected void btnaddproduct_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["WAPPDBEntitiesConnectionString"].ConnectionString);
            con.Open();


            string query = "UPDATE Product SET ProductName=@item_name, ProductDescp=@item_description, ProductSize=@item_size, ProductPrice=@item_price, ProductCategory=@item_category, ProductType=@item_type WHERE ProductID=@itemid";

            SqlCommand cmd = new SqlCommand(query, con);
            //String name = Request["txtname"].ToString();
            //String type = Request["producttype"].ToString();
            //String size = Request["productsize"].ToString();
            //String descp = Request["txtdescription"].ToString();
            //String category = Request["productcategory"].ToString();
            //String price = Request["productprice"].ToString();

            cmd.Parameters.AddWithValue("@itemid", HiddenField_Id1.Value.ToString());
            cmd.Parameters.AddWithValue("@item_name", txtname.Text);
            cmd.Parameters.AddWithValue("@item_description", txtdescription.Text);
            cmd.Parameters.AddWithValue("@item_size", productsize.SelectedValue.ToString());
            cmd.Parameters.AddWithValue("@item_price", productprice.Text);
            cmd.Parameters.AddWithValue("@item_category", productcategory.SelectedValue.ToString());
            cmd.Parameters.AddWithValue("@item_type", producttype.SelectedValue.ToString());
 
            cmd.ExecuteNonQuery();
            Response.Redirect("Ad_ViewAllItems.aspx");
            con.Close();
        }

        catch (Exception ex)
        {
            Response.Write("Error: " + ex.ToString());
        }
    }

    protected void btndelete_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["WAPPDBEntitiesConnectionString"].ConnectionString);

            string query = "DELETE FROM Product WHERE ProductID=@itemid";

            SqlCommand cmd = new SqlCommand(query, con);

            cmd.Parameters.AddWithValue("@itemid", HiddenField_Id1.Value);

            con.Open();
            cmd.ExecuteNonQuery();

            Response.Redirect("Ad_ViewAllItems.aspx");
            con.Close();
        }
        catch (Exception ex)
        {
            Response.Write("Error: " + ex.ToString());
        }

    }
    protected void HiddenField_Id_ValueChanged(object sender, EventArgs e)
    {

    }
}