<%@ Page Language="C#" AutoEventWireup="true" CodeFile="contentManagement.aspx.cs" Inherits="contentManagement" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
	<title>BakersInn | Feedback Approve/Delete</title>
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
    <div class="bg-dark dk" id="wrap">
        <div id="top">
            <!-- .navbar -->
            <!--<nav class="navbar navbar-inverse navbar-static-top"> -->
                <div class="container-fluid">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <header class="navbar-header">
                        <a href="index.aspx" class="navbar-brand"><img src="images/logo2.jpg" alt=""></a>
                    </header>
                    <!--<div class="topnav">
                    </div>-->
                    <div class="collapse navbar-collapse navbar-ex1-collapse">
                        <!-- .nav -->
                        <ul class="nav navbar-nav">
                            <li><a href="">Admin</a></li>
                        </ul>
                        <!-- /.nav -->
                    </div>
                </div>
                    <!-- /.container-fluid -->
            <!-- </nav>
                    <!-- /.navbar -->
        </div>
        <!-- /#top -->
        <!-- /#content -->
    </div>

    <form id="form1" runat="server">
        <table border="1" width="100%">
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Subject</th>
                <th>Message</th>
                <th>Status</th>
                <th>Date</th>
                <th>Approve</th>
                <th>Delete</th>
            </tr>  
   
            <%for (int i = 0; i < row_count; i++) { %>
                <tr>
                    <td><%=list[0][i]%></td>
                    <td><%=list[1][i]%></td>
                    <td><%=list[2][i]%></td>
                    <td><%=list[3][i]%></td>
                    <td><%=list[4][i]%></td>
                    <td><%=list[5][i]%></td>
                    <td><%=list[6][i]%></td>        
                    <td><input type="button" id="Approve<% =list[0][i] %>" value="Approve<% =list[0][i] %>" onclick="approve(this)" /></td>
                    <td><input type="button" id="Delete<% =list[0][i] %>" value="Delete<% =list[0][i] %>" onclick="delete1(this)" /></td>        
                </tr>
            <%} %>
        </table>
        
        <input id="hdn_textbox" name="hdn_textbox" runat="server" type="text" hidden/> 
        <input type="submit" id="hdn_approve_btn" name="hdn_approve_btn" value="Approve" runat="server" onserverclick="feedback_approve_button_Click" hidden/>
        <input type="submit" id="hdn_delete_btn" name="hdn_delete_btn" value="Delete" runat="server" onserverclick="feedback_delete_button_Click" hidden/>
    </form>

            <!-- /#wrap -->
            <footer class="Footer bg-dark dker">
                <p>Copyright &copy; 2017 bakersinn All rights reserved</p>
            </footer>
            <!-- /#footer -->

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
    </script>
</body>
</html>
