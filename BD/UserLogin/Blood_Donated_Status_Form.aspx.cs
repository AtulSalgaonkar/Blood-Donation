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

public partial class UserLogin_Blood_Donated_Status_Form : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["AdminConStr"].ConnectionString);
    public void Bind_SDDL3()
    {
        con.Open();
        SqlCommand com = new SqlCommand("Select StateID,State from State", con);
        SqlDataReader dr = com.ExecuteReader();
        SDDL3.DataSource = dr;
        SDDL3.Items.Clear();
        SDDL3.Items.Add(".....Plese select State.....");
        SDDL3.DataTextField = "State";
        SDDL3.DataValueField = "StateID";
        SDDL3.DataBind();
        con.Close();
    }
    public void Bind_CDDL3()
    {
        con.Open();
        SqlCommand com = new SqlCommand("Select CityID,City from City where StateID='" + SDDL3.SelectedValue + "'", con);
        SqlDataReader dr = com.ExecuteReader();
        CDDL3.DataSource = dr;
        CDDL3.Items.Clear();
        CDDL3.Items.Add(".....Plese select City.....");
        CDDL3.DataTextField = "City";
        CDDL3.DataValueField = "CityID";
        CDDL3.DataBind();
        con.Close();

        
    }
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
                UNTB5.Text = strUser;
            }
            else
                Response.Redirect("~/Home/Home.aspx");
            connn.Close();
        }



        if (!IsPostBack)
        {
            Bind_SDDL3();
        }
    }
    protected void SDDL_SelectedIndexChanged(object sender, EventArgs e)
    {
        Bind_CDDL3();
        info1.Visible = true;
    }
    protected void CDDL_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
    protected void FindOrgB1_Click(object sender, EventArgs e)
    {
        
    }
    protected void GVOrgDataFind1_SelectedIndexChanged(object sender, EventArgs e)
    {
        OrgName1.Text = GVOrgDataFind1.SelectedRow.Cells[7].Text;
        OrgType1.Text = GVOrgDataFind1.SelectedRow.Cells[1].Text;
    }
    protected void UploadStatusB_Click(object sender, EventArgs e)
    {
        SqlConnection conne = new SqlConnection();
        SqlCommand comd = new SqlCommand();

        conne.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        comd.Connection = conne;
        comd.CommandText = string.Format("insert into BloodDStatusForm values('{0}','{1}','{2}','{3}','{4}','{5}','{6}')", SDDL3.SelectedValue, CDDL3.SelectedValue, OrgName1.Text, OrgType1.Text, UNTB5.Text, USOBDddl1.SelectedItem, BGddl2.SelectedValue);

        try
        {
            conne.Open();
            comd.ExecuteNonQuery();
            conne.Close();
            TblBloodDStatusForm.Visible = false;
            Response.Write("<font size='6' color='#000099'>Your Blood Donation Status has been Uploaded</font>");

        }
        catch (SqlException ex)
        {
            if (ex.Number == 2627)
                lblMsg.Text = "*** You have uploaded your status early please update it if you need to change your status in status update page ***";
            else
                lblMsg.Text = "An Error : " + ex.Message;
        }
    }
}