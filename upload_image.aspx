<%@ Page Language="C#" AutoEventWireup="true" CodeFile="upload_image.aspx.cs" Inherits="upload_image" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
    <meta charset="UTF-8" />
	<title>BakersInn | Upload Image</title>
    <link href="css/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
	<link rel="stylesheet" type="text/css" href="css/style_table.css" />
    <link rel="stylesheet" type="text/css" href="css/boostrap.css" />
    <link rel="stylesheet" type="text/css" href="css/main.css" />
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
<body class="  ">
    <form id="Form_upload" method="post" enctype="multipart/form-data" runat="server">
    <div class="bg-dark dk" id="wrap">
        <div id="top">
            <!-- .navbar -->
            <!--<nav class="navbar navbar-inverse navbar-static-top"> -->
                <div class="container-fluid">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <header class="navbar-header">
                        <a href="index.aspx" class="navbar-brand"><img src="images/logo_admin_image.jpg" alt="" /></a>
                        <a href="index.aspx" class="navbar-brand"><img src="images/logo_admin_name.jpg" alt="" /></a>
                        <font color="#3a3a3a" size="7">.</font>
                    </header>                   
                    <!--<div class="topnav">
                    </div>-->
                     <div class="topnav">                         
                        <div class="btn-group">
                            <a runat="server" data-toggle="tooltip" data-original-title="Logout" data-placement="bottom"
                                    class="btn btn-metis-1 btn-sm">
                                    <i class="fa fa-power-off"></i>
                            </a>
                                   
                         </div>
             </div>
                    
                </div>
                    <!-- /.container-fluid -->
            <!-- </nav>
                    <!-- /.navbar -->
        </div>
        <!-- /#top -->
        <!-- /#content -->
    </div>
        <br /> <br /> <br />
       
    <div id="content" align="center">
        <label> Display Name : </label>
        <input type="text" id="display_name" name="display_name" runat="server" maxlength="21" required/> <span style="color:red;"> * </span>
        <br /><br />
        <asp:FileUpload ID="FileUpload1" runat="server" accept=".png,.jpg,.jpeg,.gif"/>
        <hr />
        <asp:Button ID="btnUpload" Text="Upload" runat="server" OnClick="UploadFile" />
        <br />
        <asp:Label ID="lblMessage" ForeColor="Green" runat="server" />

    </div>
        </form> 
            <!-- /#wrap -->
            <br />
            <footer class="Footer bg-dark dker">
                <p>Copyright &copy; 2017 bakersinn All rights reserved</p>
       
               </footer>
     
        <script>
        var fileInput = document.getElementById("FileUpload1");
        // listening on when someone selects a file
        fileInput .onchange = function(e) {
          e.preventDefault();

          // get the file someone selected
          var file = fileInput.files && fileInput.files[0];

          // create an image element with that selected file
          var img = new Image();
          img.src = window.URL.createObjectURL(file);

          // as soon as the image has been loaded
          img.onload = function() {
            var width = img.naturalWidth,
              height = img.naturalHeight;

            // unload it
            window.URL.revokeObjectURL(img.src);

            // check its dimensions
            if (width == 275 && height == 205) {
              // it fits 
            } else {
              // it doesn't fit, unset the value 
              // post an error
              fileInput.value = ""
              alert("Image size must be 275 x 205.")
            }
          };

        };
    </script>
</body>
</html>