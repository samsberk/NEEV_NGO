<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Donate.aspx.cs" Inherits="Donate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Donate - National Education Enrichment in Villages (NEEV)</title>
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
			<li class="not-on-phone"><a href="Contact_Us" class="click-on hvr-underline-from-center">CONTACT US</a></li>
			<li style="background:Orange;float:right;margin-right:20px;"><a href="Donate" class="click-on hvr-underline-from-center">DONATE</a></li>
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
		<%---------------------------------------------- Donate ---------------------------------------------------%>
		<div class="panel-body" style="height:10px;width:100%;background:url('Images/joint-w2br.jpg');background-repeat:no-repeat;padding-bottom:0;margin-top:10px;"></div>
		<div class="panel-body" style="background:brown;padding-bottom:30px;">
			<div class="row text-center">
				<h3 class="default-h" style="color:white;"><i class="fa fa-heart"></i><br />- Donate -</h3>
				<div class="col-md-3"></div>
				<div class="col-md-6">
					<p class="default-p" style="color:white;">
						Geeta at a tender age has realized that poverty can come in the way of anyone's dream.
						Instead of going to school, Geeta makes the rounds of four to five houses each day and
						takes care of her father, till her mother and elder sister return. Geeta's father has
						been bedridden for two years now, due to an accident. Since then, life has taken a bitter
						turn for Geeta. The only respite in Geeta's life comes from her dream of becoming an
						airhostess when she grows up.
					</p>
					<div class="razorpay-embed-btn" data-url="https://pages.razorpay.com/pl_FFHRL8yJA1mlyz/view" data-text="Donate  Now" data-color="#528FF0" data-size="large">
					  <script>
						(function(){
						  var d=document; var x=!d.getElementById('razorpay-embed-btn-js')
						  if(x){ var s=d.createElement('script'); s.defer=!0;s.id='razorpay-embed-btn-js';
						  s.src='https://cdn.razorpay.com/static/embed_btn/bundle.js';d.body.appendChild(s);} else{var rzp=window['__rzp__'];
						  rzp && rzp.init && rzp.init()}})();
					  </script>
					</div>
				</div>
				<div class="col-md-3"></div>
			</div>
		</div>
		<div class="panel-body" style="height:10px;width:100%;background:url('Images/joint.jpg');background-repeat:no-repeat;padding-bottom:0;"></div>
			
		<%--------------------------------------------------------------- Make Donate ----------------------------------------------------------------------%>
		<div class="panel-body">
			<div class="row">
				<div class="col-sm-2"></div>
				<div class="col-sm-8 text-center">
					<h3 class="default-h"><i class="fa fa-inr"></i><br />- Account Details of NEEV -</h3>
					<p class="default-p">
                        A/C - 50510547881<br />
                        Name - National Education Enrichment in Villages<br />
                        IFSC  - ALLA0210144<br />
                        MICR - 250010004<br />
                        Allahabad Bank<br />
                        Meerut University campus Meerut.<br />
					</p>
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

