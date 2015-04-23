<%-- 
    Document   : MainPage
    Created on : Nov 27, 2013, 12:23:42 AM
    Author     : Danny
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="MIE350.Person"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Main Page</title>
    </head>
        <style>
body
{
background-color:#F5D0A9;
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
        <center> <h1><%
           try{
                Person currentUser = (Person)session.getAttribute("currentUser");
                out.println("Welcome " + currentUser.getFirstName() + " " + currentUser.getLastName() + " to miRoommate Finder's Account Main Page");
           }
           catch(NullPointerException e){
               out.println("You're not logged in! :P");
               response.sendRedirect("index.jsp");
               
           }
                
           
        %>
        </h1></center> 
        <br>
        <ul>
<li><a href="manageAccount.jsp">Manage Your Account</a></li>
<li><a href="TenantsMainPage.jsp">Tenants</a></li>
<li><a href="SearchersMainPage.jsp">Searchers</a></li>
<li><a href="signOut.jsp">Sign Out</a></li>
        </ul>
   
    </body>
</html>
