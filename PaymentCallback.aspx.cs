using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Razorpay.Api;
using System.Data;

public partial class PaymentCallback : System.Web.UI.Page
{
	string cmd, pst, mid;
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
		DataTable dtc = dm.SelectQuary(cmd);
		if (dtc.Rows.Count > 0)
		{
			try
			{
				string paymentId = Request.Form["razorpay_payment_id"];
				string orderId = Request.Form["razorpay_order_id"];
				string signature = Request.Form["razorpay_signature"];

				string key = "rzp_live_C1TCC00eZTyOW3";
				string secret = "eP3U8XrzsOVCGxktLdfEN0PB";

				RazorpayClient client = new RazorpayClient(key, secret);

				Dictionary<string, string> attributes = new Dictionary<string, string>();

				attributes.Add("razorpay_payment_id", paymentId);
				attributes.Add("razorpay_order_id", orderId);
				attributes.Add("razorpay_signature", signature);

				Utils.verifyPaymentSignature(attributes);

				pst = "Paid";
				cmd = "update Members set PaymentStatus='" + pst + "', OrderID='" + orderId + "', TransactionID='" + paymentId + "' where EmailID='" + mid + "'";
				if (dm.ExInsertUpdateorDelete(cmd))
				{
					payidlbl.Text = paymentId;
					oidlbl.Text = orderId;
					suclbl.InnerHtml = "<i class='fa fa-check-circle-o' style='color:green;'></i> Transaction Successfull.";
					cmd = "Dear " + dtc.Rows[0]["Name"].ToString() + ",<br/><br/>Welcome to the NEEV - National Education Enrichment in Villages, a social educational initiative of IIT alumni working for unprevillaged, poor and needy kids in slums, rural and tribal areas to provide quality education.<br/><br/>Please visit and subscribe :<br/>Facebook Page :<a href='https://www.facebook.com/neeviit'>Click Here</a><br/>YouTube Page :<a href='https://www.youtube.com/neeviit'>Click Here</a><br/>Telegram Page :<a href='https://t.me/neeviit'>Click Here</a><br/><br/>Now you are registered member of NEEV and you will get quarterly newsletter update of awareness webinars and different events organised by NEEV.";
					mm.SendMail(mid, "Member Registration Successful for NEEV", cmd);
				}
			}
			catch (Exception)
			{
				faillbl.InnerHtml = "<i class='fa fa-check-circle-o' style='color:red;'></i> Transaction Failed.";
			}
			cmd = "select * from Members where EmailID='" + mid + "'";
			DataTable dt = dm.SelectQuary(cmd);
			if (dt.Rows.Count > 0)
			{
				ammlbl.Text = dt.Rows[0]["Amount"].ToString();
				ammlbl.Text = dt.Rows[0]["Amount"].ToString() + " INR Only";
				moblbl.Text = dt.Rows[0]["Mobile"].ToString();
				namelbl.Text = dt.Rows[0]["Name"].ToString();
				memlbl.Text = dt.Rows[0]["MemberType"].ToString();
				emaillbl.Text = dt.Rows[0]["EmailID"].ToString();
				occlbl.Text = dt.Rows[0]["Occupation"].ToString();
				addlbl.Text = dt.Rows[0]["AddressLine"].ToString();
				pstlbl.Text = dt.Rows[0]["PaymentStatus"].ToString();
				uidlbl.Text = dt.Rows[0]["UID"].ToString();
				panlbl.Text = dt.Rows[0]["PAN"].ToString();
			}
		}
		else
		{
			informer.Text = "SessionLost";
			info.Text = "Session Lost. Please click <a href='Member_Page'>here</a> for Member Registration.";
		}
		
	}
}