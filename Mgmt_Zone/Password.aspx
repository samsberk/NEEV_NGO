<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Password.aspx.cs" Inherits="Mgmt_Zone_Password" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Reset Password | Home | NEEV - National Education Enrichment in Villages</title>
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
					<h3><i class="fa fa-lock"></i> Reset Password</h3><hr />
					<div class="row">
						<div class="col-sm-4"></div>
						<div class="col-sm-4">
							<div class="section-box-in" style="box-shadow:0px 1px 10px gray;border-radius:10px;padding:20px 20px;border:1px solid lightgray;background:white;">
								<label class="txt-box-label">Enter New Password :</label>
								<asp:TextBox runat="server" ID="passtxt" TextMode="Password" MaxLength="30" Placeholder="Enter Password" CssClass="txt-box" style="text-transform:unset;"></asp:TextBox><br />
								<label class="txt-box-label">Re-enter New Password :</label>
								<asp:TextBox runat="server" ID="repasstxt" TextMode="Password" MaxLength="30" Placeholder="Re-enter Password" CssClass="txt-box" style="text-transform:unset;"></asp:TextBox><br /><br />
								<label class="chcontainer">Agree T&C
									<input type="checkbox" id="chkbx" />
									<span class="checkmark"></span>
								</label><br />
								<asp:Button runat="server" ID="subbtn" CssClass="btn btn-warning" Text="Change Password" OnClick="subbtn_Click"/>
								
							</div>
						</div>
						<div class="col-sm-4"></div>
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
		else if ($("#informer").text() == "successpassword") {
			$(".alert-box").show();
		}
		else if ($("#informer").text() == "failpassword") {
			$(".alert-box").show();
		}
		$(".close-alert-box").click(function () {
			$(".alert-box").fadeOut();
		});
		$("#subbtn").attr("disabled", true);
		$("#subbtn").val("Agree T&C Before Submit");
		var chk = document.getElementById("chkbx");
		$("#chkbx").bind("change", function () {
			var pas = document.getElementById("passtxt");
			var repas = document.getElementById("repasstxt");
			if (chk.checked == true) {
				if (pas.value == "") {
					alert("Please Enter Password");
					pas.focus();
					chk.checked = false;
				}
				else if (repas.value == "") {
					alert("Please Re-enter Password");
					repas.focus();
					chk.checked = false;
				}
				else if (repas.value != pas.value) {
					alert("Password did not matched.");
					pas.focus();
					chk.checked = false;
				}
				else {
					$("#subbtn").attr("disabled", false);
					$("#subbtn").val("Change Password");
				}
				
			}
			else {
				$("#subbtn").attr("disabled", true);
				$("#subbtn").val("Agree T&C Before Submit");
			}
		});
	</script>
</body>
</html>
