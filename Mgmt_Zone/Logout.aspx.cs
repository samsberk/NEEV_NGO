﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Mgmt_Zone_Logout : System.Web.UI.Page
{
	protected void Page_Load(object sender, EventArgs e)
	{
		HttpCookie cookaid = new HttpCookie("staff")
		{
			Value = null,
			Expires = DateTime.Now.AddMilliseconds(3)
		};
		Response.Cookies.Add(cookaid);
		Response.Redirect("Staff");
	}
}