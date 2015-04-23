<%-- 
    Document   : TenantsMainPage
    Created on : Dec 2, 2013, 1:08:35 PM
    Author     : John
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="MIE350.Tenant"%>
<%@ page import="MIE350.Person"%>
<%@ page import="MIE350.dbConstants"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tenants Page</title>
    </head>
    <style>
body
{
background-color:#9C6A8D;
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

<%  Statement stmt;
    Connection con;
    String url = "jdbc:mysql://localhost:3306/";
    Class.forName("com.mysql.jdbc.Driver");
    con = DriverManager.getConnection(url, dbConstants.DB_Username, dbConstants.DB_Password); 
    stmt = con.createStatement();
    
    Person currentUser = (Person)session.getAttribute("currentUser");
    stmt.executeUpdate("USE MIE350");
    ResultSet rs = stmt.executeQuery("SELECT * FROM Tenant WHERE Username='" +currentUser.getUserName()+ "'");
    if (rs.next()) {
%>
    
<ul>
<li><a href="MainPage.jsp">Main</a></li>
<li><a href="about.jsp">About</a></li>
<li><a href="FAQ.jsp">FAQ</a></li>
<li><a href="signOut.jsp">Sign Out</a></li>
</ul>
    
        <center>
        <h1>Tenants Options</h1>
        <% String username = currentUser.getUserName();
           String password = currentUser.getPassWord();
           String firstname = currentUser.getFirstName();
           String lastname = currentUser.getLastName();
           String phone = rs.getString("phone");
           String sex = rs.getString("sex");
           String smoker = rs.getString("smoker");
           String language = rs.getString("language");
           String religion = rs.getString("religion");
           Tenant currentTenant = new Tenant(username, password, firstname, lastname, phone, sex, smoker, language, religion);
           session.setAttribute("currentTenant", currentTenant);
         %>
        <a href="Profile.jsp">Profile</a>
        
        <% rs = stmt.executeQuery("SELECT * FROM Listing WHERE Username='" +currentTenant.getUserName()+ "'");
           if (rs.next()) {%>
        <a href="YourListing.jsp">Your Listing</a>
        
        <% } else {%>
        <a href="createListing.jsp">Add Listing</a>
        <% } %>
        
        </center>

<% } else {
        response.sendRedirect("createProfileInfo.jsp");
    }
%>

    </body>
</html>
