<%-- 
    Document   : SearcherMainPage
    Created on : Dec 2, 2013, 12:52:37 PM
    Author     : John
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Searcher Page</title>
    </head>
    
    <style>
body
{
background-color:#F9F1B5;
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
<li><a href="signOut.jsp">Sign Out</a></li>
        </ul> 
        
        <center>
        <h1>Searcher Options</h1>
        <a href="Search.jsp">Search</a>
        <a href="YourFavorites.jsp">Your Favorites</a>
        </center>
    </body>
</html>
