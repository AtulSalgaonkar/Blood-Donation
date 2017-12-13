using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class LoginM_UserLP : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LB2_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        SqlDataReader reader;

        conn.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        cmd.Connection = conn;
        cmd.CommandText = string.Format("select * from member where username='{0}' and password='{1}'", UNTB2.Text, PSWDTB.Text);

        conn.Open();
        reader = cmd.ExecuteReader();
        if (reader.Read())
        {
            HttpCookie cookie = new HttpCookie("edit");
            cookie.Values.Add("user", UNTB2.Text);
            Response.Cookies.Add(cookie);
            conn.Close();
            Response.Redirect("~/UserLogin/UserHome.aspx");
        }
        else
            lblMsg.Text = "Username Or Password Invalid.";
        conn.Close();
    }
    
}
