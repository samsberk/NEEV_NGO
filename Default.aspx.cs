using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Net;
using System.Web.Services;

public partial class _Default : System.Web.UI.Page
{
	//protected static string ReCaptcha_Key = "6LeFzdEZAAAAAOrifiwgoFCgfdra8yqXVj14niX7";
	//protected static string ReCaptcha_Secret = "6LeFzdEZAAAAAKuvVv-kPsy4JkRWCFXLHO2CTHBU";

	//[WebMethod]
	//public static string VerifyCaptcha(string response)
	//{
	//    string url = "https://www.google.com/recaptcha/api/siteverify?secret=" + ReCaptcha_Secret + "&response=" + response;
	//    return (new WebClient()).DownloadString(url);
	//}

	//string cmd;
	string cmd, pst = "Incomplete";
	DBManager dm = new DBManager();
	GenCaptcha gc = new GenCaptcha();
	MyMail mm = new MyMail();
	protected void Page_Load(object sender, EventArgs e)
    {
		cmd = "delete from Members where PaymentStatus='" + pst + "'";
		dm.ExInsertUpdateorDelete(cmd);
		HttpCookie acook = new HttpCookie("memberid")
		{
			Value = null,
			Expires = DateTime.Now.AddDays(2)
		};
		Response.Cookies.Add(acook);
		if (Request.Cookies["user"] == null || Request.Cookies["user"].Equals("1"))
        {
            informer.Text = "new";
            info.Text = "&emsp;This website uses COOKIES to give you the best, most relevant experience. Using this website means you are <span style='color:lime;'>OK</span> with this.";
            HttpCookie scook = new HttpCookie("user");
            scook.Value = "opened";
            scook.Expires = DateTime.Now.AddDays(10);
            Response.Cookies.Add(scook);
        }
        else
        {
            string sc = Request.Cookies["user"].Value.ToString();

        }
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