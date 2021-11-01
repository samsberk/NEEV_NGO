<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NEEV_Classes.aspx.cs" Inherits="NEEV_Classes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>NEEV Classes - National Education Enrichment in Villages (NEEV)</title>
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
		<div class="panel-body" style="background:brown;padding-bottom:30px;">
			<div class="row text-center">
				<div class="col-md-3"></div>
				<div class="col-md-6">
					<h3 class="default-h" style="color:white;"><i class="fa fa-book"></i><br />- NEEV Classes -</h3>
					<p class="default-p" style="color:white;">
						Education plays an important role in human life regarding to build their personality, career and mental growth.
						Education is the best tool for facing any up and down situation through the whole life. We can not only improve
						our personal life by education but also can bring an amazing positive change in society or nation.
						<br /><br />
						<b>“Education is a human right with immense power to transform. On its foundation rest the cornerstones of freedom, democracy and sustainable human development.”</b><br /><br />
						IITD AA decided to educational enrichment in villages throughout India and started pilot project in Meerut district with the help of Udgam foundation.
						Our sole aim is for these students to get the best education possible so we try to impart the best that we have.
						We provide the students with textbooks, notebooks, pens, pencils, school bags and all the school stationery they
						need. We also provide them with snacks, biscuits and other nourishing food which also helps them to develop interest
						in coming to our educational classes.<br /><br />
						We have started these NEEV classes in Meerut district with the help of Udgam foundation. Udgam foundation helps
						us in providing volunteers and basically does all the office and ground work for NEEV initiative. Basically,
						this model is basically self sustained model. so generally, the person who adopt the village for NEEV program,
						he/she has to manage the responsibilities of that NEEV classes. teaching volunteers will be paid pocket money,
						as they have to teach 6 days a week regularly in evening for 1.5 to 2 hours.
					</p>
				</div>
				<div class="col-md-3"></div>
			</div>
			<%--<div class="row">
				<div class="col-lg-12 text-center">
				<h3 class="default-h" style="color:white;">- Glimpse -</h3>
					<div class="loop owl-carousel owl-theme">
						<div class="item">
							<img src="Images/MonthlyTests/mt1-min.jpg" style="width:100%;" />
						</div>
						<div class="item">
							<img src="Images/MonthlyTests/mt2-min.jpg" style="width:100%;" />
						</div>
						<div class="item">
							<img src="Images/MonthlyTests/mt3-min.jpg" style="width:100%;" />
						</div>
						<div class="item">
							<img src="Images/MonthlyTests/mt4-min.jpg" style="width:100%;" />
						</div>
						<div class="item">
							<img src="Images/MonthlyTests/mt5-min.jpg" style="width:100%;" />
						</div>
					</div>
				</div>
			</div>--%>
		</div>
		<div class="panel-body" style="height:10px;width:100%;background:url('Images/joint.jpg');background-repeat:no-repeat;padding-bottom:0;"></div>
			
		<%--------------------------------------------------------------- Volunteers ----------------------------------------------------------------------%>
		<div class="panel-body">
			<div class="row">
				<div class="col-md-2"></div>
				<div class="col-md-8">
					<h4 style="color:#1A2E35;">
						Below the list of Teachers and Volunteers who helps us to achieve this goal and detail of six villages where we started the classes.
					</h4>
					<div class="row">
						<div class="col-sm-6"><br />
							<h4 style="font-family:Yantramanav;color:#1A2E35;">Damauli Village :</h4>
							<p class="default-p" style="text-align:left;">
								We started here on 1st August 2018.<br />
								Teacher who teach here are:<br />
								&emsp;<i class="fa fa-arrow-right"></i>&emsp;Rakhi Saini<br />
								&emsp;<i class="fa fa-arrow-right"></i>&emsp;Mukesh Saini<br />
								Volunteers who help us are:<br />
								&emsp;<i class="fa fa-arrow-right"></i>&emsp;Anuj<br />
								&emsp;<i class="fa fa-arrow-right"></i>&emsp;Sachin<br />
								&emsp;<i class="fa fa-arrow-right"></i>&emsp;Akash<br />
								&emsp;<i class="fa fa-arrow-right"></i>&emsp;Priyanka<br />
								&emsp;<i class="fa fa-arrow-right"></i>&emsp;Ayushi<br />
								&emsp;<i class="fa fa-arrow-right"></i>&emsp;Rahul<br />
							</p>
						</div>
						<div class="col-sm-6"><br />
							<h4 style="font-family:Yantramanav;color:#1A2E35;">Chhajjupur Village :</h4>
							<p class="default-p" style="text-align:left;">
								We started here on 5th September 2018.<br />
								Teacher who teach here are:<br />
								&emsp;<i class="fa fa-arrow-right"></i>&emsp;Saloni Sharma<br />
								&emsp;<i class="fa fa-arrow-right"></i>&emsp;Moni<br />
								Volunteers who help us are:<br />
								&emsp;<i class="fa fa-arrow-right"></i>&emsp;Neha Sharma<br />
								&emsp;<i class="fa fa-arrow-right"></i>&emsp;Sunil Patel<br />
								&emsp;<i class="fa fa-arrow-right"></i>&emsp;Sweta Gautam<br />
								&emsp;<i class="fa fa-arrow-right"></i>&emsp;Akshay<br />
								&emsp;<i class="fa fa-arrow-right"></i>&emsp;Sakshi<br />
								&emsp;<i class="fa fa-arrow-right"></i>&emsp;Ayush<br />
							</p>
						</div>
						<div class="col-sm-6"><br />
							<h4 style="font-family:Yantramanav;color:#1A2E35;">Anjoli Village :</h4>
							<p class="default-p" style="text-align:left;">
								We started here on 2nd October 2018.<br />
								Teacher who teach here are:<br />
								&emsp;<i class="fa fa-arrow-right"></i>&emsp;Shivani<br />
								&emsp;<i class="fa fa-arrow-right"></i>&emsp;Vikash<br />
								Volunteers who help us are:<br />
								&emsp;<i class="fa fa-arrow-right"></i>&emsp;Pragati Yadav<br />
								&emsp;<i class="fa fa-arrow-right"></i>&emsp;Madhavi<br />
								&emsp;<i class="fa fa-arrow-right"></i>&emsp;Anupama<br />
								&emsp;<i class="fa fa-arrow-right"></i>&emsp;Aman Shukla<br />
								&emsp;<i class="fa fa-arrow-right"></i>&emsp;Ankur Dhama<br />
								&emsp;<i class="fa fa-arrow-right"></i>&emsp;Ankur Gautam<br />
								&emsp;<i class="fa fa-arrow-right"></i>&emsp;Manpreet<br />
							</p>
						</div>
						<div class="col-sm-6"><br />
							<h4 style="font-family:Yantramanav;color:#1A2E35;">Sorkha Village :</h4>
							<p class="default-p" style="text-align:left;">
								We started here on 15th October 2018.<br />
								Teacher who teach here are:<br />
								&emsp;<i class="fa fa-arrow-right"></i>&emsp;Nisha<br />
								&emsp;<i class="fa fa-arrow-right"></i>&emsp;Vaishali<br />
								Volunteers who help us are:<br />
								&emsp;<i class="fa fa-arrow-right"></i>&emsp;Sejal Sharma<br />
								&emsp;<i class="fa fa-arrow-right"></i>&emsp;Wasim Akram<br />
								&emsp;<i class="fa fa-arrow-right"></i>&emsp;Santosh<br />
								&emsp;<i class="fa fa-arrow-right"></i>&emsp;Shipra<br />
								&emsp;<i class="fa fa-arrow-right"></i>&emsp;Vaibhav Sharma<br />
								&emsp;<i class="fa fa-arrow-right"></i>&emsp;Vishal<br />
								&emsp;<i class="fa fa-arrow-right"></i>&emsp;Yamini<br />
							</p>
						</div>
						<div class="col-sm-6"><br />
							<h4 style="font-family:Yantramanav;color:#1A2E35;">Dhindala Village :</h4>
							<p class="default-p" style="text-align:left;">
								We started here on 4th November 2018.<br />
								Teacher who teach here are:<br />
								&emsp;<i class="fa fa-arrow-right"></i>&emsp;Sarvachan<br />
								&emsp;<i class="fa fa-arrow-right"></i>&emsp;Vikas<br />
								Volunteers who help us are:<br />
								&emsp;<i class="fa fa-arrow-right"></i>&emsp;Arun<br />
								&emsp;<i class="fa fa-arrow-right"></i>&emsp;Abhishek <br />
								&emsp;<i class="fa fa-arrow-right"></i>&emsp;Aishwarya Gupta<br />
								&emsp;<i class="fa fa-arrow-right"></i>&emsp;Naveen Singh<br />
								&emsp;<i class="fa fa-arrow-right"></i>&emsp;Manish Sharma<br />
								&emsp;<i class="fa fa-arrow-right"></i>&emsp;Vinod Sharma<br />
							</p>
						</div>
						<div class="col-sm-6"><br />
							<h4 style="font-family:Yantramanav;color:#1A2E35;">Lalkurti Village :</h4>
							<p class="default-p" style="text-align:left;">
								We started here on 7th April 2019.<br />
								Teacher who teach here are:<br />
								&emsp;<i class="fa fa-arrow-right"></i>&emsp;Arpit<br />
								&emsp;<i class="fa fa-arrow-right"></i>&emsp;Kajal Gupta<br />
								Volunteers who help us are:<br />
								&emsp;<i class="fa fa-arrow-right"></i>&emsp;Santanu<br />
								&emsp;<i class="fa fa-arrow-right"></i>&emsp;Kaushal <br />
								&emsp;<i class="fa fa-arrow-right"></i>&emsp;Nishan<br />
								&emsp;<i class="fa fa-arrow-right"></i>&emsp;Ayushi<br />
								&emsp;<i class="fa fa-arrow-right"></i>&emsp;Wasim Akram<br />
								&emsp;<i class="fa fa-arrow-right"></i>&emsp;Alpana <br />
								&emsp;<i class="fa fa-arrow-right"></i>&emsp;Shubham<br />
								&emsp;<i class="fa fa-arrow-right"></i>&emsp;Vishal<br />
								&emsp;<i class="fa fa-arrow-right"></i>&emsp;Preeti<br />
								&emsp;<i class="fa fa-arrow-right"></i>&emsp;Richa<br />
							</p>
						</div>

					</div>
				</div>
				<div class="col-md-2"></div>
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

