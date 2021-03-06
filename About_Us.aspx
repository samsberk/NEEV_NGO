<%@ Page Language="C#" AutoEventWireup="true" CodeFile="About_Us.aspx.cs" Inherits="About_Us" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>About Us - National Education Enrichment in Villages (NEEV)</title>
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
		/*------------------- Must be here for Office Bearers --------------------*/
		.ob .default-h{
			margin-top:20px;
			text-shadow:none;
			font-size:16px;
		}
		.ob .default-p{
			font-size:15px;
		}
		.card-outer-in{
			height:auto;

		}
		.ob .card-outer-in img{
			margin-top:20px;
			height:200px;
		}
		@media screen and (max-width: 700px) {
			.ob .card-outer-in img {
				margin-top: 0;
				height: 200px;
			}
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
			<li class="not-on-phone active"><a href="About_Us" class="click-on hvr-underline-from-center">ABOUT US</a></li>
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
		<%---------------------------------------------- Who we are ---------------------------------------------------%>
		<div class="panel-body" style="height:10px;width:100%;background:url('Images/joint-w2br.jpg');background-repeat:no-repeat;padding-bottom:0;margin-top:10px;"></div>
		<div class="panel-body" style="background:brown;padding-bottom:30px;">
			<div class="row">
				<div class="col-md-2"></div>
				<div class="col-md-8 text-center">
					<h3 class="default-h" style="color:white;"><i class="fa fa-users"></i><br />- Who We Are -</h3>
					<p class="default-p" style="color:white;">

					</p>
				</div>
				<div class="col-md-2"></div>
			</div>
		</div>
		<div class="panel-body" style="height:10px;width:100%;background:url('Images/joint.jpg');background-repeat:no-repeat;padding-bottom:0;"></div>
			
		<%--------------------------------------------------------------- Aim-Mission-Vision ----------------------------------------------------------------------%>
		<div class="panel-body">
			<div class="row text-center">
				<div class="col-md-1"></div>
				<div class="col-md-10">
					<div class="row">
						<div class="col-sm-4">
							<h3 class="default-h"><i class="fa fa-bullseye"></i><br />- Aim -</h3>
							<p class="default-p">To empower Indians by enriching them with quality education in villages, slums and tribal areas is the main aim of NEEV.</p>
							<br />
						</div>
						<div class="col-sm-4">
							<h3 class="default-h"><i class="fa fa-trophy"></i><br />- Mission -</h3>
							<p class="default-p">Make every Indian educated, aware about duties and rights, make India and its people self-reliant.</p>
							<br />
						</div>
						<div class="col-sm-4">
							<h3 class="default-h"><i class="fa fa-crosshairs"></i><br />- Vision -</h3>
							<p class="default-p">If the poor can not come to Education, Education must to to them.<br />– OUR MOTO Educated India.</p>
							<br />
						</div>
					</div>
				</div>
				<div class="col-md-1"></div>
			</div>
		</div>
		<div class="panel-body" style="height:10px;width:100%;background:url('Images/joint-w2b.jpg');background-repeat:no-repeat;padding-bottom:0;"></div>
		<%--------------------------------------------------------------- What we Do ----------------------------------------------------------------------%>
		<div class="panel-body" style="background:#1A2E35;">
			<div class="row">
				<div class="col-md-2"></div>
				<div class="col-md-8 text-center">
					<h3 class="default-h" style="color:white;"><i class="fa fa-shield"></i><br />- What We Do -</h3>
					<p class="default-p" style="color:white;">

					</p>
				</div>
				<div class="col-md-2"></div>
			</div>
		</div>
		<div class="panel-body" style="height:10px;width:100%;background:url('Images/joint-b2w.jpg');background-repeat:no-repeat;padding-bottom:0;"></div>
		<%--------------------------------------------------------------------  -----------------------------------------------------------%>

		<div class="panel-body section-box">
			<div class="row text-center">
				<div class="col-md-1"></div>
				<div class="col-md-10">
					<div class="col-sm-4">
                        <br /><br />
						<span class="default-p">Grass Root Level</span><br />
						<span class="default-h" style="font-size:70px;line-height:40px;">15+</span><br />
						<span class="default-p">Experienced Teachers</span>
					</div>
					<div class="col-sm-4">
                        <br /><br />
						<span class="default-p">Performing in</span><br />
						<span class="default-h" style="font-size:70px;line-height:40px;">7+</span><br />
						<span class="default-p">Village & Slum Areas</span>
					</div>
					<div class="col-sm-4">
                        <br /><br />
						<span class="default-p">Volunteer Team of</span><br />
						<span class="default-h" style="font-size:70px;line-height:40px;">40+</span><br />
						<span class="default-p">Young Professionals</span>
					</div>
                    <div class="col-sm-2"></div>
                    <div class="col-sm-4">
                        <br /><br />
						<span class="default-p">Online Webinars</span><br />
						<span class="default-h" style="font-size:70px;line-height:40px;">24000+</span><br />
						<span class="default-p">Participants Attended</span>
					</div>
                    <div class="col-sm-4">
                        <br /><br />
						<span class="default-p">Participants from</span><br />
						<span class="default-h" style="font-size:70px;line-height:40px;">15+</span><br />
						<span class="default-p">Countries</span>
					</div>
				</div>
				<div class="col-md-1"></div>
			</div><br />
		</div>

		<%--------------------------------------------------------------- Neev tour ----------------------------------------------------------------------%>
		<div class="panel-body" style="height:10px;width:100%;background:url('Images/joint-w2b.jpg');background-repeat:no-repeat;padding-bottom:0;"></div>
		<div class="panel-body" style="background:#1A2E35;">
			<div class="row text-center">
				<div class="col-md-1"></div>
				<div class="col-md-4">
					<h3 class="default-h" style="color:white;"><i class="fa fa-film"></i><br />- NEEV Tour -</h3>
					<p class="default-p" style="color:white;">
						We have started these NEEV classes in Meerut district with the help of Udgam foundation. Udgam foundation helps us in providing
						volunteers and basically does all the office and ground work for NEEV initiative. Basically, this model is basically self sustained model.
					</p>
				</div>
				<div class="col-md-6">
					<iframe src="https://www.youtube-nocookie.com/embed/SZd0b0WEKNE" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" style="width:100%;height:400px;border-color:#1A2E35;" allowfullscreen></iframe>
				</div>
				<div class="col-md-1"></div>
			</div>
		</div>
		<div class="panel-body" style="height:10px;width:100%;background:url('Images/joint-b2w.jpg');background-repeat:no-repeat;padding-bottom:0;"></div>

		<%--------------------------------------------------------------- Join Us ----------------------------------------------------------------------%>
		<div class="panel-body">
			<div class="row">
				<div class="col-md-1"></div>
				<div class="col-md-5">
					<div class="section-box-in text-center">
						<img src="Images/network.png" />
					</div>
				</div>
				<div class="col-md-4 text-center">
					<h3 class="default-h"><i class="fa fa-handshake"></i><br />- Join Us -</h3>
					<p class="default-p" style="font-weight:bold;">
						we are basically focusing on to the village kids (slum and tribal area) who do not have education due to financial reasons or any
						other reasons. we wish that they should also contribute towards Indian development, which can only be one via education.
					</p>
					<a href="Member_Page" class="big-link hvr-icon-wobble-vertical hvr-outline-in hvr-buzz-out">Join Now &nbsp;<i class="fa fa-handshake hvr-icon"></i></a>
					<br />
					<br />
				</div>
				<div class="col-md-2"></div>
			</div>
		</div>

		<%--------------------------------------------------------------- Office Bearers ----------------------------------------------------------------------%>
		<div class="panel-body" style="height:10px;width:100%;background:url('Images/joint-w2br.jpg');background-repeat:no-repeat;padding-bottom:0;"></div>
		<div class="panel-body" style="background:brown;">
			<div class="row">
				<div class="col-lg-12 text-center">
				<h3 class="default-h" style="color:white;"><i class="fa fa-vcard-o"></i><br />- Office Bearers -</h3>
					<div class="loop owl-carousel owl-theme">
						<div class="item">
							<div class="panel-body" style="height:5px;width:100%;background:url('Images/joint.jpg');background-repeat:no-repeat;padding-bottom:0;"></div>
							
							<div class="card-outer ob">
								<div class="card-outer-in">
									<img src="Images/Bearers/Updesh.jpg" />
								</div>
								<h3 class="default-h">Dr Updesh Verma</h3>
								<p class="default-p">Co-ordinator & Trustee</p>
							</div>
							
							<div class="panel-body" style="height:5px;width:100%;background:url('Images/joint-w2br.jpg');background-repeat:no-repeat;padding-bottom:0;"></div><br />
						</div>
						<div class="item">
							<div class="panel-body" style="height:5px;width:100%;background:url('Images/joint.jpg');background-repeat:no-repeat;padding-bottom:0;"></div>
							
							<div class="card-outer ob">
								<div class="card-outer-in">
									<img src="Images/Bearers/Haridatt.jpg" />
								</div>
								<h3 class="default-h">Adv. Haridatt Verma</h3>
								<p class="default-p">President</p>
							</div>
							
							<div class="panel-body" style="height:5px;width:100%;background:url('Images/joint-w2br.jpg');background-repeat:no-repeat;padding-bottom:0;"></div><br />
						</div>
						<div class="item">
							<div class="panel-body" style="height:5px;width:100%;background:url('Images/joint.jpg');background-repeat:no-repeat;padding-bottom:0;"></div>
							
							<div class="card-outer ob">
								<div class="card-outer-in">
									<img src="Images/Bearers/Beer_Pal.png" />
								</div>
								<h3 class="default-h">Prof. Beer Pal Singh</h3>
								<p class="default-p">Vice President</p>
							</div>
							
							<div class="panel-body" style="height:5px;width:100%;background:url('Images/joint-w2br.jpg');background-repeat:no-repeat;padding-bottom:0;"></div><br />
						</div>
						<div class="item">
							<div class="panel-body" style="height:5px;width:100%;background:url('Images/joint.jpg');background-repeat:no-repeat;padding-bottom:0;"></div>
							
							<div class="card-outer ob">
								<div class="card-outer-in">
									<img src="Images/Bearers/Rajan.jpg" />
								</div>
								<h3 class="default-h">Shri. Rajan Varshney</h3>
								<p class="default-p">Vice President</p>
							</div>
							
							<div class="panel-body" style="height:5px;width:100%;background:url('Images/joint-w2br.jpg');background-repeat:no-repeat;padding-bottom:0;"></div><br />
						</div>
						<div class="item">
							<div class="panel-body" style="height:5px;width:100%;background:url('Images/joint.jpg');background-repeat:no-repeat;padding-bottom:0;"></div>
							
							<div class="card-outer ob">
								<div class="card-outer-in">
									<img src="Images/Bearers/Geetanjali.jpg" />
								</div>
								<h3 class="default-h">Dr. Geetanjali Kaushik</h3>
								<p class="default-p">Secretary</p>
							</div>
							
							<div class="panel-body" style="height:5px;width:100%;background:url('Images/joint-w2br.jpg');background-repeat:no-repeat;padding-bottom:0;"></div><br />
						</div>
						<div class="item">
							<div class="panel-body" style="height:5px;width:100%;background:url('Images/joint.jpg');background-repeat:no-repeat;padding-bottom:0;"></div>
							
							<div class="card-outer ob">
								<div class="card-outer-in">
									<img src="Images/Bearers/Anil.jpg" />
								</div>
								<h3 class="default-h">Prof. Anil K Malik</h3>
								<p class="default-p">Treasurer</p>
							</div>
							
							<div class="panel-body" style="height:5px;width:100%;background:url('Images/joint-w2br.jpg');background-repeat:no-repeat;padding-bottom:0;"></div><br />
						</div>
						<div class="item">
							<div class="panel-body" style="height:5px;width:100%;background:url('Images/joint.jpg');background-repeat:no-repeat;padding-bottom:0;"></div>
							
							<div class="card-outer ob">
								<div class="card-outer-in">
									<img src="Images/Bearers/Vijay.jpg" />
								</div>
								<h3 class="default-h">Dr. Vijay K Tiwari</h3>
								<p class="default-p">Joint Secretary</p>
							</div>
							
							<div class="panel-body" style="height:5px;width:100%;background:url('Images/joint-w2br.jpg');background-repeat:no-repeat;padding-bottom:0;"></div><br />
						</div>

					</div>
				</div>
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
		//if ($("#informer").text() === "new") {
		//	$(".notcon").show();
		//	window.setTimeout(function () {
		//		$(".notification-box").addClass("showNotice");
		//	}, 2000);
		//}
	</script>
</body>
</html>

