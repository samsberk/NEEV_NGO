<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home - National Education Enrichment in Villages (NEEV)</title>
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
    <script src="https://www.google.com/recaptcha/api.js" async="async" defer="defer"></script>
	<link href="MyCSS/owl.carousel.min.css" rel="stylesheet" />
	<link href="MyCSS/owl.theme.default.min.css" rel="stylesheet" />
    
	<style>
		span.default-p, span.default-h{
			color:white;
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
			<li class="not-on-phone active" style="margin-left:20px;"><a href="Home" class="click-on hvr-underline-from-center">HOME</a></li>
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
		<%---------------------------------------------- Slider ---------------------------------------------------%>
		<%--Images must be in 1400x600--%>
		<div class="panel-body" style="height:10px;width:100%;background:url('Images/joint-w2br.jpg');background-repeat:no-repeat;padding-bottom:0;margin-top:10px;"></div>
		<div class="panel-body" style="background:brown;padding-left:0px;padding-right:0px;">
			<div id="myCarousel1" class="carousel slide" data-ride="carousel">
				<!-- Wrapper for slides -->
				<div class="carousel-inner">
				    <div class="item active">
					    <img src="Images/Slider/sldr6-min.jpg"/>
				    </div>
				    <div class="item">
					    <img src="Images/Slider/sldr1-min.jpg"/>
					    <div class="carousel-caption home-slider">
						    <%--<h3>We work together.</h3>
						    <p>Upstream seeks and builds relationships with individuals who are making a difference in their communities. By finding those who are already creating change, we are deepening impact instead of duplicating it.</p>
						    <a href="#">Learn More</a>--%>
					    </div>
				    </div>
				    <div class="item">
					    <img src="Images/Slider/sldr2-min.jpg"/>
				    </div>
				    <div class="item">
					    <img src="Images/Slider/sldr3-min.jpg"/>
				    </div>
				    <div class="item">
					    <img src="Images/Slider/sldr4-min.jpg"/>
				    </div>
				</div>

				<!-- Left and right controls -->
				<a class="left carousel-control" href="#myCarousel1" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left" style="color:#D92530;"></span>
				<span class="sr-only">Previous</span>
				</a>
				<a class="right carousel-control" href="#myCarousel1" data-slide="next">
				<span class="glyphicon glyphicon-chevron-right" style="color:#D92530;"></span>
				<span class="sr-only">Next</span>
				</a>
			</div>
		</div>
		<div class="panel-body" style="height:10px;width:100%;background:url('Images/joint.jpg');background-repeat:no-repeat;padding-bottom:0;"></div>

		<%--------------------------------------------------About Us----------------------------------------------------------%>
		<div class="panel-body">
			<div class="row text-center">
				<div class="col-md-2"></div>
				<div class="col-md-4">
					<div class="section-box-in text-center not-on-phone">
						<img src="Images/about-us.jpg"/>
					</div>
				</div>
				<div class="col-md-4">
					<h3 class="default-h"><i class="fa fa-institution"></i><br />- About Us -</h3>
					<p class="default-p">
						&emsp;NEEV is one step initiative of IIT Alumni that is directed to build a possible solution for larger national goals of education. 
						The main aim of NEEV initiative is “IF THE POOR CANNOT COME TO EDUCATION, EDUCATION MUST GO TO THEM”.<br />
					</p>
					<a href="About_Us" class="big-link hvr-icon-wobble-vertical hvr-outline-in hvr-buzz-out">Read More &nbsp;<i class="fa fa-paperclip hvr-icon"></i></a>
					<br /><br />
				</div>
				<div class="col-md-2"></div>
			</div>
		</div>
		
		<%--------------------------------------------------------------- Recent Events ----------------------------------------------------------------------%>
		<div class="panel-body" style="height:10px;width:100%;background:url('Images/joint-w2b.jpg');background-repeat:no-repeat;padding-bottom:0;"></div>
		<div class="panel-body" style="background:#1A2E35;">
			<div class="row">
				<div class="col-lg-12 text-center">
				<h3 class="default-h" style="color:white;"><i class="fa fa-history"></i><br />- Recent Events -</h3>
					<div class="loop owl-carousel owl-theme">
						<div class="item">
							<div class="panel-body" style="height:5px;width:100%;background:url('Images/joint-b2w.jpg');background-repeat:no-repeat;padding-bottom:0;"></div>
							
							<div class="card-outer">
								<div class="card-outer-in">
									<img src="Images/Chrismas18/ch1-min.jpg" />
								</div>
								<h3 class="default-h">Chrismas'18</h3>
								<p class="default-p">
									On Christmas 2018, we decided to make the festival special to them. We respect varying religions and
									cultures and we work in communities where our mission can contribute to develop the village children.
								</p>
								<a href="Chrismas_18" class="btn btn-default btn-sm hvr-icon-drop">Learn More &nbsp;<i class="fa fa-paperclip hvr-icon"></i></a><br /><br />
							</div>
							
							<div class="panel-body" style="height:5px;width:100%;background:url('Images/joint-w2b.jpg');background-repeat:no-repeat;padding-bottom:0;"></div><br />
						</div>
						<div class="item">
							<div class="panel-body" style="height:5px;width:100%;background:url('Images/joint-b2w.jpg');background-repeat:no-repeat;padding-bottom:0;"></div>
							
							<div class="card-outer">
								<div class="card-outer-in">
									<img src="Images/LalSlumClass/lsc1-min.jpg" />
								</div>
								<h3 class="default-h">Slum Classes</h3>
								<p class="default-p">
									A deligation of  IITD Alumni consisting Mr Atul Bal, Dr Geetanjali, Dr Kavita, Mrs Jyotsna ji, Mrs Namrta ji specially 
									visited the NEEV village classes  from delhi and they organised a special workshop for the kids.
								</p>
								<a href="Lalkurti_Slum_Class" class="btn btn-default btn-sm hvr-icon-drop">Learn More &nbsp;<i class="fa fa-paperclip hvr-icon"></i></a><br /><br />
							</div>
							
							<div class="panel-body" style="height:5px;width:100%;background:url('Images/joint-w2b.jpg');background-repeat:no-repeat;padding-bottom:0;"></div><br />
						</div>
						<div class="item">
							<div class="panel-body" style="height:5px;width:100%;background:url('Images/joint-b2w.jpg');background-repeat:no-repeat;padding-bottom:0;"></div>
							
							<div class="card-outer">
								<div class="card-outer-in">
									<img src="Images/LearningBydoing/ld2-min.jpg" />
								</div>
								<h3 class="default-h">Learning By Doing</h3>
								<p class="default-p">
									A deligation from Chandigarh, members of IITDAA visited our classes and they provided children with
									creative learning classes with the help of paper folding, robotics, innovative teaching techniques etc.
								</p>
								<a href="Learning_By_Doing" class="btn btn-default btn-sm hvr-icon-drop">Learn More &nbsp;<i class="fa fa-paperclip hvr-icon"></i></a><br /><br />
							</div>
							
							<div class="panel-body" style="height:5px;width:100%;background:url('Images/joint-w2b.jpg');background-repeat:no-repeat;padding-bottom:0;"></div><br />
						</div>
						<div class="item">
							<div class="panel-body" style="height:5px;width:100%;background:url('Images/joint-b2w.jpg');background-repeat:no-repeat;padding-bottom:0;"></div>
							
							<div class="card-outer">
								<div class="card-outer-in">
									<img src="Images/MonthlyTests/mt1-min.jpg" />
								</div>
								<h3 class="default-h">Monthly Tests</h3>
								<p class="default-p">
									Education is the backbone of any society or country; even it was a famous saying that if you wish to destroy
									any nation, destroy its education system, the nation will destroy itself automatically.
								</p>
								<a href="Monthly_Tests" class="btn btn-default btn-sm hvr-icon-drop">Learn More &nbsp;<i class="fa fa-paperclip hvr-icon"></i></a><br /><br />
							</div>
							
							<div class="panel-body" style="height:5px;width:100%;background:url('Images/joint-w2b.jpg');background-repeat:no-repeat;padding-bottom:0;"></div><br />
						</div>
						<div class="item">
							<div class="panel-body" style="height:5px;width:100%;background:url('Images/joint-b2w.jpg');background-repeat:no-repeat;padding-bottom:0;"></div>
							
							<div class="card-outer">
								<div class="card-outer-in">
									<img src="Images/SaplingQuizes/sq1-min.jpg" />
								</div>
								<h3 class="default-h">Sapling & Quizes</h3>
								<p class="default-p">&emsp;
									Lots of people from around the world came to India to have education. the Britishers came into power,
									and destroyed out education system. The made public and private schools whereas previously.
								</p>
								<a href="Sapling_And_Quizes" class="btn btn-default btn-sm hvr-icon-drop">Learn More &nbsp;<i class="fa fa-paperclip hvr-icon"></i></a><br /><br />
							</div>
							
							<div class="panel-body" style="height:5px;width:100%;background:url('Images/joint-w2b.jpg');background-repeat:no-repeat;padding-bottom:0;"></div><br />
						</div>
						<div class="item">
							<div class="panel-body" style="height:5px;width:100%;background:url('Images/joint-b2w.jpg');background-repeat:no-repeat;padding-bottom:0;"></div>
							
							<div class="card-outer">
								<div class="card-outer-in">
									<img src="Images/Shoesdist/sd2-min.jpg" />
								</div>
								<h3 class="default-h">Shoes Distribution</h3>
								<p class="default-p">&emsp;
									Team from U we can, modinagar visited the slum class and distributed 40 pairs of shoes to the children of the classes,
									also they distributed tooth brushes, and eatables to all the children.
								</p>
								<a href="Shoes_Distribution_19" class="btn btn-default btn-sm hvr-icon-drop">Learn More &nbsp;<i class="fa fa-paperclip hvr-icon"></i></a><br /><br />
							</div>
							
							<div class="panel-body" style="height:5px;width:100%;background:url('Images/joint-w2b.jpg');background-repeat:no-repeat;padding-bottom:0;"></div><br />
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="panel-body" style="height:10px;width:100%;background:url('Images/joint-b2w.jpg');background-repeat:no-repeat;padding-bottom:0;"></div>

		<%------------------------------------------------------------- Our Works -----------------------------------------------%>
		<div class="panel-body">
			<div class="row">
				<div class="col-md-1"></div>
				<div class="col-md-5">
					<div class="section-box-in text-center not-on-phone">
						<img src="Images/wheel.png"/>
					</div>
				</div>
				<div class="col-md-5 text-center">
					<h3 class="default-h"><i class="fa fa-cogs"></i><br />- Our Works -</h3>
					<p class="default-p">
						Education plays an important role in human life regarding to build their personality, career and mental growth. Education is the best tool for facing any up and down situation through the whole life. We can not only improve our personal life by education but also can bring an amazing positive change in society or nation.
					</p>
					<a href="Events" class="big-link hvr-icon-rotate hvr-outline-in">Read More &nbsp;<i class="fa fa-paperclip hvr-icon"></i></a>
					<br /><br />
				</div>
				<div class="col-md-1"></div>
			</div>
		</div>

		<%--------------------------------------------------------------------  -----------------------------------------------------------%>

		<div class="panel-body" style="height:10px;width:100%;background:url('Images/joint-w2b.jpg');background-repeat:no-repeat;padding-bottom:0;"></div>
		<div class="panel-body section-box" style="background:#1A2E35;">
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
		<div class="panel-body" style="height:10px;width:100%;background:url('Images/joint-b2w.jpg');background-repeat:no-repeat;padding-bottom:0;"></div>

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
		
		<%-------------------------------------------------------------------- Our Story -----------------------------------------------------------%>
		<div class="panel-body" style="height:10px;width:100%;background:url('Images/joint-w2br.jpg');background-repeat:no-repeat;padding-bottom:0;"></div>
		<div class="panel-body" style="background:brown;">
			<div class="row text-center">
				<h3 class="default-h" style="color:white;"><i class="fa fa-pen-square"></i><br />- Our Story -</h3>
				<div class="col-md-2"></div>
				<div class="col-md-8">
					<div class="row">
						<div class="col-md-1"></div>
						<div class="col-md-10">
							<h3 class="default-h" style="color:white;">...Because we exist,</h3>
							<p class="default-p" style="text-align:center;color:white;">
								India is a country having more than 1.25 Billion population and roughly 70% of its population resides in villages. 
								Education should reach every citizen of the country irrespective of his cast, creed, monetary status etc.  In urban
								areas education level is high; students find  quality schools and colleges from where they can gain knowledge and
								take part in national development. But these opportunities are very limited in rural, tribal and slum areas of our
								country. Therefore, one needs to focus on the population living in villages as majority of less privileged population
								resides in those areas.
							</p>
							<a href="Our_Story" class="big-link hvr-icon-drop hvr-outline-in hvr-buzz-out" style="color:white;">Continue Reading &nbsp;<i class="fa fa-paperclip hvr-icon"></i></a>
							<br />
							<br />
						</div>
						<div class="col-md-1"></div>
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
        if ($("#informer").text() === "msgsent") {
            $(".notcon").show();
            window.setTimeout(function () {
                $(".notification-box").addClass("showNotice");
            }, 2000);
        }
    </script>
</body>
</html>

