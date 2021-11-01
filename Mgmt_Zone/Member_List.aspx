<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Member_List.aspx.cs" Inherits="Mgmt_Zone_Member_List" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Member List - NEEV</title>
	<meta name="theme-color" content="#ffffff" />
	<meta name="msApplication-navbutton-color" content="#ffffff" />
	<meta name="apple-mobile-web-app-status-bar-style" content="#ffffff" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link id="Link1" runat="server" rel="Shortcut Icon" href="../Images/fi.png" type="image/x-icon"/>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
	<link href="../MyCSS/ACSS.css" rel="stylesheet" type="text/css"/>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="../MyJS/AJS.js"></script>
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css" />
	<link href="https://fonts.googleapis.com/css?family=Inconsolata|Poppins|Karma|Muli|Yantramanav|Kalam|Pacifico|Quicksand|Sedgwick+Ave" rel="stylesheet"/>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
	<script>
		function printthis(listbox) {
			var de = document.getElementById("listbox").innerHTML;
			var oldp = document.body.innerHTML;
			document.body.innerHTML = "<html><body>" + de + "</body></html>";
			window.print();
			document.body.innerHTML = oldp;
		}
    </script>
	<style>
		*{
			
			user-select:text;
		}
		th,td{
			padding:2px 3px;
			text-align:center;
			border:0.5px solid lightgray;
			font-size:11px;
			font-family:Yantramanav;
		}
		table{
			width:100%;
		}
	</style>
