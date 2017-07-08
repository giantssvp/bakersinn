<%@ Page Language="C#" AutoEventWireup="true" CodeFile="about.aspx.cs" Inherits="about" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
	<title>BakersInn | About Us</title>
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
    <style>
       p {
            font-family: Romantic;
            font-size:20px;
            font-style: italic;
        }
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
				<li><a href="index.aspx">Home</a></li>
				<li><a href="product.aspx">Product Details</a></li>
				<li class="current"><a href="about.aspx">About us</a></li>
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
		<div id="about">
			<div class="aside">
				<h1>Our Story: </h1>

				<p>My passion for baking gave me the courage to start an independent business. </p>
                <p>As the saying goes "Growth is never by mere chance; it is the result of forces working together",
                     so with my wife Sangita and daughter Arti we founded Baker's Inn in 2007.</p>
                <p>Three decades of experience in Bakery and Confectionary business helped me venture into
				   an independent entity of my own after a long struggle and efforts.</p>
                <p>Today Baker's Inn is a well known brand known for specialized biscuit and cake varieties 
				   which are sold at numerous outlets in Pune. </p>
                <p>I always believe that through hard work, preservance and faith in god, you can achieve what you want. </p>
				
			</div>
			<div class="section">
				 <ul>					    
                    <li>
						<a href="index.aspx"><img src="images/about/baker.jpg" alt="Image" /></a>
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
