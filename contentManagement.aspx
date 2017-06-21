<%@ Page Language="C#" AutoEventWireup="true" CodeFile="contentManagement.aspx.cs" Inherits="contentManagement" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
<table border="1" width="100%">
<tr>
<td>
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
   
   </table>
</td>
</tr>
<%for (int i = 0; i < row_count; i++) { %>
    <tr><td><%=list[0][i]%></td>
        <td><%=list[1][i]%></td>
        <td><%=list[2][i]%></td>
        <td><%=list[3][i]%></td>
        <td><%=list[4][i]%></td>
        <td><%=list[5][i]%></td>
        <td><%=list[6][i]%></td>
        
        <td> 
            <input type="text" id='myTxt' value="test" runat="server"/> 
        </td>
        <td> 
            <input type="submit" id="approve_button" value="Approve" class="submit" runat="server" onserverclick="feedback_approve_button_Click" /> 
        </td>
        <td><input type="submit" id="delete_button" value="Delete" class="submit" runat="server" onserverclick="feedback_delete_button_Click" /></td>
        
    </tr>
    <%} %>
</table>
</body>
</html>
