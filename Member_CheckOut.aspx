<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Member_CheckOut.aspx.cs" Inherits="Member_CheckOut" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Member Checkout - National Education Enrichment in Villages (NEEV)</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link id="Link1" runat="server" rel="Shortcut Icon" href="Images/fi.png" type="image/x-icon"/>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
	<link href="MyCSS/MyCSS.css" rel="stylesheet" type="text/css"/>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="MyJS/MyJS.js" type="text/javascript"></script>
	<link href="MyCSS/hover.css" rel="stylesheet" />
	<link href="https://fonts.googleapis.com/css?family=Karma|Muli|Yantramanav" rel="stylesheet"/>
	<link href="https://fonts.googleapis.com/css?family=Kalam|Muli|Pacifico|Quicksand|Sedgwick+Ave" rel="stylesheet"/>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/fontawesome.css"/>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.3/Chart.bundle.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.3/Chart.bundle.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.3/Chart.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.3/Chart.min.js"></script>
	<link href="MyCSS/owl.carousel.min.css" rel="stylesheet" />
	<link href="MyCSS/owl.theme.default.min.css" rel="stylesheet" />
	
	<style>
		td, th{
			border:0.5px solid lightgray;
			color:black;
			padding:3px 10px;
			text-align:center;
		}
		tr:hover{
			background:lightgray;
		}
		.lbl-black{
			color:black;
		}

	</style>
