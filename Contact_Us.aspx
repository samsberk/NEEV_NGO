<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Contact_Us.aspx.cs" Inherits="Contact_Us" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Contact Us - National Education Enrichment in Villages (NEEV)</title>
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
			<li class="not-on-phone active"><a href="Contact_Us" class="click-on hvr-underline-from-center">CONTACT US</a></li>
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
		<%---------------------------------------------- Our Centers ---------------------------------------------------%>
		<div class="panel-body" style="height:10px;width:100%;background:url('Images/joint-w2br.jpg');background-repeat:no-repeat;padding-bottom:0;margin-top:10px;"></div>
		<div class="panel-body" style="background:brown;padding-bottom:30px;">
			<div class="row text-center">
				<h3 class="default-h" style="color:white;"><i class="fa fa-map-marker"></i><br />- Our Center -</h3>
				<div class="col-md-4"></div>
				<div class="col-md-4">
					<div class="panel-body" style="height:5px;width:100%;background:url('Images/joint.jpg');background-repeat:no-repeat;padding-bottom:0;"></div>
							
					<div class="card-outer">
						<div class="card-outer-in">
							<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d6980.3589821605665!2d77.72940562356033!3d28.982051764429215!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390c64cfd9b081e7%3A0x55347b7e1de0a674!2sPandav%20Nagar%2C%20Prabhat%20Nagar%2C%20Meerut%2C%20Uttar%20Pradesh%20250001!5e0!3m2!1sen!2sin!4v1600695604065!5m2!1sen!2sin" style="border:0;width:100%;height:inherit;" aria-hidden="false" tabindex="0"></iframe>
						</div>
						<h3 class="default-h">Meerut</h3>
						<p class="default-p">
							C-45, Pandav Nagar<br />
							Meerut, U.P.<br />
							250001<br />
						</p>
						<a href="mailto:neev.iitd@gmail.com" class="btn btn-default hvr-icon-wobble-horizontal">E-Mail&ensp;<i class="fa fa-send hvr-icon"></i></a>&ensp;
						<a href="tel:7599182718" class="btn btn-default hvr-icon-buzz">Call&ensp;<i class="fa fa-phone hvr-icon"></i></a>
						<br /><br />
					</div>
							
					<div class="panel-body" style="height:5px;width:100%;background:url('Images/joint-w2br.jpg');background-repeat:no-repeat;padding-bottom:0;"></div><br />
				</div>
				<div class="col-md-4"></div>
			</div>
		</div>
		<div class="panel-body" style="height:10px;width:100%;background:url('Images/joint.jpg');background-repeat:no-repeat;padding-bottom:0;"></div>
			
		<%------------------------------------------------------ Write to Us ----------------------------------------------%>
		<div class="panel-body">
			<div class="row">
				<div class="col-md-2"></div>
				<div class="col-md-4">
					<div class="section-box-in text-center not-on-phone">
						<img src="Images/writetous.jpg"/>
					</div>
				</div>
				<div class="col-md-4">
					<h3 class="default-h text-center"><i class="fa fa-pencil"></i><br />- Write to Us -</h3>
					<label class="txt-box-label">Name : <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required" ControlToValidate="nametxt" ForeColor="Red"></asp:RequiredFieldValidator></label>
					<asp:TextBox runat="server" ID="nametxt" CssClass="txt-box" MaxLength="30" placeholder="Enter Your Name"></asp:TextBox>
					<label class="txt-box-label">Email : <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required" ControlToValidate="emailtxt" ForeColor="Red"></asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Incorrect Email" ControlToValidate="emailtxt" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></label>
					<asp:TextBox runat="server" ID="emailtxt" TextMode="Email" CssClass="txt-box" MaxLength="30" placeholder="Enter E-mail ID" style="text-transform:lowercase;"></asp:TextBox>
					<label class="txt-box-label">Message/Query : <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Required" ControlToValidate="msgtxt" ForeColor="Red"></asp:RequiredFieldValidator></label>
					<asp:TextBox runat="server" ID="msgtxt" TextMode="MultiLine" Rows="4" CssClass="txt-box" MaxLength="200" placeholder="Enter Message or Query" style="text-transform:none;"></asp:TextBox>
                    <label class="txt-box-label pull-right" style="color:green;">* Protected by Google reCaptcha.</label>
                    <div id="googleRecaptchadiv">
                        <!-- BEGIN: ReCAPTCHA implementation example. -->
                        <div id="recaptcha-demo" class="g-recaptcha" data-sitekey="6LeFzdEZAAAAAOrifiwgoFCgfdra8yqXVj14niX7" data-callback="onSuccess" data-bind="recaptcha_demo_submit"></div>
                        <script>
                            var onSuccess = function (response) {
                                debugger;
                                var errorDivs = document.getElementsByClassName("recaptcha-error");
                                if (errorDivs.length) {
                                    errorDivs[0].className = "";
                                }
                                var errorMsgs = document.getElementsByClassName("recaptcha-error-message");
                                if (errorMsgs.length) {
                                    errorMsgs[0].parentNode.removeChild(errorMsgs[0]);
                                }
                                var clickButton = document.getElementById("<%= Button1.ClientID %>");
                                clickButton.click();
                            };
                        </script>
                        <!-- Optional noscript fallback. -->
                        <!-- END: ReCAPTCHA implementation example. -->
                    </div>
                    <%--<button class="g-recaptcha btn btn-default" data-sitekey="6LeFzdEZAAAAAOrifiwgoFCgfdra8yqXVj14niX7" data-callback='onSubmit' data-action='submit' onserverclick="sendbtn_Click" runat="server">Submit</button>--%>
                    <asp:Button CssClass="btn btn-success" runat="server" ID="recaptcha_demo_submit" Text="Send" OnClick="recaptcha_demo_submit_Click"/>
                    <div style="display:none">
                        <asp:Button ID="Button1" OnClick="Button1_Click" runat="server" Text="Button1" />
                    </div>
					<br />
					<br /><br />
				</div>
				<div class="col-sm-2"></div>
			</div>
		</div>
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
		//if ($("#informer").text() === "new") {
		//	$(".notcon").show();
		//	window.setTimeout(function () {
		//		$(".notification-box").addClass("showNotice");
		//	}, 2000);
		//}
	</script>
</body>
</html>
