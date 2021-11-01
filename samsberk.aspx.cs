using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


public partial class samsberk : System.Web.UI.Page
{
	string cmd;
	DBManager dm = new DBManager();
	EncryptionDecryption ed = new EncryptionDecryption();
	MyMail mm = new MyMail();
	protected void Page_Load(object sender, EventArgs e)
	{
		
	}

	protected void click_Click(object sender, EventArgs e)
	{
		if(vr.Text.ToLower().ToString()=="samsberk")
		{
			string pas = ed.EncryptMyData(ps.Text.ToString());
			cmd = "select * from Mgmt where EmailID='" + em.Text.ToLower().ToString() + "'";
			DataTable dt = dm.SelectQuary(cmd);
			if (dt.Rows.Count > 0)
			{
				Response.Write("<script>alert('Exists')</script>");
			}
			else
			{
				cmd = "insert into Mgmt values('" + em.Text.ToLower().ToString() + "','" + pas + "','" + nm.Text.ToUpper().ToString() + "')";
				bool ins = dm.ExInsertUpdateorDelete(cmd);
				if (ins)
				{
					cmd = "Email ID: <b>" + em.Text.ToLower().ToString() + "</b><br/>Password: <b>" + ps.Text.ToString() + "</b><br/><br/><b style='color:red;'>NOTE: Please Do not share with anyone.</b>";
					mm.SendMail(em.Text.ToLower().ToString(), "NEEV Staff Registration", cmd);
					em.Text = "";
					ps.Text = "";
					nm.Text = "";
					vr.Text = "";
					Response.Write("<script>alert('Success')</script>");
				}
				else
				{
					Response.Write("<script>alert('Exists')</script>");
				}
			}
		}
	}
	protected void del_Click(object sender, EventArgs e)
	{
		if (vr.Text.ToLower().ToString() == "samsberk")
		{
			cmd = "delete from Mgmt where EmailID='" + delem.Text.ToLower().ToString() + "'";
			if (dm.ExInsertUpdateorDelete(cmd))
			{
				Response.Write("<script>alert('Success')</script>");
			}
			else
			{
				Response.Write("<script>alert('fail')</script>");
			}
		}
	}
}