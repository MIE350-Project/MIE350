<%-- 
    Document   : manageAccount
    Created on : Nov 27, 2013, 12:41:45 AM
    Author     : Danny
--%>

<%@page import="MIE350.Person"%>
<%@page import="MIE350.Tenant"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Account Management</title>
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
        <h1>Account Management</h1>
        <h2>
            <%  
            Person currentUser = (Person)session.getAttribute("currentUser");
            Tenant currentTenant= (Tenant)session.getAttribute("currentTenant");
            out.println("Logged in as " + currentUser.getFirstName() + " " + currentUser.getLastName());
            %> </h2>
        <br>
        <form name="manageAccount" action="editAccountInfo.jsp" method="POST">
            <input type="submit" value="Change Password" name="changePassword"> <br>
            <input type="submit" value="Change First Name" name="changeFirstName"> <br>
            <input type="submit" value="Change Last Name" name="changeLastName"> <br>
        </form>
        <br>
<!--        <form name="createprofileInfo" action="createProfileInfo.jsp" method="POST">
            <input type="submit" value="CreateProfile" name="CreateProfile"> <br>
        </form>
        <br>
        <form name="editprofileInfo" action="editProfileInfo.jsp" method="POST">
            <input type="submit" value="EditProfile" name="EditProfile"> <br>
        </form>
        <br>
        <br>
        <form name="deleteProfile" action="deleteProfile.jsp" method="POST">
            <input type="submit" value="Delete Profile" name="deleteProfile"> <br>
        </form>-->
        <form name="deleteAccount" action="deleteAccount.jsp" method="POST">
            <input type="submit" value="Delete Account" name="deleteAccount"> <br>
        </form>
    </body>
</html>