</head>
<body>
    <form id="form1" runat="server">
		<!--------------------------------------------------------------- Loader ----------------------------------------------------------------->
		<div id="loader">
			<div class="row loader-footer">
				<div class="col-sm-6 text-center"><span class="link stop-loading" style="cursor:alias;">STOP LOADING <i class="fa fa-hand-paper-o"></i></span></div>
				<div class="col-sm-6 text-center"><span>Designed with <i class="fa fa-heartbeat"></i> By : <a href="http://www.linkedin.com/in/samsberk" target="_blank" class="link">samsberk</a></span></div>
			</div>
        </div>
        <div class="after-click">
			<div class="row loader-footer">
				<div class="col-sm-6 text-center"><span class="link stop-loading" style="cursor:alias;">STOP LOADING <i class="fa fa-hand-paper-o"></i></span></div>
				<div class="col-sm-6 text-center"><span>Designed with <i class="fa fa-heartbeat"></i> By : <a href="http://www.linkedin.com/in/samsberk" target="_blank" class="link">samsberk</a></span></div>
			</div>
        </div>
		
		<!--------------------------------------------------------------- Nav bar ----------------------------------------------------------------->
        <nav class="nav navbar-fixed-top mymnav">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navmenu"><i class="fa fa-align-justify"></i></button>
                    <a href="Staff_Home" class="navbar-brand mybrand click-on"> NEEV</a>
                </div>
                <div id="navmenu" class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-right mynavmenu">
                        <li><a href="Staff_Home" class="click-on"><i class="fa fa-home"></i> HOME</a></li>
                        <li><a href="Staff_Logout" class="click-on"><i class="fa fa-power-off"></i> LOGOUT</a></li>
                    </ul>
                </div>
            </div>
        </nav>
		<!--------------------------------------------------------------- Body ----------------------------------------------------------------->
		<div class="panel-body" style="min-height:100vh;padding:0px;border:none;">
			<!--------------------------------- Side Menu --------------------------------->
			<div class="side-menu">
				<a href="Staff_Home" class="click-on"><span class="glyphicon glyphicon-th" style="border-top:0.5px solid gray;padding-left:20%;" data-toggle="tooltip" data-placement="right" title="DASHBOARD"></span></a>
				<a href="Staff_Password" class="click-on"><span class="glyphicon glyphicon-lock" data-toggle="tooltip" data-placement="right" title="RESET PASSWORD"></span></a>
				<a href="Home" target="_blank"><span class="glyphicon glyphicon-home" data-toggle="tooltip" data-placement="right" title="Go to NEEV_Home in New Tab"></span></a>
			</div>
			<div class="side-menu-box">
				<!--------------------------------- Side content --------------------------------->
				<div class="panel-body"><br />
					<h4>Old List (This would not print when you click on print button available below)</h4><hr />
					<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="EmailID" DataSourceID="SqlDataSource1">
						<Columns>
							<asp:BoundField DataField="EmailID" HeaderText="Email ID" ReadOnly="True" SortExpression="EmailID" />
							<asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
							<asp:BoundField DataField="Occupation" HeaderText="Occupation" SortExpression="Occupation" />
							<asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
							<asp:BoundField DataField="AddressLine" HeaderText="Address Line" SortExpression="AddressLine" />
							<asp:BoundField DataField="Street" HeaderText="Street" SortExpression="Street" />
							<asp:BoundField DataField="PostOffice" HeaderText="Post Office" SortExpression="PostOffice" />
							<asp:BoundField DataField="District" HeaderText="District" SortExpression="District" />
							<asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
							<asp:BoundField DataField="PIN" HeaderText="PIN" SortExpression="PIN" />
							<asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
							<%--<asp:BoundField DataField="MemberType" HeaderText="Member Type" SortExpression="MemberType" />
							<asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
							<asp:BoundField DataField="PaymentStatus" HeaderText="Payment Status" SortExpression="PaymentStatus" />--%>
							<asp:BoundField DataField="RegDate" HeaderText="Regd Date" SortExpression="RegDate" />
							<%--<asp:BoundField DataField="OrderID" HeaderText="OrderID" SortExpression="OrderID" />
							<asp:BoundField DataField="TransactionID" HeaderText="TransactionID" SortExpression="TransactionID" />--%>
						</Columns>
					</asp:GridView>
					<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NEEVConnectionString %>" SelectCommand="SELECT [EmailID], [Name], [Occupation], [Mobile], [AddressLine], [Street], [PostOffice], [District], [State], [PIN], [Country], [RegDate] FROM [Member]"></asp:SqlDataSource>
					<%--<table border="1" style="width:100%;">
						<tr><th>Name</th><th>Designation</th><th>Mobile</th><th>Email</th></tr>
						<tr><td></td><td></td><td></td><td></td></tr>
						<asp:PlaceHolder runat="server" ID="listph"></asp:PlaceHolder>
					</table>--%>
					<br /><br /><h3><i class="fa fa-list-ol"></i> Member List 
						<button type="button" id="printbtn" onclick="javascript:printthis('listbox')" class="pull-right btn btn-success" style="margin-left:10px;margin-right:100px;" data-toggle="tooltip" data-placement="right" title="Print List"><i class="fa fa-print"></i> Print</button>
						<a href="Member_List" class="pull-right btn btn-info" data-toggle="tooltip" data-placement="left" title="Refresh List"><i class="fa fa-refresh"></i> Refresh</a>						
					</h3>
					<hr style="margin-bottom:0;"/>
					<div class="panel-body" id="listbox">
						<asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="EmailID" DataSourceID="SqlDataSource2">
							<Columns>
								<asp:BoundField DataField="EmailID" HeaderText="Email ID" ReadOnly="True" SortExpression="EmailID" />
								<asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
								<asp:BoundField DataField="Occupation" HeaderText="Occupation" SortExpression="Occupation" />
								<asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
								<asp:BoundField DataField="AddressLine" HeaderText="Address Line" SortExpression="AddressLine" />
								<asp:BoundField DataField="Street" HeaderText="Street" SortExpression="Street" />
								<asp:BoundField DataField="PostOffice" HeaderText="Post Office" SortExpression="PostOffice" />
								<asp:BoundField DataField="District" HeaderText="District" SortExpression="District" />
								<asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
								<asp:BoundField DataField="PIN" HeaderText="PIN" SortExpression="PIN" />
								<asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
								<asp:BoundField DataField="UID" HeaderText="UID" SortExpression="UID" />
								<asp:BoundField DataField="PAN" HeaderText="PAN" SortExpression="PAN" />
								<asp:BoundField DataField="MemberType" HeaderText="Member Type" SortExpression="MemberType" />
								<asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
								<asp:BoundField DataField="PaymentStatus" HeaderText="Payment Status" SortExpression="PaymentStatus" />
								<asp:BoundField DataField="RegDate" HeaderText="Reg. Date" SortExpression="RegDate" />
								<asp:BoundField DataField="OrderID" HeaderText="Order ID" SortExpression="OrderID" />
								<asp:BoundField DataField="TransactionID" HeaderText="Transaction ID" SortExpression="TransactionID" />
							</Columns>
						</asp:GridView>
						<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:NEEVConnectionString %>" SelectCommand="SELECT [EmailID], [Name], [Occupation], [Mobile], [AddressLine], [Street], [PostOffice], [District], [State], [PIN], [Country], [UID], [PAN], [MemberType], [Amount], [PaymentStatus], [RegDate], [OrderID], [TransactionID] FROM [Members] ORDER BY [RegDate]"></asp:SqlDataSource>
					</div>
					<hr />
				</div>
			</div>
		</div>
		<!--------------------------------------------------------------- Footer ----------------------------------------------------------------->
		<footer >
			&copy; neeviit.org | All Rights Reserved<br />
			Designed & Developed By : <a href="http://www.linkedin.com/in/samsberk" target="_blank" class="link-footer" data-toggle="tooltip" data-placement="top" title="LinkedIN Profile">samsberk</a><br />
		</footer>
		<!--------------------------------------------------------------- Notification ----------------------------------------------------------------->
		<asp:Label runat="server" ID="informer"></asp:Label>
		<asp:Label runat="server" ID="show"></asp:Label>
		<div class="alert-box">
			<div class="alert-dialog text-center">
				<h4><i class="fa fa-bullhorn"></i> ALERT</h4><hr />
				<asp:Label runat="server" ID="alerttext" style="font-size:17px;"></asp:Label><hr />
				<button type="button" class="btn btn-default close-alert-box">Done</button>
			</div>
		</div>
    </form>
	<!--------------------------------------------------------------- Scripting ----------------------------------------------------------------->
	<script src="../MyJS/FooterJS.js"></script>
	<script type="text/javascript">
		if ($("#informer").text() == "NotAccessThisPage") {
			$(".alert-box").show();
		}
		$(".close-alert-box").click(function () {
			$(".alert-box").fadeOut();
		});
	</script>
</body>
</html>
