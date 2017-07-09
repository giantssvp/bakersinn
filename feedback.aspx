<%@ Page Language="C#" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="feedback" EnableEventValidation="false" %>

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
			</div>
			<ul>
				<li><a href="index.aspx">Home</a></li>
				<li><a href="product.aspx">Product Details</a></li>
				<li><a href="about.aspx">About us</a></li>
				<li><a href="gallery.aspx">gallery</a></li>
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
                    <%for (int i = 0; i < total ; i++){%>
                        <li>
						    <div>                            
							    <div>                                
								    <span class="date"><%=list[2][i]%> </span>								
								    <h1><a href="index.aspx"> <%=list[0][i]%> </a></h1>
								    <p><%=list[1][i]%></p>								
							    </div>
						    </div>
					    </li>
                    
                    <% } //foreach %>
				</ul>
				       
			</div>
             
		<div id="sidebar">
            <br />
			<h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Feedback</h1>
			<form runat="server">
				<input type="text" id="name" runat="server" maxlength="30" placeholder="Name" class="textcontact" />
				<input type="email" id="email" runat="server" maxlength="50" placeholder="E-mail Address" class="textcontact" />
         	    <input type="text" id="subject" runat="server" maxlength="50" placeholder="Subject [Required]" class="textcontact" required/>
         		<textarea id="message" runat="server" cols="30" rows="10" maxlength="500" placeholder="Message [Required]" required></textarea>
				<input type="submit" id="submit_button" value="" class="submit" runat="server" onclientclick="checkEmail" onserverclick="submit_button_Click" />
			</form>
		</div>
	</div>
        <div>
                    <a class="newpost" runat="server" onserverclick="first_Click">First</a>&nbsp;&nbsp;
					<a class="newpost" runat="server" onserverclick="new_post_Click">New Post</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<a class="oldpost" runat="server" onserverclick="old_post_Click">Old Post</a>&nbsp;&nbsp;
                    <a class="newpost" runat="server" onserverclick="last_Click">Last</a>
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
    <script>
        function checkEmail()
        {
            var email1 = document.getElementById('email');
            var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;

            if (!filter.test(email1.value))
            {
                alert('Please provide a valid email address');
                email1.focus();
                return false;
            }
            return true;
        }
    </script>
</html>