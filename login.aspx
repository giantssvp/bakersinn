<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<meta charset="utf-8" />
	<title>BakersInn | Login</title>

	<!-- Google Fonts -->
	<link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700|Lato:400,100,300,700,900' rel='stylesheet' type='text/css' />

	<link rel="stylesheet" href="css/animate.css" />
	<!-- Custom Stylesheet -->
	<link rel="stylesheet" href="css/style_login.css"  />

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
</head>

<body>
    <form runat="server">
	<div class="container">
		<div class="login-box animated fadeInUp">
			<div class="box-header">
				<h2>BakersINN Log In</h2>
			</div>
			<label for="username">Username <span style="color:red;">*</span></label>
			<br/>
			<input type="text" id="username" runat="server" required/>
			<br/>
			<label for="password">Password <span style="color:red;">*</span></label>
			<br/>
			<input type="password" id="password" runat="server" required/>
			<br/>
			<button type="submit" runat="server" id="login_button" value="" onserverclick="login_button_Click">Sign In</button>
			
		</div>
	</div>
        </form>
</body>

<script>
	$(document).ready(function () {
    	$('#logo').addClass('animated fadeInDown');
    	$("input:text:visible:first").focus();
	});
	$('#username').focus(function() {
		$('label[for="username"]').addClass('selected');
	});
	$('#username').blur(function() {
		$('label[for="username"]').removeClass('selected');
	});
	$('#password').focus(function() {
		$('label[for="password"]').addClass('selected');
	});
	$('#password').blur(function() {
		$('label[for="password"]').removeClass('selected');
	});
</script>

</html>