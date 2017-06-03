<%@ Page Language="C#" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
	<title>BakersInn | Contact Us</title>
	<link rel="stylesheet" type="text/css" href="css/style.css" />
	<!--[if IE 8]>
		<link rel="stylesheet" type="text/css" href="css/ie8.css" />
	<![endif]-->
	<!--[if IE 7]>
		<link rel="stylesheet" type="text/css" href="css/ie7.css" />
	<![endif]-->
	<!--[if IE 6]>
		<link rel="stylesheet" type="text/css" href="css/ie6.css" />
	<![endif]-->
</head>
<body>
	<div id="header">
		<div>
			<div>
				<div id="logo">
					<a href="index.aspx"><img src="images/logo.jpg" alt="Logo"/></a>
				</div>
				<div>
					
					<form action="#">
						<input type="text" id="search" maxlength="30" />
						<input type="submit" value="" id="searchbtn" />
					</form>
				</div>
			</div>
			<ul>
				<li><a href="index.aspx">Home</a></li>
				<li><a href="product.aspx">Product Details</a></li>
				<li><a href="about.aspx">About us</a></li>
				<li><a href="gallery.aspx">Gallery</a></li>
				<li><a href="feedback.aspx">Feedback</a></li>
				<li class="current"><a href="contact.aspx">Contact Us</a></li>
			</ul>
			<div class="section">
				<a href="index.aspx"><img src="images/wedding-cupcakes-small1.jpg" alt="Image"/></a>
			</div>
		</div>
	</div>
	<div id="content">
		<div id="about">
			<div class="section">
									
				<div>
					<h3>Address</h3>
					<p> BAKER'S INN <br /> SHOP NO.1, ISHA CHAMBER, <br /> 853 BHAWANI PETH, <br /> PUNE - 411042 </p>
				</div>
				<div>
					<a href="index.aspx" class="callus">CALL US <span> 9975050031 / 8600647770 </span></a>
				</div>
			</div>
			<div class="section">
				
				<div>
				<h3>Google Map</h3><br />
                    <a href="https://www.google.co.in/maps/place/Baker's+Inn/@18.5127483,73.8689691,19z/data=!4m8!1m2!2m1!1sbakersinn+pune!3m4!1s0x3bc2c0416cdd41f5:0x541350d3dd60d3d5!8m2!3d18.5123048!4d73.869329?hl=en" target="_blank"><img src="images/google_map3.jpg" alt="Image"/></a>
				</div>
			</div>
		</div>
	</div>
	<div id="footer">		
		<div id="navigation">
			<div>
				<br/>
				<p>Copyright &copy; 2017 bakersinn All rights reserved</p>
			</div>
		</div>
	</div>
</body>
</html>
