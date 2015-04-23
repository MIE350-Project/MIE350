<%-- 
    Document   : Profile
    Created on : Dec 2, 2013, 2:14:14 PM
    Author     : John
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="MIE350.Tenant" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile Page</title>
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
    <ul>
<li><a href="MainPage.jsp">Main</a></li>
<li><a href="about.jsp">About</a></li>
<li><a href="FAQ.jsp">FAQ</a></li>
<li><a href="signOut.jsp">Sign Out</a></li>
</ul>
    
    <% Tenant currentTenant = (Tenant)session.getAttribute("currentTenant"); %>
    <center><h1>Profile Information</h1></center>
    <table border="1" style="border-collapse:collapse" align="center">
       <!-- <tr>
            <td colspan="2" align="center">
            Profile Information
            </td>
        </tr>-->
    
        <tr>
            <td><b>Phone:</b></td>
            <td> <%=currentTenant.getPhone()%> </td>
        </tr>
        
                <tr>
            <td><b>Gender:</b></td>
            <td> <%=currentTenant.getSex()%> </td>
        </tr>
        
                <tr>
            <td><b>Smoker:</b></td>
            <td> <%=currentTenant.getSmoker()%> </td>
        </tr>
        
        
                <tr>
            <td><b>Preferred Language:<b/></td>
            <td> <%=currentTenant.getLanguage()%> </td>
        </tr>
        
        
                <tr>
            <td><b>Religion</b></td>
            <td> <%=currentTenant.getReligion()%> </td>
        </tr>
    </table>
        <br>
        <a href="editProfileInfo.jsp"> Edit your profile </a> <br>
        <a href="deleteProfile.jsp"> Delete your profile </a> 
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        
    </body>
    
    <a href="TenantsMainPage.jsp"> Back to the Tenants Main Page </a>
</html>
