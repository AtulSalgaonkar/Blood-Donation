using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_AdminMaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string strUser = "";
            if (Request.Cookies["edit"] != null)
                strUser = Request.Cookies["edit"]["user"].ToString();
            else
                Response.Redirect("~/Home/Home.aspx");
        }
    }
}
