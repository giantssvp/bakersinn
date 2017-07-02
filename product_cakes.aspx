<%@ Page Language="C#" AutoEventWireup="true" CodeFile="product_cakes.aspx.cs" Inherits="product_cakes" %>

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
			<h1>BAKER'S INN</h1>
			<ul>
				<li>
					<div>
						<div>
							<h2>Mawa Cup Cake</h2>
							<br /><p><b>Soft and fluffy cake made from real Mawa and spiced with cardamom powder.</b></p>
						</div>
						<img src="images/cakes/Mawa.jpg" alt="Image" />
					</div>
				</li>
				<li>
					<div>
						<div>
							<h2>Plain Cake</h2>
							<br /><p><b>If you like simple cakes with no extra ingredients , plain cake will be the right choice that contains only pure butter. </b></p>
						</div>
						<img src="images/cakes/Plain.jpg" alt="Image" hspace="20"  />
					</div>
				</li>
				<li>
					<div>
						<div>
							<br />
							<h2>Fruit Cake</h2>
							<br /><p><b>This Tutti Fruti fruit cake is fluffy and delicious. </b></p>
						</div>
						<img src="images/cakes/Fruit.jpg" alt="Image" vspace="20"/></a>
					</div>
				</li>
				<li>
					<div>
						<div>
							<br />
							<h2>Chocolate Walnut Cake</h2>
							<br /><p><b> Chocolate and walnuts are a great combination and what can be better than eating a cake that is full of real walnuts and dark chocolate. </b></p>
						</div>
						<img src="images/cakes/Chocolate.jpg" alt="Image" hspace="20" vspace="20" />
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