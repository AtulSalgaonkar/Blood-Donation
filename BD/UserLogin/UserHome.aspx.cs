using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class UserLogin_UserHome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string strUser = "";
            if (Request.Cookies["edit"] != null)
                strUser = Request.Cookies["edit"]["user"].ToString();
            SqlConnection connn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            SqlCommand cmdd = new SqlCommand(string.Format("select * from member where username ='{0}'", strUser), connn);
            SqlDataReader reader;

            connn.Open();
            reader = cmdd.ExecuteReader();
            if (reader.Read())
            {
                lblmsg.Text = strUser;
            }
            else
                Response.Redirect("~/Home/Home.aspx");
            connn.Close();
        }
    }
}