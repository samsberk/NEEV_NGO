<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Team_NEEV.aspx.cs" Inherits="Team_NEEV" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Team NEEV - National Education Enrichment in Villages (NEEV)</title>
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
			<li class="not-on-phone active"><a href="Team_NEEV" class="click-on hvr-underline-from-center">TEAM NEEV</a></li>
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
			

		<%--------------------------------------------------------------- Biography ----------------------------------------------------------------------%>

		<div class="panel-body">
			<div class="row">
				<h3 class="default-h text-center"><i class="fa fa-vcard-o"></i><br />- Biography -</h3>
				<div class="col-md-2"></div>
				<div class="col-md-8"><br />
					<div class="row">
						<div class="col-sm-4"><img src="Images/Bearers/Updesh.jpg" style="width:100%;"/></div>
						<div class="col-sm-8">
							<h3 style="color:dimgray;">Dr. Updesh Verma</h3>
							<i>Coordinator & Trustee NEEV</i><br /><br />
							<p class="default-p" style="text-align:justify;">
								He has done M.Sc and M.Phil from C C S University Meerut and  PhD from IIT Delhi.
								He is presently Asst. Professor of Physics at Manyavar kanshiram Govt degree college
								Ghaziabad.<br />
								He is currently EC member of IIT Delhi Alumni Association and also served as
								Past- Joint Secretary and Treasurer of IIT Delhi Alumni Association.
								<button type="button" class="btn btn-default" id="u-t">Continue Reading...</button>
							</p>
						</div>
					</div>
					<p class="default-p u-nxt" style="text-align:left;">
						SENATE member IIT Delhi (from 2017 to 2019)<br />
						He is an Alumni BRICS Young Scientist Forum<br />
						He is Regional representative of I-STEM, Prime Minister's Office initiative, <a href="https://www.istem.gov.in/" class="link">https://www.istem.gov.in/</a><br />
						And he was Raman Fellow and Visiting Scientist at , Princeton Plasma Physics laboratory, Princeton University, Princeton , New Jersey,  USA.<br />
						He is a coordinator of a social educational initiative of IIT alumni called NEEV (national education enrichment in villages)<br />
						NEEV (National education Enrichment in villages) is spreading education in NCR region in villages and slum areas, more than
						600 students have been benefited by our NEEV initiative. Also in this pandemic situation of COVID 19, NEEV is continuously
						feeding poor and needy people and we have helped more than 2000 families in NCR till today. I am coordinating NEEV program
						and many of our IITD alumni are volunteering in this Nobel cause to give back to society. We have organized 5 webinars to
						spread awareness in this covid-19 pandemic and planning to make video lectures for neev students so that they can also learn
						while staying at home.
						<br />
						Recognitions :<br />
						Awards/recognitions-Best SAC Rep. Award by Director IIT Delhi, 2009, “Raman Postdoctoral Fellowship “by UGC, MHRD (2013).
						“Best Citizen of India” by Best Citizen Publishing house, Delhi (10 Oct, 2015). “Bharat Gaurav award” by India International
						Friendship society, Delhi (13 Aug 2016). “2017 Albert Nelson Marquis Lifetime Achievement Award” by Marquis Who's Who society,
						New Jersey, U.S.A. Certificate of Appreciation, in recognitions of the active contribution to Environment and society by Vishva
						Mitra parivar and Prakriti paivar (2018), Gratitude from IITAA for the wonderful work done as Treasurer (2019), Sikshak Samman”
						by ABVP, Meerut (2019).“Swaraj Rakshak Samman 2020” by Mission Vande Matram Foundation, (2020).
						<br />He has visited several countries- Italy, France, U.K., USA, Austria, Slovenia, Brazil, Singapore, Russia to give invited
						talk in more than 40 conferences at National and International level, published three books and several research articles.
					</p><br />
					<div class="row">
						<div class="col-sm-4"><img src="Images/Bearers/Beer_Pal.png" style="width:100%;"/></div>
						<div class="col-sm-8">
							<h3 style="color:dimgray;">Prof. Beer Pal Singh</h3>
							<i>Vice President NEEV</i><br /><br />
							<p class="default-p" style="text-align:justify;">
								Beer Pal Singh has received his M.Sc. (1997), M.Phil. (1998) and Ph.D. (2002) from C.C.S. University,
								Meerut (UP), India. He is holding faculty position in Physics at C.C.S. University, Meerut.
								since 2004. Presently, he is working as "Professor" and Head in Department of Physics, CCS University, Meerut.
								<button type="button" class="btn btn-default" id="b-t">Continue Reading...</button>
							</p>
						</div>
					</div>
					<p class="default-p b-nxt" style="text-align:left;">
						In addition to this, he is also holding the post of Proctor, Security Officer and Dy. Director, Centre for International
						Cooperation in university administration. Recently, he had worked as Visiting Professor in Tokyo University of Science, Tokyo,
						Japan and Visiting Scientist (Raman Fellow) in University of Puerto Rico, Mayaguez, PR, USA for one year. He has also visited
						Germany, France. China, and Boston and presented his research work. He has supervised 6 Ph.D. and more than 35 M.Phil. students
						for their research thesis. He has published more than 45 papers in reputed journals and serving as a reviewer of several
						national/international journal of repute. Recently, he has been nominated as an editorial advisory board member of Vigyan
						Pragati published by NISCAIR, New Delhi.
					</p><br />
					<div class="row">
						<div class="col-sm-4"><img src="Images/Bearers/Rajan.jpg" style="width:100%;"/></div>
						<div class="col-sm-8">
							<h3 style="color:dimgray;">Shri Rajan Varshney</h3>
							<i>Vice President NEEV</i><br /><br />
							<p class="default-p" style="text-align:justify;">
								Presently working in NTPC as DGM( Engineering- Waste to Energy at NTPC Engineering, Noida.
								Joined NTPC in 1988 and have total experience of around 32   years in various aspects of Power Plant Engineering,
								Operation and Maintenance,  ERP, Condition Monitoring of power plant machinery, Business Excellence, Environment etc.
								<button type="button" class="btn btn-default" id="r-t">Continue Reading...</button>
							</p>
						</div>
					</div>
					<p class="default-p r-nxt" style="text-align:left;">
						
								Qualifications:<br />
								BE (Electronics and Communication), DU , 1988<br />
                                M.Tech (Power Gen.Technology,) IIT Delhi , 2005<br />
                                MBA (Operations Mgt.+ Fin), IGNOU, 1995<br />
                                PG Dip. In Business Admn., Annamalai Univ., 1992<br />
					</p><br />
					<div class="row">
						<div class="col-sm-4"><img src="Images/Bearers/Geetanjali.jpg" style="width:100%;"/></div>
						<div class="col-sm-8">
							<h3 style="color:dimgray;">Dr. Geetanjali Kaushik</h3>
							<i>Secretary Neev</i><br /><br />
							<p class="default-p" style="text-align:justify;">
								Dr. Geetanjali armed with a Masters from TERI and a BSc from University of Delhi (Silver and Golden Jubilee Awardee).
								Dr. Geetanjali Kaushik  completed her  PhD from IIT Delhi. She has participated in International Conferences 
								held in Germany (won first prize) and USA (received American Society of Nutrition grant for outreach activities in India).
								<button type="button" class="btn btn-default" id="g-t">Continue Reading...</button>
							</p>
						</div>
					</div>
					<p class="default-p g-nxt" style="text-align:left;">
						Subsequent to her PhD she has  also worked with UC Berkley on an air quality monitoring project for over 40 locations across Delhi.
						She has also edited 6 International books and has taught at the University of Petroleum and Energy Studies, Dehradun and Amity University,
						Noida.<br /> 
						In 2012 Dr. Kaushik received full scholarship (Exceptional Merit among Non-EU students) from School of Management, Swansea University UK
						to undertake MBA. She topped the MBA class and has worked in UK and Turkey in various positions. She returned to India in 2015.<br />
						Currently she is working as Associate Professor in Dept of Civil Engg and Head R &D at Hi Tech Institute of Technology Waluj Maharashtra.<br />
						She has prepared Air Action Plans for 8 cities of Maharashtra  which have been submitted to CPCB through MPCB and approved for funding 
						and implementation under NCAP (National Clean Air Programme).  Dr. Geetanjali has organised 11 workshops in Aurangabad city in collaboration
						with EPIC( Energy Policy Institute at University of Chicago).
					</p><br />
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
		$(".u-nxt").hide();
		$("#u-t").click(function () {
			$(".u-nxt").slideToggle();
		});

		$(".b-nxt").hide();
		$("#b-t").click(function () {
			$(".b-nxt").slideToggle();
		});

		$(".r-nxt").hide();
		$("#r-t").click(function () {
			$(".r-nxt").slideToggle();
		});

		$(".g-nxt").hide();
		$("#g-t").click(function () {
			$(".g-nxt").slideToggle();
		});



		//if ($("#informer").text() === "new") {
		//	$(".notcon").show();
		//	window.setTimeout(function () {
		//		$(".notification-box").addClass("showNotice");
		//	}, 2000);
		//}
	</script>
</body>
</html>

