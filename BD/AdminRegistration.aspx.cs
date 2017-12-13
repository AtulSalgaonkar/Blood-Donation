using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class AdminRegistration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void RrgB_Click(object sender, EventArgs e)
    {
        {
            if (Session["rannum"].ToString() == TinBoxTB.Text)
            {
                if (TnCcb.Checked == true)
                {
                    SqlConnection conn = new SqlConnection();
                    SqlCommand cmd = new SqlCommand();

                    conn.ConnectionString = ConfigurationManager.ConnectionStrings["AdminConStr"].ConnectionString;
                    cmd.Connection = conn;
                    cmd.CommandText = string.Format("insert into Admin values('{0}','{1}','{2}','{3}','{4}','{5}','{6}')", AFNTB3.Text, GenRB3.SelectedValue, StateDDL.SelectedValue, PhnTB3.Text, EmTB3.Text, ANTB3.Text, PswdTB3.Text);

                    try
                    {
                        conn.Open();
                        cmd.ExecuteNonQuery();
                        conn.Close();
                        tblRegister.Visible = false;
                        Response.Write("<font size='7' color='#000099'>New Admin Acount is Created</font>");

                    }
                    catch (SqlException ex)
                    {
                        if (ex.Number == 2627)
                            lblmsg.Text = "*Admin alredy exist";
                        else
                            lblmsg.Text = "An Error : " + ex.Message;
                    }
                }
                else
                    lblmsg.Text = "*Agree Terms and Conditions";
            }
            else
                lblmsg.Text = "*Captcha Incorrect";

        }
    }
}