using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Member_Page : System.Web.UI.Page
{
    string cmd, pst = "Incomplete", orid, amnt="0", trid="Incomplete";
    DBManager dm = new DBManager();
	GenCaptcha gc = new GenCaptcha();
    MyMail mm = new MyMail();
    protected void Page_Load(object sender, EventArgs e)
    {
		pst = "Incomplete";
		cmd = "delete from Members where PaymentStatus='" + pst + "'";
		dm.ExInsertUpdateorDelete(cmd);
		HttpCookie acook = new HttpCookie("memberid")
		{
			Value = null,
			Expires = DateTime.Now.AddDays(2)
		};
		Response.Cookies.Add(acook);
	}
    protected void delreg_Click(object sender, EventArgs e)
    {
        cmd = "delete from Members where EmailID='" + delmailtxt.Text.ToLower().ToString() + "'";
        if (dm.ExInsertUpdateorDelete(cmd))
        {
            Response.Write("<script>alert('Deleted.')</script>");
        }
        else
        {
            Response.Write("<script>alert('Not deleted.')</script>");
        }
    }
    protected void subbtn_Click(object sender, EventArgs e)
    {
		//Response.Write("<script>alert('NOTE: This website is under construction. Sorry for the dust! We know it’s taking a while but sit tight and we’ll be with you soon.')</script>");
		cmd = "select * from Members where EmailID='" + mailtxt.Text.ToLower().ToString() + "'";
		DataTable dt = dm.SelectQuary(cmd);
		if (dt.Rows.Count > 0)
		{
			informer.Text = "alreadyRegistered";
			info.Text = "&emsp;It looks like You are already registered for NEEV Membership. Contact NEEV Coordinator for more details. Click <a href='Contact_Us' class='link click-on'>here</a> for redirect to contact page.";
		}
		else
		{
			string veri = "NO";
			cmd = gc.getcode();
			orid = cmd + "" + gc.getcode();
			if (memtypetxt.SelectedIndex == 1)
				amnt = "2000";
			else if (memtypetxt.SelectedIndex == 2)
				amnt = "500";
			else if (memtypetxt.SelectedIndex == 3)
				amnt = "200";
			else if (memtypetxt.SelectedIndex == 4)
				amnt = "100";
			cmd = "insert into Members values('" + mailtxt.Text.ToLower().ToString() + "','" + nametxt.Text.ToUpper().ToString() + "','" + desigtxt.Text.ToUpper().ToString() + "','" + mobtxt.Text.ToString() + "','" + add1txt.Text.ToUpper().ToString() + "','" + strtxt.Text.ToUpper().ToString() + "','" + potxt.Text.ToUpper().ToString() + "','" + disttxt.Text.ToUpper().ToString() + "','" + statetxt.Text.ToUpper().ToString() + "','" + pintxt.Text.ToString() + "','" + counttxt.Text.ToUpper().ToString() + "','" + uidtxt.Text.ToString() + "','" + pantxt.Text.ToUpper().ToString() + "','" + memtypetxt.SelectedValue.ToString() + "','" + amnt + "','" + pst + "','" + DateTime.Now.ToString() + "','" + veri + "','" + orid + "','" + trid + "')";
			if (dm.ExInsertUpdateorDelete(cmd) == true)
			{
				HttpCookie acook = new HttpCookie("memberid")
				{
					Value = mailtxt.Text.ToLower().ToString(),
					Expires = DateTime.Now.AddDays(2)
				};
				Response.Cookies.Add(acook);
				Response.Redirect("Member_Checkout?user_data=" + orid + "");

				//informer.Text = "success";
				//cmd = "&emsp;You are registered successfully for NEEV Membership. You have a " + memtypetxt.SelectedValue.ToString() + " type Membership. Go Back to <a href='Home' class='link click-on'>Home</a>.";
				//info.Text = cmd;
				//mm.SendMail(mailtxt.Text.ToLower().ToString(), "NEEV Membership Registration", cmd);

				//nametxt.Text = "";
				//desigtxt.Text = "";
				//mobtxt.Text = "";
				//mailtxt.Text = "";
				//add1txt.Text = "";
				//strtxt.Text = "";
				//potxt.Text = "";
				//disttxt.Text = "";
				//statetxt.Text = "";
				//pintxt.Text = "";
				//counttxt.Text = "";
			}
			else
			{
				informer.Text = "failed";
				info.Text = "&emsp;Something went wrong, Please try again later.";
			}
		}
	}
}