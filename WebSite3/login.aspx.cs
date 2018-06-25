using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ConnectionString);
        conn.Open();

        string checkuser = "select count(*)from[Table] where username='" + uname.Text.ToString() + "' and password='" + pass.Text.ToString() +"'";
        SqlCommand com = new SqlCommand(checkuser, conn);
        Int32 temp = Convert.ToInt32(com.ExecuteScalar());
        if (temp > 0)
        {
            Session["username"] = uname.Text.ToString();
            HttpCookie cookie = new HttpCookie("username");
            cookie["name"] = uname.Text.ToString();
            cookie.Expires = DateTime.Now.AddMinutes(1);
            Response.Cookies.Add(cookie);
            Response.Redirect("Default.aspx");
        }
        else
        {
            Label1.Text = "Username or Password is incorrect";
        }
        conn.Close();
    }
}