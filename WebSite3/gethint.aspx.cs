using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class gethint : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String str = Request.QueryString["q"].ToString();
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ConnectionString);
        conn.Open();

        string checkuser = "select count(*)from[Table] where username='" + str + "'";
        SqlCommand com = new SqlCommand(checkuser, conn);
        Int32 temp = Convert.ToInt32(com.ExecuteScalar());
        if (temp != 0)
        {
            Response.Write("Username already exist!!");
        }
        else
        {
            Response.Write("Username Available");
        }

        conn.Close();
    }
}