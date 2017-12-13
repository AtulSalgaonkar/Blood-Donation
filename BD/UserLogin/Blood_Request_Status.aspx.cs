using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class UserLogin_Blood_Request_Status : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            string strUser = "";
            if (Request.Cookies["edit"] != null)
                strUser = Request.Cookies["edit"]["user"].ToString();
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ReqForBlood"].ConnectionString);
            SqlCommand cmd = new SqlCommand(string.Format("select * from User_Blood_Request where Username ='{0}'", strUser), conn);
            SqlDataReader reader;

            conn.Open();
            reader = cmd.ExecuteReader();
            if (reader.Read())
            {
                FNlbl0.Text = reader[1].ToString();
                Elbl0.Text = reader[2].ToString();
                Slbl0.Text = reader[5].ToString();
                Clbl0.Text = reader[6].ToString();
                BloodRAlbl0.Text = reader[7].ToString();
                BGlbl0.Text = reader[8].ToString();
                RDlbl0.Text = reader[9].ToString();
                BRDlbl0.Text = reader[10].ToString();
                SORlbl0.Text = reader[11].ToString();
                MsgIpLBL0.Text = reader[12].ToString();
                UNlbl0.Text = strUser;
            }
            else
                Response.Redirect("~/UserLogin/UserHome.aspx");
            conn.Close();
        }
    }
}