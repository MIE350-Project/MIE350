<%-- 
    Document   : deleteListing
    Created on : 3-Dec-2013, 2:52:37 AM
    Author     : Evelyn
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Your Listing</title>
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
<ul>
<li><a href="MainPage.jsp">Main</a></li>
<li><a href="about.jsp">About</a></li>
<li><a href="FAQ.jsp">FAQ</a></li>
</ul>
        <form name="confirmDeleteListing" action="confirmDeleteListing.jsp" method="POST">
            Enter your password: <input type="password" name="confirmPassword"> <br>
            <input type="submit" name="submit" value="Delete Your Listing"> <br>
        </form>
        <a href="TenantsMainPage.jsp"> Return to Tenants Page </a>
    </body>
</html>
