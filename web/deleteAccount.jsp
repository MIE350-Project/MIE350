<%-- 
    Document   : deleteAccount
    Created on : Nov 29, 2013, 8:17:34 PM
    Author     : Danny
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Profile</title>
    </head>
      <style>
body
{
background-color:#52B4AF;
}
ul
{
list-style-type:none;
margin:0;
padding:0;
overflow:hidden;
}
li
{
float:left;
}
a:link,a:visited
{
display:block;
width:300px;
font-weight:bold;
color:#FFFFFF;
background-color:#98bf21;
text-align:center;
padding:4px;
text-decoration:none;
text-transform:uppercase;
}
a:hover,a:active
{
background-color:#7A991A;
}
    </style>
    <body>
        <br>
        <b>Are you sure you want to delete your miRoommate Finder account? All your information will be lost.<br>
        <br>
        To confirm, type in your password below.</b>
        <br>
        <br>
        <br>
        <br>
        <form name="confirmDeleteAccount" action="confirmDeleteAccount.jsp" method="POST">
            Enter your password: <input type="password" name="confirmPassword"> <br>
            <br>
            <input type="submit" name="submit" value="Delete Account"> <br>
        </form>
        <br>
        <br>
        <br>
        <br>
        <br>
        <a href="manageAccount.jsp"> Return to Account Management Page </a>
    </body>
</html>
