using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HttpCookie cookie = Request.Cookies["username"];
        if (string.IsNullOrEmpty((string)Session["username"]) && cookie == null)
        {
            login.Text = "Login";
            signup.Text = "Sign Up";
        }
        else
        {
            Session["username"] = cookie["name"];
            signup.Text = cookie["name"];
            login.Text = "Logout";
        }
    }
    protected void login_Click(object sender, EventArgs e)
    {
        if (!string.IsNullOrEmpty((string)Session["username"]))
        {
            Session["username"] = null;
            Response.Cookies.Clear();
            Response.Cookies["username"].Expires = DateTime.Now.AddDays(-1d);
            Response.Redirect("Default.aspx");
        }
        else
        {
            Response.Redirect("login.aspx");
        }
    }
    protected void signup_Click(object sender, EventArgs e)
    {
        if (string.IsNullOrEmpty((string)Session["username"]))
        {
            Response.Redirect("Registration.aspx");
        }
        else
        {
            //Response.Redirect("update.aspx");
        }
    }
    protected void review_Click(object sender, EventArgs e)
    {
        if (!string.IsNullOrEmpty((string)Session["username"]))
        {
            Response.Redirect("review.aspx");
        }
        else
        {
            Response.Write("<script>alert('you must login')</script>");
        }
    }
}
