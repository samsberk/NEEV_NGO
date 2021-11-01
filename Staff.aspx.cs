using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Staff : System.Web.UI.Page
{
	string cmd, cmid;
	DBManager dm = new DBManager();
	EncryptionDecryption ed = new EncryptionDecryption();
	MyMail mm = new MyMail();
	GenCaptcha gc = new GenCaptcha();
	protected void Page_Load(object sender, EventArgs e)
    {
		if (Request.Cookies["staff"] == null)
			cmid = "Blank";
		else
			cmid = Request.Cookies["staff"].Value.ToString();

		cmd = "select * from Mgmt where EmailID='" + cmid + "'";
		DataTable dt = dm.SelectQuary(cmd);
		if (dt.Rows.Count > 0)
		{
			Response.Redirect("Staff_Home");
		}
		else
		{
			
		}
	}

	protected void loginbtn_Click(object sender, EventArgs e)
	{
		string pas = ed.EncryptMyData(passtxt.Text.ToString());
		cmd = "select * from Mgmt where EmailID='" + mailtxt.Text.ToLower().ToString() + "' and Password='" + pas + "'";
		DataTable dt = dm.SelectQuary(cmd);
		if (dt.Rows.Count > 0)
		{
			HttpCookie acook = new HttpCookie("staff")
			{
				Value = dt.Rows[0][0].ToString(),
				Expires = DateTime.Now.AddDays(7)
			};
			Response.Cookies.Add(acook);
			Response.Redirect("Staff_Home");
		}
		else
		{
			informer.Text = "InvalidUserID";
			info.Text = "Invalid User ID or Password. Please check credentials before Login.";
		}
	}

	protected void fbtn_Click(object sender, EventArgs e)
	{
		string cap = gc.getcode();
		cmd = "select * from Mgmt where EmailID='" + fmailtxt.Text.ToLower().ToString() + "'";
		DataTable dt = dm.SelectQuary(cmd);
		if (dt.Rows.Count > 0)
		{
			cmd = "update Mgmt set Password='" + ed.EncryptMyData(cap) + "' where EmailID='" + fmailtxt.Text.ToLower().ToString() + "'";
			if (dm.ExInsertUpdateorDelete(cmd))
			{
				cmd = "Your temporary password for NEEV Staff Login is <b>" + cap + "</b>.<br/>Please do not share with anyone.<br/>Please change this password after successful login.";
				mm.SendMail(fmailtxt.Text.ToLower().ToString(), "Password for NEEV Staff Login", cmd);
				fmailtxt.Text = "";
				informer.Text = "PasswordSent";
				info.Text = "A temporary password has been sent to your registered email id, wait for 2 minutes. Please change it after successful login.";
			}
		}
	}
}