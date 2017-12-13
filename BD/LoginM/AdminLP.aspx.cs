using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class LoginM_AdminLP : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LB3_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        SqlDataReader Reader;

        conn.ConnectionString = ConfigurationManager.ConnectionStrings["AdminConStr"].ConnectionString;
        cmd.Connection = conn;
        cmd.CommandText = string.Format("select * from Admin where AdminName='{0}' and password='{1}'", ANTB3.Text, PSWDTB3.Text);

        conn.Open();
        Reader = cmd.ExecuteReader();
        if (Reader.Read())
        {
            HttpCookie cookie = new HttpCookie("edit");
            cookie.Values.Add("user", ANTB3.Text);
            Response.Cookies.Add(cookie);
            conn.Close();
            Response.Redirect("~/Admin/AdminHome.aspx");
        }
        else
            lblMsg.Text = "Admin Name Or Password Invalid.";
            conn.Close();
    }
}
