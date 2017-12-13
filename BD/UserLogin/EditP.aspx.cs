using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class EditP : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string strUser = "";
            if (Request.Cookies["edit"] != null)
                strUser = Request.Cookies["edit"]["user"].ToString();
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            SqlCommand cmd = new SqlCommand(string.Format("select * from member where username ='{0}'", strUser), conn);
            SqlDataReader reader;

            conn.Open();
            reader = cmd.ExecuteReader();
            if (reader.Read())
            {
                FNTB2.Text = reader[0].ToString();
                GenRB2.SelectedValue = reader[1].ToString();
                StateDDL2.SelectedValue = reader[2].ToString();
                PhnTB2.Text = reader[3].ToString();
                EmTB2.Text = reader[4].ToString();
                UNTB2.Text = strUser;
            }
            else
                Response.Redirect("~/Home/Home.aspx");
            conn.Close();
        }
    }
    protected void SavechangeB_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        SqlCommand cmd = new SqlCommand(string.Format("update member set fullname='{0}',gender='{1}', state='{2}',phone='{3}',email='{4}',password='{5}' where username='{6}'", FNTB2.Text, GenRB2.SelectedValue, StateDDL2.SelectedValue, PhnTB2.Text, EmTB2.Text, PswdTB2.Text, UNTB2.Text), conn);

        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
        tblEdit.Visible = false;
        Response.Redirect("~/UserLogin/UserHome.aspx");
        Response.Write("<font size=7 color=green>All your Data is Saved. </font>");
    }
}