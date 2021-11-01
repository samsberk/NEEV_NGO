using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Razorpay.Api;
using System.Data;

public partial class Member_CheckOut : System.Web.UI.Page
{
	public string orderId;
	public string amount;
	public string contact;
	public string name;
	public string product;
	public string email;
	string cmd, mid;
	DBManager dm = new DBManager();
	EncryptionDecryption ed = new EncryptionDecryption();
	MyMail mm = new MyMail();
	GenCaptcha gc = new GenCaptcha();
	protected void Page_Load(object sender, EventArgs e)
	{
		if (Request.Cookies["memberid"] == null)
			mid = "Blank";
		else
			mid = Request.Cookies["memberid"].Value.ToString();

		cmd = "select * from Members where EmailID='" + mid + "'";
		DataTable dt = dm.SelectQuary(cmd);
		if (dt.Rows.Count > 0)
		{
			orderId = dt.Rows[0]["OrderID"].ToString();
			amount = (Convert.ToInt32(dt.Rows[0]["Amount"].ToString()) * 100).ToString();
			ammlbl.Text = dt.Rows[0]["Amount"].ToString() + " INR Only";
			moblbl.Text = contact = dt.Rows[0]["Mobile"].ToString();
			namelbl.Text = name = dt.Rows[0]["Name"].ToString();
			memlbl.Text = product = dt.Rows[0]["MemberType"].ToString();
			emaillbl.Text = email = dt.Rows[0]["EmailID"].ToString();
			occlbl.Text = dt.Rows[0]["Occupation"].ToString();
			addlbl.Text = dt.Rows[0]["AddressLine"].ToString();
			pstlbl.Text = dt.Rows[0]["PaymentStatus"].ToString();
			uidlbl.Text = dt.Rows[0]["UID"].ToString();
			panlbl.Text = dt.Rows[0]["PAN"].ToString();


			Dictionary<string, object> input = new Dictionary<string, object>();
			input.Add("amount", amount);
			input.Add("currency", "INR");
			input.Add("payment_capture", 1);

			//string key = "rzp_test_VmYmLFLonMMWt8";
			//string secret = "h3epO7FcFbc8VjpdOJJMksLk";
			string key = "rzp_live_C1TCC00eZTyOW3";
			string secret = "eP3U8XrzsOVCGxktLdfEN0PB";

			RazorpayClient client = new RazorpayClient(key, secret);

			Razorpay.Api.Order order = client.Order.Create(input);
			orderId = order["id"].ToString();
		}
		else
		{
			informer.Text = "SessionLost";
			info.Text = "Session Lost. Please click <a href='Member_Page'>here</a> for Member Registration.";
		}

		
	}
}