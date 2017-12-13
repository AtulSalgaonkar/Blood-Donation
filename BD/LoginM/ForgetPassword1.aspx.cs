using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class LoginM_ForgetPassword1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        SqlDataReader reader;

        conn.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        cmd.Connection = conn;
        cmd.CommandText = string.Format("select * from member where username ='{0}'", TextBox1.Text);

        conn.Open();
        reader = cmd.ExecuteReader();
        if (reader.Read())
        {
            HttpCookie cookie = new HttpCookie("edit");
            cookie.Values.Add("user", TextBox1.Text);
            Response.Cookies.Add(cookie);
            Response.Redirect("~/LoginM/ForgetPassword2.aspx");
            conn.Close();
        }
        else
            lblMsg.Text = "Username Invalid.";
        conn.Close();
    }
}