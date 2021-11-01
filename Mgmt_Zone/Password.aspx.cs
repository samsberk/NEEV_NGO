using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Mgmt_Zone_Password : System.Web.UI.Page
{
	string cmd, cmid;
	DBManager dm = new DBManager();
	EncryptionDecryption em = new EncryptionDecryption();
	MyMail mm = new MyMail();
	protected void Page_Load(object sender, EventArgs e)
	{
		if (Request.Cookies["staff"] == null)
			cmid = "Blank";
		else
			cmid = Request.Cookies["staff"].Value;

		cmd = "select * from Mgmt where EmailID='" + cmid + "'";
		DataTable dt = dm.SelectQuary(cmd);
		if (dt.Rows.Count > 0)
		{

		}
		else
		{
			Response.Redirect("Staff");
		}
	}
	protected void subbtn_Click(object sender, EventArgs e)
	{
		string password = em.EncryptMyData(passtxt.Text.ToString());
		cmd = "update Mgmt set Password='" + password + "' where EmailID='" + cmid + "'";
		if(dm.ExInsertUpdateorDelete(cmd))
		{
			informer.Text = "successpassword";
			alerttext.Text = "Password Successfully Changed.<br/><a href='Staff_Home' class='link'>Click Here</a> to go on Dashboard.";
		}
		else
		{
			informer.Text = "failpassword";
			alerttext.Text = "Something went wrong, Please try again later.";
		}
	}
}