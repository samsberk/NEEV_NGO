using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Mgmt_Zone_Member_List : System.Web.UI.Page
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
}