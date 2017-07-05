<%@ Page Language="C#" AutoEventWireup="true" CodeFile="product_seasonal.aspx.cs" Inherits="product_seasonal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
	<title>BakersInn | Product Details</title>
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
			</div>
			<ul>
				<li><a href="index.aspx">Home</a></li>
				<li class="current"><a href="product.aspx">Product Details</a></li>
				<li><a href="about.aspx">About us</a></li>
				<li><a href="gallery.aspx">gallery</a></li>
				<li><a href="feedback.aspx">Feedback</a></li>
				<li><a href="contact.aspx">Contact Us</a></li>
			</ul>
			<div class="section">
				<a href="index.aspx"><img src="images/wedding-cupcakes-small1.jpg" alt="Image"/></a>
			</div>
		</div>
	</div>
	<div id="content">
		<div>
			<ul>
				<li>
					<div>
						<div>
							<h2>Easter Eggs <img src="images/veg_logo.jpg"/></h2>
							<br /><p><b>Made from handmade chocolates, these are decorated eggs that are used as gifts during Easter season.</b></p>
						</div>
						<img src="images/product/seasonal/Eggs.jpg" alt="Image" />
					</div>
				</li>
				<li>
					<div>
						<div>
							<h2>Plum Cakes for Christmas <img src="images/non_veg_logo.jpg"/></h2>
							<br /><p><b>This delicious cake is a combination of real plums soaked in rum, dried fruits,spices and caramel that makes this cake so special for christmas.</b></p>
						</div>
						<img src="images/product/seasonal/Plum.jpg" alt="Image" hspace="20"  />
					</div>
				</li>			
			</ul>
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