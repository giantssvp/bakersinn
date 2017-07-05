<%@ Page Language="C#" AutoEventWireup="true" CodeFile="product.aspx.cs" Inherits="product" %>

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
							<h2>Biscuits <img src="images/veg_logo.jpg"/> </h2>
							<br /><p><b>Assorted crispy biscuits made from pure butter and natural ingredients</b></p>
							<a href="product_biscuits.aspx" class="view">view all</a>
						</div>
						<img src="images/special-treats.jpg" alt="Image" />
					</div>
				</li>
				<li>
					<div>
						<div>
							<h2>Cakes <img src="images/non_veg_logo.jpg"/></h2>
							<br /><p><b>Light and fluffy cakes </b></p>
							<a href="product_cakes.aspx" class="view">view all</a>
						</div>
						<img src="images/tarts.jpg" alt="Image" />
					</div>
				</li>				
				<li>
					<div>
						<div>
							<h2>Khari <img src="images/veg_logo.jpg"/></h2>
							<br /><p><b> Crispy and crunchy snack </b></p>
							<a href="product_khari.aspx" class="view">view all</a>
						</div>
						<img src="images/dessert.jpg" alt="Image" />
					</div>
				</li>
				<li>
					<div>
						<div>
							<h2>Seasonal special <img src="images/veg_logo.jpg"/> <img src="images/non_veg_logo.jpg"/></h2>
							<br /><p><b> Gift your near and dear ones our seasonal specialities</b> </p>
							<a href="product_seasonal.aspx" class="view">view all</a>
						</div>
						<img src="images/pastries.jpg" alt="Image" />
					</div>
				</li>
                <li>
					<div>
						<div>
							<h2>Toasts</h2>
							<br /><p><b>Launching Soon ...... </b></p>
						</div>
						<img src="images/cakes.jpg" alt="Image" />
					</div>
				</li>
				<li>
					<div>
						<div>
							<h2></h2>
							<p></p>
							
						</div>
						<img src="images/healthy-food.jpg" alt="Image" />
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
