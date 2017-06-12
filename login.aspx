<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <label><b>Username</b></label>
        <input type="text" id="uname" runat="server" placeholder="Enter Username" name="uname1" required>

        <label><b>Password</b></label>
        <input type="password" id="psw" runat="server" placeholder="Enter Password" name="psw1" required>

        <input type="submit" id="login_button" value="Login" class="submit" runat="server" onserverclick="login_button_Click" />
        <input type="checkbox" checked="checked"> Remember me
    </div>
    </form>
</body>
</html>
