<%-- 
    Document   : confirmDeleteAccount
    Created on : Nov 29, 2013, 8:33:28 PM
    Author     : Danny
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="MIE350.Person"%>
<%@page import="MIE350.dbConstants"%>
<%@page import="MIE350.Tenant"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Profile Confirmation</title>
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
<li><a href="signOut.jsp">Sign Out</a></li>
</ul>
        <% Connection con;
           String url = "jdbc:mysql://localhost:3306/";
           Class.forName("com.mysql.jdbc.Driver");
           con = DriverManager.getConnection(url, dbConstants.DB_Username, dbConstants.DB_Password);
           Tenant currentUser = (Tenant)session.getAttribute("currentTenant");
        %>
        
        <% if(currentUser.getPassWord().equals(request.getParameter("confirmPassword"))) {
            boolean deleted = currentUser.deleteTenant(con);
            if(deleted) {
                out.println("Tenant profile successfully deleted");
        %>
        <br>
        <a href='MainPage.jsp'> Return to Main Page </a>
        <% } else {
                out.println("Tenant deletion failed");
        %>
        <br>
        <a href='Profile.jsp'> Return to Profile Page </a>
        <%}%>
        
        <%} else {
            out.println("Error: Incorrect password");
        %>
        <br>
        <a href='Profile.jsp'> Return to Profile Page </a>
        <%}%>
    </body>
</html>
