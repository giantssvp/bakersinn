﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="product.aspx.cs" Inherits="product" %>

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
				<div>
					
					<form action="#">
						<input type="text" id="search" maxlength="30" />
						<input type="submit" value="" id="searchbtn" />
					</form>
				</div>
			</div>
			<ul>
				<li><a href="index.aspx">Home</a></li>
				<li class="current"><a href="product.aspx">Product Details</a></li>
				<li><a href="about.aspx">About us</a></li>
				<li><a href="gallery.aspx">Gallery</a></li>
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
			<h1>BAKER'S INN</h1>
			<ul>
				<li>
					<div>
						<div>
							<h2>Biscuits</h2>
							<br><p><b>Assorted crispy biscuits made from pure butter and natural ingredients</b></p>
							<a href="index.html" class="view">view all</a>
						</div>
						<img src="images/special-treats.jpg" alt="Image" />
					</div>
				</li>
				<li>
					<div>
						<div>
							<h2>Cakes</h2>
							<br><p><b>Light and fluffy cakes </b></p>
							<a href="index.html" class="view">view all</a>
						</div>
						<img src="images/tarts.jpg" alt="Image" />
					</div>
				</li>
				<li>
					<div>
						<div>
							<h2>Toasts</h2>
							<br><p><b>Launching Soon ...... </b></p>
							<a href="index.html" class="view">view all</a>
						</div>
						<img src="images/cakes.jpg" alt="Image" /></a>
					</div>
				</li>
				<li>
					<div>
						<div>
							<h2>Khari</h2>
							<br><p><b> Crispy and crunchy snack </b></p>
							<a href="index.html" class="view">view all</a>
						</div>
						<img src="images/dessert.jpg" alt="Image" />
					</div>
				</li>
				<li>
					<div>
						<div>
							<h2>Seasonal special</h2>
							<br><p><b> Gift your near and dear ones our seasonal specialties</b> </p>
							<a href="index.html" class="view">view all</a>
						</div>
						<img src="images/pastries.jpg" alt="Image" />
					</div>
				</li>
				<li>
					<div>
						<div>
							<h2></h2>
							<p></p>
							
						</div>
						<img src="images/healthy-food.jpg" alt="Image" /></a>
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
