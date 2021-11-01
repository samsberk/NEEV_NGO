<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Our_Story.aspx.cs" Inherits="Our_Story" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Our Story - National Education Enrichment in Villages (NEEV)</title>
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
				<div class="col-md-2"></div>
				<div class="col-md-8">
					<h3 class="default-h" style="color:white;"><i class="fa fa-pencil-square"></i><br />- Our Story -</h3>
					<p class="default-p" style="color:white;">
						India is a country having more than 1.25 Billion of population and roughly 70% of its population is living in villages.
						Ancient India had a great educational history and had produced lots of renounced and learned scientists and scholars.
						But as the Indian population is increasing day-by-day, we need more and more scholars, technicians, professors, doctors,
						engineers, managers, Industrialists, entrepreneurs, scientists etc. for the development of our nation and to generate
						the opportunities for its masses. The only way by which we can create all these opportunities and made our country the
						greatest in the world is by education. Education is both the means as well as the end to a better life: the means because
						it empowers an individual to earn his/her livelihood and the end because it increases one's awareness on a range of issues
						– from healthcare to appropriate social behavior to understanding one's rights – and in the process, help him/her evolve
						as a better citizen.<br /><br />
						<q style="font-weight:bold;">NEEV: Believe in possibilities. Believe in youth potential. Believe in our self and we will have the power to change our society.</q>
						<br /><br />
						But the education should be reached to every citizen of the country irrespective of its cast, creed, monetary status etc.  In
						urban areas education level is good; students find good schools and colleges from where they can gain knowledge and take part
						in national development. But these opportunities are very less in rural, tribal and slum areas of our country. One has to focus
						on the population living in villages as more less privileged population is living there, also as they are the citizen of this
						country and have equal rights to have good education. But present situation of rural, tribal and slum areas education is not
						good. Although, less privileged part of the nation needs more focus on education system. Over 25% of the class 5th students in
						government schools find difficulty in reading and writing as well as dividing 100 with 5 and we are willing to be world super
						power. This is the ground reality unfortunately. As a citizen it is our responsibility to understand the real scan of the problem,
						effect on our national fabric and do something about it. <br />
						NEEV (National Educational Enrichment in Villages) is one step initiative of IIT Alumni that is directed to build a possible
						solution for larger national goals of education. It is a matter of fact that Currently, this initiative is in operation in 5
						villages in Partapur, Meerut and one slum area near Lalkurti. One class is going to be started in Vijay Nagar (Ghaziabad) slum
						area, and some in U.K. and Haryana in near future. More than 15 grass root level teachers and a volunteer team of 30 young
						professionals are working on ground for this initiative. 
						<br /><br />The main aim of NEEV initiative is<br />
						<q style="font-weight:bold;">IF THE POOR CANNOT COME TO EDUCATION, EDUCATION MUST GO TO THEM</q>.
						<br /><br />
					</p>
				</div>
				<div class="col-md-2"></div>
			</div>
		</div>
		<div class="panel-body" style="height:10px;width:100%;background:url('Images/joint.jpg');background-repeat:no-repeat;padding-bottom:0;"></div>
			
		<%--------------------------------------------------------------- Join Us ----------------------------------------------------------------------%>
		<div class="panel-body">
			<div class="row">
				<div class="col-md-2"></div>
				<div class="col-md-8"><br />
					<h3 class="default-h">Why We Need NEEV :</h3>
					<p class="default-p" style="font-weight:bold;text-align:left;">
						<i class="fa fa-chevron-right"></i>&ensp;Govt Primary School kids who came to 2 or 3rd class even do not know how to read and write.<br />
						<i class="fa fa-chevron-right"></i>&ensp;specially in village primary schools.<br />
						<i class="fa fa-chevron-right"></i>&ensp;so need to enrich the basic knowledge of kids of villages so that their base can be strong.<br />
						<i class="fa fa-chevron-right"></i>&ensp;also many villagers and slum residents do not wish to send their kids to schools, some due
						to economical poor conditions and some due to not known the reality of education.<br />
					</p>
					<br /><h3 class="default-h">What We Do :</h3>
					<p class="default-p" style="font-weight:bold;text-align:left;">
						<i class="fa fa-chevron-right"></i>&ensp;we are arranging evening classes in villages and slums to the kids who are promoted every year in govt primary
						schools but do not know the basics.<br />
						<i class="fa fa-chevron-right"></i>&ensp;we sensitize the villagers about the value of education and help their kids to make their basic education
						of reading and writing of English and Hindi, math’s calculations etc.we sensitize the villagers about the value of education and help their kids
						to make their basic education of reading and writing of English and Hindi, math’s calculations etc.<br />
						<i class="fa fa-chevron-right"></i>&ensp;we search tutors, basically the students who study in higher education classes, and from the same or nearby villages.<br />
						<i class="fa fa-chevron-right"></i>&ensp;we arranges the place in villages, where these evening classes can be started.<br />
						<i class="fa fa-chevron-right"></i>&ensp;we arrange seats or Dari for sitting and board, chalk, duster etc. for classes.<br />
					</p>
					<br /><h3 class="default-h">How We Proceed :</h3>
					<p class="default-p" style="font-weight:bold;text-align:left;">
						<i class="fa fa-chevron-right"></i>&ensp;Need some volunteer group or some NGO working in the education sector in villages to help us, so that they can survey the villages.<br />
						<i class="fa fa-chevron-right"></i>&ensp;Collaborate with the group /NGO.  Survey of villages done by them on points like population, literacy, no of govt and private schools, cast, religion, economical factor, no of kids going to school, and who does not go to school, etc.<br />
						<i class="fa fa-chevron-right"></i>&ensp;NGO will have to find the place or spot which will be in the center of village or between the two villages, so that kids can easily come there in evening for classes. This place may be govt building or any house or place easily available.<br />
						<i class="fa fa-chevron-right"></i>&ensp;IIT ALUMNI with the help of NGO will find the volunteers, preferably from the same village or from nearby villages to teach in evening classes. They may be UG or PG or engineering students who wish to do volunteer work.<br />
						<i class="fa fa-chevron-right"></i>&ensp;Their documents will be checked and copies will retain for future.<br />
						<i class="fa fa-chevron-right"></i>&ensp;IIT ALUMNI volunteers with NGO volunteers will go to villages to sensitize people about the importance of education so that villagers will send their kids for classes. Also, we will contact the govt primary schools and tell them to aware their students to go to the evening classes.<br />
						<i class="fa fa-chevron-right"></i>&ensp;For two tutors no of students be limited to 40-50 max.<br />
						<i class="fa fa-chevron-right"></i>&ensp;NGO with the help of IIT alumni will arrange chalk, board, Dari, seats for the evening classes.<br />
						<i class="fa fa-chevron-right"></i>&ensp;Honorarium of INR 800-1000 will be given to the teaching volunteers only every month. certificate from IIT ALUMNI will be given to those volunteers who teaches there only when they teach regularly more than 3 months.<br />
					</p>
					<br />
					<p class="default-p" style="font-weight:bold;text-align:left;">
						we are basically focusing on to the village kids (slum and tribal area) who do not have education due to financial reasons or any
						other reasons. we wish that they should also contribute towards Indian development, which can only be one via education. in villages
						students who are studying in govt primary school does not have primary or basic knowledge event they are promoted to higher classes
						but their foundation is week and even they do not know how to read and write properly. when we adopt any village, we first do survey
						of the villages and find out how many kids go to school and how many do not. We do counsel their parents and make them believe that
						without education they cannot be prosperous and can live good life. If they wish that their kids do well educate them. then we find
						out place to start our NEEV classes which is basically at the center of the village or slum area, may be some house of our volunteer
						or primary school of that village. than we find some girls/ teaching volunteers who belongs to that village only to teach in the NEEV classes.
						<br /><br />We have started these NEEV classes in Meerut district with the help of Udgam foundation. Udgam foundation helps us in providing volunteers
						and basically does all the office and ground work for NEEV initiative. Basically, this model is basically self sustained model. so generally,
						the person who adopt the village for NEEV program, he/she has to manage the responsibilities of that NEEV classes. teaching volunteers will
						be paid pocket money, as they have to teach 6 days a week regularly in evening for 1.5 to 2 hours. IIT Alumni will provide them, digital
						module/certificates to teaching as well as other volunteers, and other administrative helps. Generally, to start a NEEV class in any village
						only 4000 (approx.) INR are required initially for board, chalk, duster, matt for sitting, etc. 
						<br /><br />IIT alumni volunteers help to start the classes and updates the modules time to time. IIT alumni organize orientation program
						for NEEV volunteers and teaching volunteers also visit the NEEV classes regularly to maintain the quality of the program.

					</p>
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
