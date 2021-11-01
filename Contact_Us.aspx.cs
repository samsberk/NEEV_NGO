using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Net;
using System.Web.Services;

public partial class Contact_Us : System.Web.UI.Page
{
    MyMail mm = new MyMail();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void sendbtn_Click(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string msg = "Name: " + nametxt.Text.ToUpper().ToString() + "<br/>Email: " + emailtxt.Text.ToLower().ToString() + "<br/>Message: " + msgtxt.Text.ToString();
        mm.SendMail("neev.iitd@gmail.com", "NEEV Message or Query", msg);
        nametxt.Text = "";
        emailtxt.Text = "";
        msgtxt.Text = "";
        informer.Text = "msgsent";
        info.Text = "&emsp;Your message or query has been sent.";
    }

    protected void recaptcha_demo_submit_Click(object sender, EventArgs e)
    {

    }
}