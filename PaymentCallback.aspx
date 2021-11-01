<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PaymentCallback.aspx.cs" Inherits="PaymentCallback" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Payment Receipt for Membership - National Education Enrichment in Villages (NEEV)</title>
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
				<div class="col-md-4 text-center"><br />
					<img src="Images/logo-min.png" style="width:50%;"/><br /><br />
					<h4 id="suclbl" runat="server" style="color:green;text-align:center;">Payment Successful</h4>
					<h4 id="faillbl" runat="server" style="color:red;text-align:center;"></h4>
					<h5>- Membership Receipt -</h5>
					<br />
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
						<tr><td>Payment Status</td><td><asp:Label runat="server" ID="pstlbl" Text="Unauthorized" CssClass="lbl-black"></asp:Label></td></tr>
						<tr><td>Order ID</td><td><asp:Label runat="server" ID="oidlbl" Text="Unauthorized" CssClass="lbl-black"></asp:Label></td></tr>
						<tr><td>Payment/Transaction ID</td><td><asp:Label runat="server" ID="payidlbl" Text="Unauthorized" CssClass="lbl-black"></asp:Label></td></tr>
					</table><br />
					<button type="button" onclick="javascript:window.print()" class="btn btn-info"><i class="fa fa-print"></i> Print</button>
					&ensp;<a href="Home" class="btn btn-success"><i class="fa fa-home"></i> Home</a>
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
