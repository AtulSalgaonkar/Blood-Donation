using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

public partial class Admin_Request_For_Blood_Data : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        EMailTB1.Text = GridView1.SelectedRow.Cells[3].Text;
    }
    protected void SReq_Click(object sender, EventArgs e)
    {
        MailMessage msg = new MailMessage();
        msg.From = new MailAddress("enter your email address hear");
        msg.To.Add(EMailTB1.Text);
        msg.Subject = SubjectTB1.Text;
        msg.Body = (ComEmailTB.Text);
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
        lblMsg.Text = "*** E-mail has benn succssfully sent ***";
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