<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Member_Page.aspx.cs" Inherits="Member_Page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Member Page - National Education Enrichment in Villages (NEEV)</title>
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
		option{
			font-size:14px;
			font-weight:bold;
			color:black;
		}
	</style>
</head>
<body>
    <form id="form1" runat="server">
		
		<%---------------------------------------------- Loader ---------------------------------------------------%>
		<div id="loader"></div>
		<div class="after-click"></div>
		
		<%---------------------------------------------- Header ---------------------------------------------------%>
		<div class="header" id="Top">
			<div class="panel-body text-center">
				<div class="not-on-phone upper-nav" style="position:absolute;right:0;margin-right:50px;z-index:2;">
					<a href="Member_Page" class="click-on">Member Registration</a> | <a href="Staff" class="click-on">Staff Login</a>
				</div>
				<div class="panel-body">
					<div class="row">
						<div class="col-md-5">
							<a href="Home"><img src="Images/logo-min.png" style="width:100%;"/></a>
						</div>
						<div class="col-md-7"></div>
					</div>
				</div>
			</div>
		</div>
		<ul id="Main_Content">
			<li class="on-phone"><button type="button" class="toggle-menu"><i class="fa fa-align-justify"></i> MENU</button></li>
			<li class="not-on-phone" style="margin-left:20px;"><a href="Home" class="click-on hvr-underline-from-center">HOME</a></li>
			<li class="not-on-phone"><a href="Events" class="click-on hvr-underline-from-center">EVENTS</a></li>
			<li class="not-on-phone"><a href="Team_NEEV" class="click-on hvr-underline-from-center">TEAM NEEV</a></li>
			<li class="not-on-phone"><a href="Contributors" class="click-on hvr-underline-from-center">CONTRIBUTORS</a></li>
			<li class="not-on-phone"><a href="Media_Coverage" class="click-on hvr-underline-from-center">MEDIA COVERAGE</a></li>
			<li class="not-on-phone"><a href="Photo_Gallery" class="click-on hvr-underline-from-center">PHOTO GALLERY</a></li>
			<li class="not-on-phone"><a href="About_Us" class="click-on hvr-underline-from-center">ABOUT US</a></li>
			<li class="not-on-phone"><a href="Contact_Us" class="click-on hvr-underline-from-center">CONTACT US</a></li>
			<li style="background:yellow;float:right;margin-right:20px;"><a href="Donate" class="click-on hvr-underline-from-center">DONATE</a></li>
		</ul>
		<div class="panel-body mob-menu">
			<a href="Home" class="click-on">HOME</a><br /><br />
			<a href="Events" class="click-on">EVENTS</a><br /><br />
			<a href="Team_NEEV" class="click-on">TEAM NEEV</a><br /><br />
			<a href="Contributors" class="click-on">CONTRIBUTORS</a><br /><br />
			<a href="Media_Coverage" class="click-on">MEDIA COVERAGE</a><br /><br />
			<a href="Photo_Gallery" class="click-on">PHOTO GALLERY</a><br /><br />
			<a href="About_Us" class="click-on">ABOUT US</a><br /><br />
			<a href="Contact_Us" class="click-on">CONTACT US</a><br /><br />
			<a href="Member_Page" class="click-on">MEMBER</a><br /><br />
			<a href="Staff" class="click-on">STAFF LOGIN</a><br /><br />
		</div>
		<%---------------------------------------------- Our Pragrammes ---------------------------------------------------%>
		<div class="panel-body" style="height:10px;width:100%;background:url('Images/joint-w2br.jpg');background-repeat:no-repeat;padding-bottom:0;margin-top:10px;"></div>
		<div class="panel-body" style="padding-top:10px;min-height:10vh;background:brown;">
			<div class="row">
				<h3 class="default-h text-center" style="color:white;"><i class="fa fa-user" id="o-delreg"></i><br />- Membership Form -</h3>
				<div class="delreg"><asp:TextBox runat="server" ID="delmailtxt" TextMode="Email"></asp:TextBox><asp:Button runat="server" ID="delreg" Text="Go" OnClick="delreg_Click"/></div>
				<div class="col-md-2"></div>
				<div class="col-md-8">
					<div class="section-box-in" style="box-shadow:0px 1px 10px brown;border-radius:10px;padding:20px 20px;border:1px solid gray;background:white;">
						<div class="row">
							<div class="col-md-6">
								<label class="txt-box-label">Full Name :</label>
								<asp:TextBox runat="server" ID="nametxt" MaxLength="30" Placeholder="Enter Full Name" CssClass="txt-box"></asp:TextBox>
							</div>
							<div class="col-md-6">
								<label class="txt-box-label">Occupation :</label>
								<asp:TextBox runat="server" ID="desigtxt" MaxLength="30" Placeholder="Enter Designation" CssClass="txt-box"></asp:TextBox>
							</div>
						</div>
						<div class="row">
							<div class="col-md-6">
								<label class="txt-box-label">Mobile Number :</label>
								<asp:TextBox runat="server" ID="mobtxt" TextMode="Number" Placeholder="Mobile 10 Digit Mobile Number" CssClass="txt-box"></asp:TextBox>
							</div>
							<div class="col-md-6">
								<label class="txt-box-label">E-Mail :</label>
								<asp:TextBox runat="server" ID="mailtxt" TextMode="Email" MaxLength="30" Placeholder="Enter E-Mail ID" CssClass="txt-box" style="text-transform:lowercase;"></asp:TextBox>
							</div>
						</div>
						
						<label class="txt-box-label">Permanent Address :</label>
						<div style="padding:15px;">
							<div class="row">
								<div class="col-sm-12">
									<label class="txt-box-label">Address Line :</label>
									<asp:TextBox runat="server" ID="add1txt" MaxLength="100" Placeholder="Address Line" CssClass="txt-box"></asp:TextBox>
								</div>
								<div class="col-sm-6">
									<label class="txt-box-label">Street :</label>
									<asp:TextBox runat="server" ID="strtxt" MaxLength="30" Placeholder="Enter Street" CssClass="txt-box"></asp:TextBox>
								</div>
								<div class="col-sm-6">
									<label class="txt-box-label">Post Office :</label>
									<asp:TextBox runat="server" ID="potxt" MaxLength="30" Placeholder="Enter Post Office" CssClass="txt-box"></asp:TextBox>
								</div>
								<div class="col-sm-6">
									<label class="txt-box-label">District :</label>
									<asp:TextBox runat="server" ID="disttxt" MaxLength="30" Placeholder="Enter District" CssClass="txt-box"></asp:TextBox>
								</div>
								<div class="col-sm-6">
									<label class="txt-box-label">State :</label>
									<asp:TextBox runat="server" ID="statetxt" MaxLength="30" Placeholder="Enter State" CssClass="txt-box"></asp:TextBox>
								</div>
								<div class="col-sm-6">
									<label class="txt-box-label">PIN Code (6 Digit) :</label>
									<asp:TextBox runat="server" ID="pintxt" TextMode="Number" MaxLength="6" Placeholder="Enter 6 Digit PIN Code" CssClass="txt-box"></asp:TextBox>
								</div>
								<div class="col-sm-6">
									<label class="txt-box-label">Country :</label>
									<asp:TextBox runat="server" ID="counttxt" MaxLength="30" Placeholder="Enter Country" CssClass="txt-box" Text="INDIA"></asp:TextBox>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-6">
								<label class="txt-box-label">Aadhaar Number (UID) :</label>
								<asp:TextBox runat="server" ID="uidtxt" TextMode="Number" Placeholder="Enter 12 Digit Aadhaar Number" CssClass="txt-box"></asp:TextBox>
							</div>
							<div class="col-md-6">
								<label class="txt-box-label">PAN (if not available, please enter <b style="color:red;">DEFAULTPAN</b>) :</label>
								<asp:TextBox runat="server" ID="pantxt" MaxLength="10" Placeholder="Enter 10 Digit PAN" CssClass="txt-box"></asp:TextBox>
							</div>
						</div>
						<div class="row">
							<div class="col-md-6">
								<label class="txt-box-label">Member Type :</label>
								<asp:DropDownList runat="server" ID="memtypetxt" CssClass="txt-box">
									<asp:ListItem Value="Select Member Type"></asp:ListItem>
									<asp:ListItem Value="Life Time Member"></asp:ListItem>
									<asp:ListItem Value="Yearly Member"></asp:ListItem>
									<asp:ListItem Value="Student Member"></asp:ListItem>
									<asp:ListItem Value="Volunteer"></asp:ListItem>
								</asp:DropDownList>
							</div>
							<div class="col-md-6">
								<label class="txt-box-label">Amount to Pay <i class="fa fa-rupee"></i> :</label>
								<asp:TextBox runat="server" ID="amtopay" Placeholder="Choose Member Type for Amount" CssClass="txt-box" style="color:green;"></asp:TextBox>
							</div>
						</div>
						<br />
						<label class="container">I hereby declare that all the above information is correct and accurate. 
							<input type="checkbox" id="chkbx" />
							<span class="checkmark"></span>
						</label><br />
						<asp:Button runat="server" ID="subbtn" CssClass="btn btn-success click-on" Text="Checkout" OnClick="subbtn_Click"/>
						<br />
						<%--<label class="txt-box-label" style="color:red;">NOTE: This website is under construction. Sorry for the dust! We know it’s taking a while but sit tight and we’ll be with you soon.</label>--%>
						<br />
						
					</div>
				</div>
				<div class="col-md-2"></div>
			</div>
		</div>
		<div class="panel-body" style="height:10px;width:100%;background:url('Images/joint.jpg');background-repeat:no-repeat;padding-bottom:0;"></div>
		
		<%--------------------------------------------------------------- Get Involved ----------------------------------------------------------------------%>
		<div class="panel-body">
			<div class="row text-center">
				<div class="col-md-1"></div>
				<div class="col-md-10">
					<h3 class="default-h"><i class="fa fa-coffee"></i><br />- Get Involved -</h3><hr />
					<div class="row">
						<div class="col-md-6">
							<div class="row">
								<div class="col-xs-6">
									<a href="Donate" class="hvr-icon-wobble-horizontal big-link click-on">
										Donate&ensp;<i class="fa fa-asl-interpreting hvr-icon"></i> 
									</a>
								</div>
								<div class="col-xs-6">
									<a href="Member_Page" class="big-link hvr-icon-down click-on">
										Member&ensp;<i class="fa fa-users hvr-icon"></i>
									</a>
								</div>
							</div>
						</div>
						<div class="col-md-6">
							<div class="row">
								<div class="col-xs-6">
									<a href="Member_Page" class="big-link hvr-icon-wobble-vertical click-on">
										JoinUs&ensp;<i class="fa fa-handshake hvr-icon"></i>
									</a>
								</div>
								<div class="col-xs-6">
									<a href="Contact_Us" class="big-link hvr-icon-spin click-on">
										Contact&ensp;<i class="fa fa-phone-square hvr-icon"></i>
									</a>
								</div>
							</div>
						</div>
					</div>
					<hr />
					<a href="https://www.facebook.com/neeviit" class="s-icon big-link" target="_blank"><i class="fa fa-facebook-square"></i></a>
					<a href="https://www.twitter.com/neeviit" class="s-icon big-link" target="_blank"><i class="fa fa-twitter-square"></i></a>
					<a href="https://www.linkedin.com/in/neeviit" class="s-icon big-link" target="_blank"><i class="fa fa-linkedin-square"></i></a>
					<a href="https://www.instagram.com/neeviit" class="s-icon big-link" target="_blank"><i class="fa fa-instagram"></i></a>
					<a href="https://www.youtube.com/neeviit" class="s-icon big-link" target="_blank" style="margin-right:0px;"><i class="fa fa-youtube-play"></i></a>
					<br />
					<br />
				</div>
				<div class="col-md-1"></div>
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
    </form>
	<script src="MyJS/FooterJS.js" type="text/javascript"></script>
	<script src="MyJS/owl.carousel.min.js"></script>

	<script type="text/javascript">

		$(".delreg").hide();
		$("#delreg").attr("disabled",true);
		$("#o-delreg").dblclick(function () {
			$(".delreg").slideToggle();
		});

		$("#delmailtxt").focus(function () {
			$("#delreg").attr("disabled",false);
		});

		$("#amtopay").attr("disabled", true);
		$("#subbtn").attr("disabled", true);
		$("#subbtn").val("Agree T&C Before Checkout");
		var mt = document.getElementById("memtypetxt");
		var atp = document.getElementById("amtopay");
		$("#memtypetxt").change( function () {
			if (mt.value == "Select Member Type") {
				$("#amtopay").val("Select Member Type for Amount");
			}
			else if (mt.value == "Life Time Member") {
				$("#amtopay").val("2000 INR Only");
			}
			else if (mt.value == "Yearly Member") {
				$("#amtopay").val("500 INR Only");
			}
			else if (mt.value == "Student Member") {
				$("#amtopay").val("200 INR Only");
			}
			else if (mt.value == "Volunteer") {
				$("#amtopay").val("100 INR Only");
			}
		});
		var chk = document.getElementById("chkbx");
		$("#chkbx").bind("change", function () {
			var name = document.getElementById("nametxt");
			var desig = document.getElementById("desigtxt");
			var mob = document.getElementById("mobtxt");
			var email = document.getElementById("mailtxt");
			var add1 = document.getElementById("add1txt");
			var street = document.getElementById("strtxt");
			var po = document.getElementById("potxt");
			var dist = document.getElementById("disttxt");
			var state = document.getElementById("statetxt");
			var pin = document.getElementById("pintxt");
			var country = document.getElementById("counttxt");
			var uid = document.getElementById("uidtxt");
			var pan = document.getElementById("pantxt");
			var mt = document.getElementById("memtypetxt");
			if (chk.checked == true) {
				
				if (name.value == "") {
					alert("Please Enter Your Name");
					name.focus();
					chk.checked = false;
				}
				else if (desig.value == "") {
					alert("Please Enter Your Occupation");
					desig.focus();
					chk.checked = false;
				}
				else if (mob.value == "") {
					alert("Please Enter Your Mobile Number");
					mob.focus();
					chk.checked = false;
				}
				else if ($("#mobtxt").val().length > 10 || $("#mobtxt").val().length < 10) {
					alert("Please Enter Valid Mobile Number.");
					mob.focus();
					chk.checked = false;
				}
				else if (email.value == "") {
					alert("Please Enter Your Email");
					email.focus();
					chk.checked = false;
				}
				else if (add1.value == "") {
					alert("Please Enter Address Line");
					add1.focus();
					chk.checked = false;
				}
				else if (street.value == "") {
					alert("Please Enter Address - Street");
					street.focus();
					chk.checked = false;
				}
				else if (po.value == "") {
					alert("Please Enter Address - Post Office");
					po.focus();
					chk.checked = false;
				}
				else if (dist.value == "") {
					alert("Please Enter Address - District");
					dist.focus();
					chk.checked = false;
				}
				else if (state.value == "") {
					alert("Please Enter Address - State");
					state.focus();
					chk.checked = false;
				}
				else if (pin.value == "") {
					alert("Please Enter Address - PIN Code");
					pin.focus();
					chk.checked = false;
				}
				else if ($("#pintxt").val().length > 6 || $("#pintxt").val().length < 6) {
					alert("Please Enter Valid PIN Code.");
					pin.focus();
					chk.checked = false;
				}
				else if (country.value == "") {
					alert("Please Enter Address - Country");
					country.focus();
					chk.checked = false;
				}
				else if (uid.value == "") {
					alert("Please Enter 12 Digit Aadhaar Number");
					uid.focus();
					chk.checked = false;
				}
				else if ($("#uidtxt").val().length > 12 || $("#uidtxt").val().length < 12) {
					alert("Please Enter Valid Aadhaar Number.");
					uid.focus();
					chk.checked = false;
				}
				else if (pan.value == "") {
					alert("Please Enter 10 Digit PAN Card Detail");
					pan.focus();
					chk.checked = false;
				}
				else if ($("#pantxt").val().length > 10 || $("#pantxt").val().length < 10) {
					alert("Please Enter Valid PAN.");
					pan.focus();
					chk.checked = false;
				}
				else if (mt.value == "Select Member Type") {
					alert("Please Choose Member Type.");
					memtypetxt.focus();
					chk.checked = false;
				}

				else {
					$("#subbtn").attr("disabled", false);
					$("#subbtn").val("Checkout");
				}

			}
			else {
				$("#subbtn").attr("disabled", true);
				$("#subbtn").val("Agree T&C Before Checkout");
			}
		});

		$(".txt-box").focus(function () {
			chk.checked = false;
			$("#subbtn").attr("disabled", true);
			$("#subbtn").val("Agree T&C Before Checkout");
		});


		$("#mobtxt").keydown(function (event) {
			k = event.which;
			if (true) {
				if ($(this).val().length == 11) {
					if (k == 8) {
						return true;
					}
					else {
						event.preventDefault();
						return false;
					}
				}
			} else {
				event.preventDefault();
				return false;
			}

		});
		$("#uidtxt").keydown(function (event) {
			k = event.which;
			if (true) {
				if ($(this).val().length == 13) {
					if (k == 8) {
						return true;
					}
					else {
						event.preventDefault();
						return false;
					}
				}
			} else {
				event.preventDefault();
				return false;
			}

		});

		$("#pintxt").keydown(function (event) {
			k = event.which;
			if (true) {
				if ($(this).val().length == 7) {
					if (k == 8) {
						return true;
					}
					else {
						event.preventDefault();
						return false;
					}
				}
			} else {
				event.preventDefault();
				return false;
			}

		});


		if ($("#informer").text() === "alreadyRegistered") {
			$(".notcon").show();
			window.setTimeout(function () {
				$(".notification-box").addClass("showNotice");
			}, 1000);
		}
		else if ($("#informer").text() === "success") {
			$(".notcon").show();
			window.setTimeout(function () {
				$(".notification-box").addClass("showNotice");
			}, 1000);
		}
		else if ($("#informer").text() === "failed") {
			$(".notcon").show();
			window.setTimeout(function () {
				$(".notification-box").addClass("showNotice");
			}, 1000);
		}
	</script>
</body>
</html>

