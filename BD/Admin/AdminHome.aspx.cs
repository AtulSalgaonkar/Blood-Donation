using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_AdminHome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string strUser = "";
            if (Request.Cookies["edit"] != null)
                strUser = Request.Cookies["edit"]["user"].ToString();
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["AdminConStr"].ConnectionString);
            SqlCommand cmd = new SqlCommand(string.Format("select * from Admin where AdminName ='{0}'", strUser), conn);
            SqlDataReader reader;

            conn.Open();
            reader = cmd.ExecuteReader();
            if (reader.Read())
            {
                lblmsg.Text = strUser;
            }
            else
                Response.Redirect("~/Home/Home.aspx");
            conn.Close();
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        HttpCookie cookie = new HttpCookie("edit");
        cookie.Expires = DateTime.Now.AddDays(-1d);
        Response.Cookies.Add(cookie);
        cookie.Expires = DateTime.Now.AddDays(-1d);
        Response.Cookies.Add(cookie);
        Response.Redirect("~/Home/Home.aspx");
    }
}