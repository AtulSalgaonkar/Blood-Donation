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

public partial class UserLogin_UserRequestForBlood : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["AdminConStr"].ConnectionString);
    public void Bind_SDDL1()
    {
        con.Open();
        SqlCommand com = new SqlCommand("Select StateID,State from State", con);
        SqlDataReader dr = com.ExecuteReader();
        SDDL1.DataSource = dr;
        SDDL1.Items.Clear();
        SDDL1.Items.Add(".....Plese select State.....");
        SDDL1.DataTextField = "State";
        SDDL1.DataValueField = "StateID";
        SDDL1.DataBind();
        con.Close();
    }
    public void Bind_CDDL1()
    {
        con.Open();
        SqlCommand com = new SqlCommand("Select CityID,City from City where StateID='" + SDDL1.SelectedValue + "'", con);
        SqlDataReader dr = com.ExecuteReader();
        CDDL1.DataSource = dr;
        CDDL1.Items.Clear();
        CDDL1.Items.Add(".....Plese select City.....");
        CDDL1.DataTextField = "City";
        CDDL1.DataValueField = "CityID";
        CDDL1.DataBind();
        con.Close();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        RDTB1.Text = DateTime.Now.ToString("dd-MM-yyyy");

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
                ETB4.Text = reader[4].ToString();
                UNTB4.Text = strUser;
            }
            else
                Response.Redirect("~/Home/Home.aspx");
            connn.Close();
        }



        if (!IsPostBack)
        {
            Bind_SDDL1();
        }
    }
    protected void CalendarReqDate2_SelectionChanged(object sender, EventArgs e)
    {
        BRDTB1.Text = CalendarReqDate2.SelectedDate.ToShortDateString();
        CalendarReqDate2.Visible = false;
    }
    protected void EditD2_Click(object sender, EventArgs e)
    {
        CalendarReqDate2.Visible = true;
    }
    protected void CDDL_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void SDDL_SelectedIndexChanged(object sender, EventArgs e)
    {
        Bind_CDDL1();
    }
    protected void SReq_Click(object sender, EventArgs e)
    {
        if (TnCcb.Checked == true)
        {
            SqlConnection conn = new SqlConnection();
            SqlCommand comd = new SqlCommand();

            conn.ConnectionString = ConfigurationManager.ConnectionStrings["ReqForBlood"].ConnectionString;
            comd.Connection = conn;
            comd.CommandText = string.Format("insert into User_Blood_Request values('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}','{9}','{10}','{11}','{12}')", UNTB4.Text.Trim(), FNTB4.Text, ETB4.Text, PhnTB4.Text, GenRB4.SelectedValue, SDDL1.SelectedItem, CDDL1.SelectedItem, BRATB1.Text, BGddl1.SelectedValue, RDTB1.Text, BRDTB1.Text, SORddl.SelectedItem, MsgTB.Text);

            try
            {
                conn.Open();
                comd.ExecuteNonQuery();
                conn.Close();
                tblRFB.Visible = false;
                Response.Write("<font size='7' color='#000099'>Your Request is Registered</font>");

            }
            catch (SqlException ex)
            {
                if (ex.Number == 2627)
                    lblMsg.Text = "*** You can Request for blood only once ***";
                else
                lblMsg.Text = "An Error : " + ex.Message;
            }
        }
        else
            lblMsg.Text = "*Agree Terms and Conditions";
    }
}