<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
	<title>BakersInn | Home</title>
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
				<li class="current"><a href="index.aspx">Home</a></li>
				<li><a href="product.aspx">Product Details</a></li>
				<li><a href="about.aspx">About us</a></li>
				<li><a href="gallery.aspx">Gallery</a></li>
				<li><a href="feedback.aspx">Feedback</a></li>
				<li><a href="contact.aspx">Contact Us</a></li>
			</ul>
			<div id="section">
				<ul>
					<li><a href="index.aspx">Biscuits</a></li>
					<li><a href="index.aspx">Cakes</a></li>
					<li><a href="index.aspx">Khari</a></li>
					<li><a href="index.aspx">Toast</a></li>
					<li><a href="index.aspx">Seasonal Specials</a></li>
					
					<li><a href="index.aspx">other</a></li>
				</ul>
				<a href="index.aspx"><img src="images/wedding-cupcakes-large.jpg" alt="Image"/></a>
			</div>
		</div>
	</div>
	<div id="content">
		<div class="home">
			<div class="aside">
				<h1>Welcome to our site</h1>
				<p><b>Baker's Inn </b>is a manufacturing unit which produces quality bakery products.</p>
				<p>All our products are made from the finest ingredients with no artificial flavouring or preservatives.<p>
				<p>All the varities have unique flavour and texture.</p>
			</div>
			<div class="section">
			
				<div>
                    <ul>
					    <li  class="first">
						    <a href="index.aspx"><img src="images/shrewsbury1.jpg" alt="Image" /></a>
					    </li>
                        <li>
						    <a href="index.aspx"><img src="images/burgercake.jpg" alt="Image" /></a>
					    </li>
					    <li>
						    <a href="index.aspx"><img src="images/cupcake.jpg" alt="Image" /></a>
					    </li>
                    </ul>
				</div>
				    <ul>
					    <li class="first">
						    <a href="index.aspx"><img src="images/cake.jpg" alt="Image" /></a>
					    </li>
					    <li>
						    <a href="index.aspx"><img src="images/burgercake.jpg" alt="Image" /></a>
					    </li>
					    <li>
						    <a href="index.aspx"><img src="images/cupcake.jpg" alt="Image" /></a>
					    </li>
				    </ul>
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
