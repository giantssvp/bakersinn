<%@ Page Language="C#" AutoEventWireup="true" CodeFile="contentManagement.aspx.cs" Inherits="contentManagement"  %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>    
</head>    
<body>
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
        
        <input id="txtDesc2" name="txtDesc2" runat="server" type="text" hidden/> 
        <input type="submit" id="approve_btn" name="approve_btn" value="Approve" runat="server" onserverclick="feedback_approve_button_Click" hidden/>
        <input type="submit" id="delete_btn" name="delete_btn" value="Delete" runat="server" onserverclick="feedback_delete_button_Click" hidden/>
    </form>

    <script type="text/javascript">
        function approve(val)
        {
            document.getElementById("txtDesc2").value = val.value;
            document.getElementById('approve_btn').click();
        }

        function delete1(val)
        {
            document.getElementById("txtDesc2").value = val.value;
            document.getElementById('delete_btn').click();
        }
    </script>
</body>
</html>
