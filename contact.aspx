<%@ Page Language="C#" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
	<title>BakersInn | Contact Us</title>
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

    <style type="text/css">  
      html, body, #canvasMap {  
        height: 400px; 
      } 
    </style> 
    
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?v=3.exp&key=AIzaSyBiZbK_ycQUlATsTiFMzbpGF50zSFgfSfg"></script>  
    <script type="text/javascript">  
        var map;  
        var coordinates = { lat: 18.5123048, lng: 73.86933513 };
        function LoadGoogleMAP() {  
            var SetmapOptions = {  
                zoom: 20,
                center: coordinates, 
                zoomControl: true
            };  
            map = new google.maps.Map(document.getElementById('canvasMap'),  
                SetmapOptions);  

            var marker = new google.maps.Marker({
                position: coordinates,
                map: map
            });
        }  
  
        google.maps.event.addDomListener(window, 'load', LoadGoogleMAP);  
  
    </script> 
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
				<li><a href="product.aspx">Product Details</a></li>
				<li><a href="about.aspx">About us</a></li>
				<li><a href="gallery.aspx">gallery</a></li>
				<li><a href="feedback.aspx">Feedback</a></li>
				<li class="current"><a href="contact.aspx">Contact Us</a></li>
			</ul>
			<div class="section">
				<a href="index.aspx"><img src="images/wedding-cupcakes-small1.jpg" alt="Image"/></a>
			</div>
		</div>
	</div>
	<div id="content">
		<div id="about">
			<div class="section">									
				<div>
					<h3>Address</h3>
					<p> BAKER'S INN <br /> SHOP NO.1, ISHA CHAMBER, <br /> 853 BHAWANI PETH, <br /> PUNE - 411042 </p>
				</div>
				<div>
					<a href="index.aspx" class="callus">CALL US <span> 9975050031 / 8600647770 </span></a>
				</div>
			</div>
			<div class="section">
				<div id="canvasMap" style="width:400px; align-self:flex-start" > </div>
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