</head>
<body>
		
	<%---------------------------------------------- Loader ---------------------------------------------------%>
	<div id="loader"></div>
	<div class="after-click"></div>
		
	<%---------------------------------------------- Header ---------------------------------------------------%>
	<div class="header" id="Top">
		<div class="panel-body" style="min-height:100vh;">
			<div class="row">
				<div class="col-md-4"></div>
				<div class="col-md-4 text-center">
					<h4 style="color:red;">Please Do Not Press Back Button or Press F5.</h4><hr />
					<img src="Images/logo-min.png" style="width:100%;"/>
					<br /><br />
					<table border="1" style="width:100%;">
						<tr><td>Full Name</td><td><asp:Label runat="server" ID="namelbl" Text="Unauthorized" CssClass="lbl-black"></asp:Label></td></tr>
						<tr><td>Occupation</td><td><asp:Label runat="server" ID="occlbl" Text="Unauthorized" CssClass="lbl-black"></asp:Label></td></tr>
						<tr><td>Mobile No.</td><td><asp:Label runat="server" ID="moblbl" Text="Unauthorized" CssClass="lbl-black"></asp:Label></td></tr>
						<tr><td>Email ID</td><td><asp:Label runat="server" ID="emaillbl" Text="Unauthorized" CssClass="lbl-black"></asp:Label></td></tr>
						<tr><td>Address</td><td><asp:Label runat="server" ID="addlbl" Text="Unauthorized" CssClass="lbl-black"></asp:Label></td></tr>
						<tr><td>UID</td><td><asp:Label runat="server" ID="uidlbl" Text="Unauthorized" CssClass="lbl-black"></asp:Label></td></tr>
						<tr><td>PAN</td><td><asp:Label runat="server" ID="panlbl" Text="Unauthorized" CssClass="lbl-black"></asp:Label></td></tr>
						<tr><td>Member Type</td><td><asp:Label runat="server" ID="memlbl" Text="Unauthorized" CssClass="lbl-black"></asp:Label></td></tr>
						<tr><td>Ammount</td><td><asp:Label runat="server" ID="ammlbl" Text="Unauthorized" CssClass="lbl-black"></asp:Label></td></tr>
						<tr><td style="color:red;font-weight:bold;">Payment Status</td><td><asp:Label runat="server" ID="pstlbl" Text="Unauthorized" CssClass="lbl-black" style="color:red;font-weight:bold;"></asp:Label></td></tr>
					</table><br /><br />
					<button id="rzp-button1" class="btn btn-success">Continue to Pay</button><br /><br />
					<button class="btn btn-danger btn-sm pcancel">Cancel</button>
					<script src="https://checkout.razorpay.com/v1/checkout.js"></script>
					<script>
					var options = {
						"key": "rzp_live_C1TCC00eZTyOW3", // Enter the Key ID generated from the Dashboard
						"amount": "<%=amount%>", // Amount is in currency subunits. Default currency is INR. Hence, 50000 refers to 50000 paise
						"currency": "INR",
						"name": "<%=name%>",
						"description": "<%=product%>",
						"image": "http://neeviit.org/Images/logo200x200.png",
						"order_id": "<%=orderId%>", //This is a sample Order ID. Pass the `id` obtained in the response of Step 1
						"callback_url": "Payment_Confirmation",
						"prefill": {
							"name": "<%=name%>",
							"email": "<%=email%>",
							"contact": "<%=contact%>"
						},
						"notes": {
							"address": "Razorpay Corporate Office"
						},
						"theme": {
							"color": "#121451"
						}
					};
					var rzp1 = new Razorpay(options);
					document.getElementById('rzp-button1').onclick = function(e){
						rzp1.open();
						e.preventDefault();
					}
					</script>
					<%--<form action="Payment_Callback" method="post">
						<script
							src="https://checkout.razorpay.com/v1/checkout.js"
							data-key="rzp_test_8fad4ni0l4m0ts"
							data-amount="<%=amount%>"
							data-name="<%=name%>"
							data-description="<%=product%>"
							data-order_id="<%=orderId%>"
							data-image="https://razorpay.com/favicon.png"
							data-buttontext="Pay with Razorpay"
							data-prefill.name="<%=name%>"
							data-prefill.email="<%=email%>"
							data-prefill.contact="<%=contact%>"
							data-theme.color="#121451">
						</script>
					</form>--%>
				</div>
				<div class="col-md-4"></div>
			</div>
		</div>
	</div>
		

	<%----------------------------------------------------------------------------- Footer ----------------------------------------------------------------------%>
	<div class="panel-body" style="height:10px;width:100%;background:url('Images/joint-w2b.jpg');background-repeat:no-repeat;padding-bottom:0;"></div>
	<footer>
		<div class="panel-body">
			<a href="#Top" class="big-link hvr-icon-float-away" style="color:white;">
				<i class="fa fa-arrow-up hvr-icon"></i><br />
				<img class="logo-200" src="Images/logo150x150.png" />
			</a><br />
			<%--<h5 style="font-size:18px;font-family:'pacifico';font-weight:100;">Collaboration with NGO</h5>
			<img src="Images/logo.png" style="height:50px;width:50px;"/>
			<img src="Images/logo.png" style="height:50px;width:50px;"/>
			<img src="Images/logo.png" style="height:50px;width:50px;"/>
			<img src="Images/logo.png" style="height:50px;width:50px;"/>
			<img src="Images/logo.png" style="height:50px;width:50px;"/>
			<img src="Images/logo.png" style="height:50px;width:50px;"/>--%>
			<hr style="margin-bottom:0px;background:white;"/>
			<div class="row" style="font-size:18px;">
				<div class="col-sm-1"></div>
				<div class="col-sm-10">
					<div class="row">
						<div class="col-sm-4"><br />
							<h3 class="default-h" style="color:white;">- Address -</h3>
							<p class="default-p" style="color:white;">
								C-45<br />
								Pandav Nagar<br />
								District - Meerut<br />
								State -Uttar Pradesh<br />
								Country - India<br />
								ZIP - 250001<br />
							</p>
						</div>
						<div class="col-sm-4"><br />
							<h3 class="default-h" style="color:white;">- About Us -</h3>
							<p class="default-p" style="color:white;">
								we are basically focusing on to the village kids (slum and tribal area) who do not have education due to financial reasons or any other reasons. we wish that they should also contribute towards Indian development, which can only be one via education.
							</p>
								
						</div>
						<div class="col-sm-4"><br />
							<h3 class="default-h" style="color:white;">- Useful Links -</h3>
							<p class="default-p" style="color:white;">
								<a href="NEEV_Classes" class="link-footer click-on" >NEEV Classes</a><br />
								<a href="Team_NEEV" class="link-footer click-on" >Team NEEV</a><br />
								<a href="Member_Page" class="link-footer click-on" >Member Registration</a><br />
								<a href="Staff" class="link-footer click-on" >Staff Login</a><br />
								<a href="Our_Story" class="link-footer click-on" >Our Story</a><br />
								<a href="About_Us" class="link-footer click-on" >About Us</a><br />
							</p>
						</div>
					</div>
				</div>
				<div class="col-sm-1"></div>
			</div>
			<hr style="background:white;height:1px;"/>
		</div>
		&copy; 2020 NEEV - National Education Enrichment in Villages<br />All Rights Reserved | <a href="Privacy_Policy" target="_blank" class="link-footer" data-toggle="tooltip" data-placement="top" title="Privacy Policy">Privacy Policy</a><br />
		Designed & Developed By : <a href="http://www.linkedin.com/in/samsberk" target="_blank" class="link-footer" data-toggle="tooltip" data-placement="top" title="LinkedIN Profile">samsberk</a><br />
	<br /></footer>
	<div class="panel-body" style="height:10px;width:100%;background:url('Images/joint-b2w.jpg');background-repeat:no-repeat;padding-bottom:0;"></div>

	<%---------------------------------------------------------------------------- Notification Box -------------------------------------------------------------------%>
	<div class="notcon" runat="server">
		<div class="notification-box" runat="server">
			<div class="row">
				<div class="col-xs-8"><span><b style="color:black;"><span class="glyphicon glyphicon-bell" style="color:black;"></span>&ensp;Notification</b></span></div>
				<div class="col-xs-4"><p style="text-align:right;color:black;"><span style="color:black;" class="glyphicon glyphicon-remove close-notice" data-toggle="tooltip" data-placement="top" title="Close Notification"></span></p></div>
			</div>
			<hr style="margin:0px;margin-bottom:10px;" />
			<asp:Label ID="info" runat="server" style="font-weight:300;color:black;"></asp:Label>
		</div>
	</div>
	<asp:Label runat="server" ID="informer"></asp:Label>
	<script src="MyJS/FooterJS.js" type="text/javascript"></script>
	<script src="MyJS/owl.carousel.min.js"></script>

	<script type="text/javascript">
		$(".pcancel").click(function () {
			if (confirm("If you cancel payment, your registration will not be completed, and your data will not be saved. You have to fill the form again to register. Do you want to cancel payment?")===true) {
				location.href = "Member_Page";
			}
			else {

			}
		});



		if ($("#informer").text() === "Unauthorized") {
			$(".notcon").show();
			window.setTimeout(function () {
				$(".notification-box").addClass("showNotice");
			}, 1000);
		}
		else if ($("#informer").text() === "SessionLost") {
			$(".notcon").show();
			window.setTimeout(function () {
				$(".notification-box").addClass("showNotice");
			}, 1000);
		}
	</script>
</body>
</html>
