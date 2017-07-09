<%@ Page Language="C#" AutoEventWireup="true" CodeFile="gallery.aspx.cs" Inherits="gallery" EnableEventValidation="false" %>

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
h1,h2,h3,h4,h5,h6 {font-family: "Karma", sans-serif}
.w3-bar-block .w3-bar-item {padding:20px}
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
	
    <div class="w3-main w3-content w3-padding" style="max-width:900px;margin-top:10px">
        <div class="w3-row-padding w3-padding-16 w3-center" id="food">
            <form runat="server">
                <div class="w3-center w3-padding-32">
                    <div>
                        <a class="w3-bar-item w3-button w3-hover-black" runat="server" onserverclick="previous_button_Click"> <<  </a> &nbsp;&nbsp;&nbsp;
                        <a class="w3-bar-item w3-button w3-hover-black" runat="server" onserverclick="next_button_Click">  >>  </a>
                    </div>
                </div>   
            </form>
    
            <%for (int i = 0; i < row_count; i++) { %>
                <div class="w3-quarter ">
                    <img src="<% =list[1][i] %>" alt="Sandwich" style="width:100%" />
                    <h4><% =list[0][i] %></h4>
                </div>
            <%} %>    
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