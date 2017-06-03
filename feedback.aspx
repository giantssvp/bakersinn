<%@ Page Language="C#" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="feedback" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
	<title>BakersInn | Feedback</title>
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
				<li class="current"><a href="feedback.aspx">Feedback</a></li>
				<li><a href="contact.aspx">Contact Us</a></li>
			</ul>
			<div class="section">
				<a href="index.aspx"><img src="images/wedding-cupcakes-small1.jpg" alt="Image"/></a>
			</div>
		</div>
	</div>
	<div id="content">
        <div id="blog">
			<div id="articles">
				<ul>
					<li>
						<div>
							<div>
								<span class="date">&nbsp;&nbsp;Dec 3</span>
								
								<h1><a href="index.aspx">New Recipes: Fancy Desserts</a></h1>
								<h2>Let&#39;s bake!</h2>
								<p>Nullam ut mollis odio. Duis tempor interdum tellus, sit amet aliquet dui dictum a. Quisque in lacus vel dui tempus porttitor mollis vitae dolor. Phasellus lacinia est at massa mattis consequat. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Duis condimentum ultricies scelerisque. Quisque vulputate laoreet erat at consequat. Sed sit amet sem sed lectus consectetur ultrices. Ut tincidunt, augue id sollicitudin placerat, magna nisl tempor arcu, vitae blandit risus ligula nec erat. Nunc convallis, erat in ornare tempus, ligula ipsum lacinia metus, nec bibendum tortor neque eget diam. Donec imperdiet faucibus enim, vel sodales tortor blandit a. Suspendisse potenti. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nam eleifend tincidunt iaculis.</p>
								
							</div>
						</div>
					</li>
					<li>
						<div>
							<div>
								<span class="date">&nbsp;&nbsp;Nov 29</span>
								
								<h1><a href="index.aspx">3 Day Christmas Sale on the Shop</a></h1>
								<h2>December 3-5&#44; 2011 Crazy Discounts</h2>
								<p>Pellentesque placerat sollicitudin metus eget euismod. Suspendisse potenti. Sed nibh augue, rutrum quis posuere quis, elementum et enim. Morbi varius varius odio ac facilisis. Pellentesque ut erat vulputate ligula elementum ultrices. Morbi tempor magna sed tellus pellentesque ac ultricies justo euismod. Proin vitae enim non eros eleifend aliquam. Morbi posuere nibh vitae sapien ultrices molestie. Vivamus elit nulla, dignissim non fringilla vel, facillisis et arcu.</p>
								
							</div>
						</div>
					</li>
				</ul>
				<div class="section">
					<a href="index.aspx" class="newpost">New Post</a>
					<a href="index.aspx" class="oldpost">Old Post</a>
				</div>
			</div>
		<div id="sidebar">
            <br />
			<h1>Feedback</h1>
			
			<form runat="server">
				<input type="text" id="name" runat="server" maxlength="30" placeholder="Name" class="textcontact" />
				<input type="text" id="email" runat="server" maxlength="50" placeholder="E-mail Address" class="textcontact" />
				<input type="text" id="subject" runat="server" maxlength="50" placeholder="Subject" class="textcontact" />
				<textarea id="message" runat="server" cols="30" rows="10" maxlength="500"></textarea>
				<input type="submit" id="submit_button" value="" class="submit" runat="server" onserverclick="submit_button_Click" />
			</form>
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
