using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.IO;

public partial class Admin_CreateNewOrganization : System.Web.UI.Page
{


    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["AdminConStr"].ConnectionString);
    public void Bind_SDDL2()
    {
        con.Open();
        SqlCommand com = new SqlCommand("Select StateID,State from State", con);
        SqlDataReader dr = com.ExecuteReader();
        SDDL2.DataSource = dr;
        SDDL2.Items.Clear();
        SDDL2.Items.Add(".....Plese select State.....");
        SDDL2.DataTextField = "State";
        SDDL2.DataValueField = "StateID";
        SDDL2.DataBind();
        con.Close();
    }
    public void Bind_CDDl2()
    {
        con.Open();
        SqlCommand com = new SqlCommand("Select CityID,City from City where StateID='" + SDDL2.SelectedValue + "'", con);
        SqlDataReader dr = com.ExecuteReader();
        CDDL2.DataSource = dr;
        CDDL2.Items.Clear();
        CDDL2.Items.Add(".....Plese select City.....");
        CDDL2.DataTextField = "City";
        CDDL2.DataValueField = "CityID";
        CDDL2.DataBind();
        con.Close();
    }



    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Bind_SDDL2();
        }
    }
    protected void SDDL_SelectedIndexChanged(object sender, EventArgs e)
    {
        Bind_CDDl2();
    }
    protected void CDDL_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void CNOrgB1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["AdminConStr"].ConnectionString);
        string path = Server.MapPath("Images/");
        if (UppImg1.HasFile)
        {
            string ext = Path.GetExtension(UppImg1.FileName);
            if (ext == ".jpg" || ext == ".png")
            {
                UppImg1.SaveAs(path + UppImg1.FileName);
                string name = "Images/" + UppImg1.FileName;
                string ss = "insert into OrganizationData (OrgType, State, City, LocationAddr, ContactNo, OrgEID, OrgName, UppOrgLogo)values('" + OrgTypeDDL1.SelectedItem + "','" + SDDL2.SelectedValue + "','" + CDDL2.SelectedValue + "','" + LocAddrTB1.Text + "','" + ConNoTB1.Text + "','" + OrgEmTB1.Text + "','" + OrgNameTB1.Text + "','" + name + "')";

                SqlCommand cmd = new SqlCommand(ss, conn);
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();

                Response.Write("<font size=7 color=green>*** New Organization is Created ***</font>");
                
            }
            else
            {
                lblMsg.Text = "*** You have to upload jpg and png Logo only! ***";
                lblMsg.ForeColor = System.Drawing.Color.Red;
            }
        }
        else
        {
            lblMsg.Text = "*** Please Upload Logo! ***";
            lblMsg.ForeColor = System.Drawing.Color.Red;
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