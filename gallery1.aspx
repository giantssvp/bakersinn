<%@ Page Language="C#" AutoEventWireup="true" CodeFile="gallery1.aspx.cs" Inherits="gallery" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
	<title>BakersInn | Photo Gallery</title>
	<link rel="stylesheet" type="text/css" href="css/style.css" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<link rel="stylesheet" type="text/css" href="css/w3.css" />
	<link rel="stylesheet" type="text/css" href="css/font.css" />
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
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Karma", sans-serif}
.w3-bar-block .w3-bar-item {padding:20px}
</style>
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
				<li class="current"><a href="gallery.aspx">gallery</a></li>
				<li><a href="feedback.aspx">Feedback</a></li>
				<li><a href="contact.aspx">Contact Us</a></li>
			</ul>
			<div class="section">
				<a href="index.aspx"><img src="images/wedding-cupcakes-small1.jpg" alt="Image"/></a>
			</div>
		</div>
	</div>
	<!--<div id="content"> -->
		<!-- !PAGE CONTENT! -->

  <!-- Pagination -->
  <div class="w3-center w3-padding-32">
    <div class="w3-bar">
      <a href="#" class="w3-bar-item w3-button w3-hover-black">«</a>
      <a href="gallery.aspx" class="w3-bar-item w3-button">1</a>
      <a href="gallery1.aspx" class="w3-bar-item w3-button w3-black w3-hover-black">2</a>
      <a href="#" class="w3-bar-item w3-button w3-hover-black">»</a>
    </div>
  </div>
 
<div class="w3-main w3-content w3-padding" style="max-width:900px;margin-top:10px">

  <!-- First Photo Grid-->
  <div class="w3-row-padding w3-padding-16 w3-center" id="food">
    <div class="w3-quarter">
      <img src="images/loose_packets/badam.jpg" alt="Sandwich" style="width:100%">
      <h3>Badam Biscuits</h3>
      <p></p>
    </div>
    <div class="w3-quarter">
      <img src="images/loose_packets/bournvita.jpg" alt="Steak" style="width:100%">
      <h3>Bournvita Biscuits</h3>
      <p></p>
    </div>
    <div class="w3-quarter">
      <img src="images/loose_packets/butter_scotch.jpg" alt="Cherries" style="width:100%">
      <h3>Butter Scotch Biscuits</h3>
      <p></p>
    
    </div>
    <div class="w3-quarter">
      <img src="images/loose_packets/cashew.jpg" alt="Pasta and Wine" style="width:100%">
      <h3>Cashew Biscuits</h3>
      <p></p>
    </div>
  </div>
  
  <!-- Second Photo Grid-->
  <div class="w3-row-padding w3-padding-16 w3-center">
    <div class="w3-quarter">
      <img src="images/loose_packets/choco_chips.jpg" alt="Popsicle" style="width:100%">
      <h3>Chocochips Biscuits</h3>
      <p></p>
    </div>
    <div class="w3-quarter">
      <img src="images/loose_packets/coconut.jpg" alt="Salmon" style="width:100%">
      <h3>Coconut Biscuits</h3>
      <p></p>
    </div>
    <div class="w3-quarter">
      <img src="images/loose_packets/chocolate.jpg" alt="Sandwich" style="width:100%">
      <h3>Chocolate Biscuits</h3>
      <p></p>
    </div>
    <div class="w3-quarter">
      <img src="images/loose_packets/coconut_crunch1.jpg" alt="Croissant" style="width:100%">
      <h3>Coconut Crunch Biscuits</h3>
      <p></p>
    </div>
  </div>
<!-- End page content -->
   </div>

	<!--</div>-->
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

