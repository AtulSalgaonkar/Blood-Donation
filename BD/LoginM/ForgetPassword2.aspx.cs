using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;

public partial class LoginM_ForgetPassword2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string strUser = "";
            if (Request.Cookies["edit"] != null)
                strUser = Request.Cookies["edit"]["user"].ToString();
            SqlConnection connn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            SqlCommand comd = new SqlCommand(string.Format("select * from member where username ='{0}'", strUser), connn);
            SqlDataReader reader;

            connn.Open();
            reader = comd.ExecuteReader();
            if (reader.Read())
            {
                PassTB.Text = reader[6].ToString();
                mailTB.Text = reader[4].ToString();
                UserNTB.Text = strUser;
            }
            else
                connn.Close();
        }
    }
    protected void S_Click(object sender, EventArgs e)
    {
        MailMessage msg = new MailMessage();
        msg.From = new MailAddress("enter your email address hear");
        msg.To.Add(mailTB.Text);
        msg.Subject = SubTB.Text;
        msg.Body = (PassTB.Text);
        msg.IsBodyHtml = true;
        SmtpClient smtp = new SmtpClient();
        smtp.Host = "smtp.gmail.com";
        System.Net.NetworkCredential Networkcred = new System.Net.NetworkCredential();
        Networkcred.UserName = "enter your email address hear";
        Networkcred.Password = "enter your password hear";
        smtp.UseDefaultCredentials = true;
        smtp.Credentials = Networkcred;
        smtp.Port = 587;
        smtp.EnableSsl = true;
        smtp.Send(msg);
        tblEdit.Visible = false;

        HttpCookie cookie = new HttpCookie("edit");
        cookie.Expires = DateTime.Now.AddDays(-1d);
        Response.Cookies.Add(cookie);
        cookie.Expires = DateTime.Now.AddDays(-1d);
        Response.Cookies.Add(cookie);

        Response.Redirect("~/LoginM/UserLP.aspx");

        
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        HttpCookie cookie = new HttpCookie("edit");
        cookie.Expires = DateTime.Now.AddDays(-1d);
        Response.Cookies.Add(cookie);
        cookie.Expires = DateTime.Now.AddDays(-1d);
        Response.Cookies.Add(cookie);
        Response.Redirect("~/LoginM/UserLP.aspx");
    }
}