using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Ad_Log : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        Session["UserName"] = txtEmail.Text;

        string user_name = this.txtEmail.Text;
        string user_password = this.txtPassword.Text;

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["WAPPDBEntitiesConnectionString"].ConnectionString);

        con.Open();
        string query = "SELECT * FROM admin WHERE emailAdd='" + user_name + "' AND password='" + user_password + "'";

        SqlCommand cmd = new SqlCommand(query, con);

        cmd.CommandType = System.Data.CommandType.Text;

        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);

        int i = cmd.ExecuteNonQuery();
        con.Close();

        if (dt.Rows.Count > 0)
        {
            this.Session["user_name"] = user_name;
            Response.Redirect("Ad_Home.aspx");
        }
        else
        {
            Label1.Visible = true;
            Label1.Text = "Your username and password are incorrect.";
            Label1.ForeColor = System.Drawing.Color.Red;

        }

        con.Close();
    }
}