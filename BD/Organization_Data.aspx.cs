using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Web.Security;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

public partial class Admin_Organization_Data : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["AdminConStr"].ConnectionString);
    public void Bind_SDDL6()
    {
        con.Open();
        SqlCommand com = new SqlCommand("Select StateID,State from State", con);
        SqlDataReader dr = com.ExecuteReader();
        SDDL6.DataSource = dr;
        SDDL6.Items.Clear();
        SDDL6.Items.Add(".....Plese select State.....");
        SDDL6.DataTextField = "State";
        SDDL6.DataValueField = "StateID";
        SDDL6.DataBind();
        con.Close();
    }
    public void Bind_CDDL6()
    {
        con.Open();
        SqlCommand com = new SqlCommand("Select CityID,City from City where StateID='" + SDDL6.SelectedValue + "'", con);
        SqlDataReader dr = com.ExecuteReader();
        CDDL6.DataSource = dr;
        CDDL6.Items.Clear();
        CDDL6.Items.Add(".....Plese select City.....");
        CDDL6.DataTextField = "City";
        CDDL6.DataValueField = "CityID";
        CDDL6.DataBind();
        con.Close();
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Bind_SDDL6();
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
    protected void SDDL_SelectedIndexChanged(object sender, EventArgs e)
    {
        Bind_CDDL6();
    }
    protected void CDDL_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}