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
   <!-- <link rel="stylesheet" type="text/css" href="css/w3.css" /> -->
<style>  
.mySlides {display:none;}
</style>
<body>
	<div id="header">
		<div>
			<div>
				<div id="logo">
					<a href="index.aspx"><img src="images/logo.jpg" alt="Logo"/></a>
				</div>
			</div>
			<ul>
				<li class="current"><a href="index.aspx">Home</a></li>
				<li><a href="product.aspx">Product Details</a></li>
				<li><a href="about.aspx">About us</a></li>
				<li><a href="gallery.aspx">gallery</a></li>
				<li><a href="feedback.aspx">Feedback</a></li>
				<li><a href="contact.aspx">Contact Us</a></li>
			</ul>
			<div id="section">
				<ul>
					<li><a href="product_biscuits.aspx">Biscuits</a></li>
					<li><a href="product_cakes.aspx">Cakes</a></li>
					<li><a href="product_khari.aspx">Khari</a></li>
					<li><a href="index.aspx">Toast</a></li>
					<li><a href="product_seasonal.aspx">Seasonal Specials</a></li>
					
					<li><a href="index.aspx">other</a></li>
				</ul>
                    <img class="mySlides" src="images/home/badam.jpg" style="width:73%"/> 
                    <img class="mySlides" src="images/home/cashew.jpg" style="width:73%"/> 
                    <img class="mySlides" src="images/home/chocolate.jpg" style="width:73%"/> 
                    <img class="mySlides" src="images/home/coffee.jpg" style="width:73%"/> 
                    <img class="mySlides" src="images/home/roat.jpg" style="width:73%"/> 
                    <img class="mySlides" src="images/home/shrewsbury.jpg" style="width:73%"/> 

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
						    <a href="index.aspx"><img src="images/first.jpg" alt="Image" /></a>
					    </li>
                        <li>
						    <a href="index.aspx"><img src="images/new1.jpg" alt="Image" /></a>
					    </li>
					    <li>
						    <a href="index.aspx"><img src="images/cupcake.jpg" alt="Image" /></a>
					    </li>
                    </ul>
				</div>
				    <ul>
					    <li class="first">
						    <a href="index.aspx"><img src="images/second.jpg" alt="Image" /></a>
					    </li>
					    <li>
						    <a href="index.aspx"><img src="images/new2.jpg" alt="Image" /></a>
					    </li>
					    <li>
						    <a href="index.aspx"><img src="images/burgercake.jpg" alt="Image" /></a>
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

    <script>
var myIndex = 0;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";  
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}    
    x[myIndex-1].style.display = "block";  
    setTimeout(carousel, 2000); // Change image every 2 seconds
}
</script>	
</body>
</html>
