<%@ Page Language="C#" AutoEventWireup="true" CodeFile="contentManagement.aspx.cs" Inherits="contentManagement" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
	<title>BakersInn | Feedback Approve/Delete</title>
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
    <form id="form1" runat="server">
    <div class="bg-dark dk" id="wrap">
        <div id="top">
            <!-- .navbar -->
            <!--<nav class="navbar navbar-inverse navbar-static-top"> -->
                <div class="container-fluid">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <header class="navbar-header">
                        <a href="index.aspx" class="navbar-brand"><img src="images/logo_admin_image.jpg" alt=""></a>
                        <a href="index.aspx" class="navbar-brand"><img src="images/logo_admin_name.jpg" alt=""></a>
                        <font color="black" size="7">.</font>
                    </header>                   
                    <!--<div class="topnav">
                    </div>-->
                     <div class="topnav">
                         <div class="btn-group">
                                    <a href="upload_image.aspx" data-placement="bottom" data-original-title="E-mail" data-toggle="tooltip"
                                       class="btn btn-default btn-sm">
                                        <i class="fa fa-upload"></i>
                                    </a>
       
                                </div>
                        <div class="btn-group">
                            <a runat="server" onserverclick="logout" data-toggle="tooltip" data-original-title="Logout" data-placement="bottom"
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

    <div id="content">
        
            <table border="1" width="95%">
                <tr>
                    <th>Select</th>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Subject</th>
                    <th>Message</th>
                    <th>Status</th>
                    <th>Date</th>
                </tr>  
   
                <%for (int i = 0; i < row_count; i++) { %>
                    <tr>
                        <td><input type="checkbox" name="approve" value="<% =list[0][i] %>"/> </td>
                        <td><%=list[0][i]%></td>
                        <td><%=list[1][i]%></td>
                        <td><%=list[2][i]%></td>
                        <td><%=list[3][i]%></td>
                        <td><%=list[4][i]%></td>
                        <td><%=list[5][i]%></td>
                        <td><%=list[6][i]%></td>
                    </tr>
                <%} %>
            </table>
            <div align="center" style="width:90%; float:left;">
                <input type="submit" id="Submit1" name="hdn_approve_btn" value="Approve" runat="server" onserverclick="feedback_approve_button_Click"/>&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="submit" id="Submit2" name="hdn_delete_btn" value="Delete" runat="server" onserverclick="feedback_delete_button_Click"/>
                <div align="right" style="width:10%; float:right;"> 
                    <a runat="server" onserverclick="pagination_first_button_Click"> << </a> &nbsp;&nbsp;&nbsp;
                    <a runat="server" onserverclick="pagination_previous_button_Click"> < </a> &nbsp;&nbsp;&nbsp;
                    <a runat="server" onserverclick="pagination_next_button_Click"> > </a> &nbsp;&nbsp;&nbsp;
                    <a runat="server" onserverclick="pagination_last_button_Click"> >> </a>
                </div>                
            </div>            
        </form>

    </div>
            <!-- /#wrap -->
            <br />
            <footer class="Footer bg-dark dker">
                <p>Copyright &copy; 2017 bakersinn All rights reserved</p>
            </footer>
            <!-- /#footer -->
    <!--
    <script type="text/javascript">
        function approve(val)
        {
            document.getElementById("hdn_textbox").value = val.value;
            document.getElementById('hdn_approve_btn').click();
        }

        function delete1(val)
        {
            document.getElementById("hdn_textbox").value = val.value;
            document.getElementById('hdn_delete_btn').click();
        }
    </script> -->
</body>
</html>
