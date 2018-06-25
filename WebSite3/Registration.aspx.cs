using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void create_Click(object sender, EventArgs e)
    {

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ConnectionString);
            conn.Open();

            string checkuser = "select count(*)from[Table] where username='" + username.Text.ToString() + "'";
            SqlCommand com = new SqlCommand(checkuser, conn);
            Int32 temp = Convert.ToInt32(com.ExecuteScalar());
            if (temp == 0)
            {
                Session["username"] = username.Text.ToString();
                string insertquery = "insert into[Table] values('" + username.Text.ToString() + "', '" + fname.Text.ToString() + "','" + lname.Text.ToString() + "', '" + pass.Text.ToString() + "', '" + email.Text.ToString() + "')";

                com = new SqlCommand(insertquery, conn);
                com.ExecuteScalar();
                Response.Redirect("Default.aspx");
            }
            
            conn.Close();

    }
}