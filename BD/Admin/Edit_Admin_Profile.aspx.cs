using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_Edit_Admin_Profile : System.Web.UI.Page
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
                AFNTB2.Text = reader[0].ToString();
                GenRB2.SelectedValue = reader[1].ToString();
                StateDDL2.SelectedValue = reader[2].ToString();
                PhnTB2.Text = reader[3].ToString();
                EmTB2.Text = reader[4].ToString();
                ANTB2.Text = strUser;
            }
            else
                Response.Redirect("~/Admin/AdminHome.aspx");
            conn.Close();
        }
    }
    protected void SavechangeB_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["AdminConStr"].ConnectionString);
        SqlCommand cmd = new SqlCommand(string.Format("update Admin set AdminFullName='{0}',gender='{1}', state='{2}',phone='{3}',email='{4}',password='{5}' where AdminName='{6}'", AFNTB2.Text, GenRB2.SelectedValue, StateDDL2.SelectedValue, PhnTB2.Text, EmTB2.Text, PswdTB2.Text, ANTB2.Text), conn);

        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
        tblEdit.Visible = false;
        Response.Write("<font size=7 color=green>All your Data is Saved. </font>");
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