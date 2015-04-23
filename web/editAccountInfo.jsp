<%-- 
    Document   : editAccountInfo
    Created on : 27-Nov-2013, 2:54:39 PM
    Author     : Danny
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Account Info</title>
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
        <form action="confirmEditAccountInfo.jsp"> 
            <% if (request.getParameter("changePassword") != null) {%>
            <br>
                Current Password: <input type="password" name="currentPassword"> <br>
                New Password: <input type="password" name="newPassword"> <br>
                Confirm New Password: <input type="password" name="confirmPassword"> <br>
                <br>
<input type="reset" value="Reset">
                <input type="submit" value="Submit" name="changePassword"> <br>
                <br>
                <br>
                <br>
                <br>
                <br>
                <a href="manageAccount.jsp"> Return to the Account Management Page</a>
                
            
            <% } else if (request.getParameter("changeFirstName") != null) { %>
            <br>    
                New First Name: <input type="text" name="newFirstName">
                <br>
                <br>
<input type="reset" value="Reset">
                <input type="submit" value="Submit" name="changeFirstName"> <br>
                <br>
                <br>
                <br>
                <br>
                <br>
                <a href="manageAccount.jsp"> Return to the Account Management Page</a>
            
                
            <% } else if (request.getParameter("changeLastName") != null) {%>
                <br>
                New Last Name: <input type="text" name="newLastName">
                <br>
                <br>
<input type="reset" value="Reset">
                <input type="submit" value="Submit" name="changeLastName"> <br>
                <br>
                <br>
                <br>
                <br>
                <br>
                <a href="manageAccount.jsp"> Return to the Account Management Page</a>
                
                
            <% } else if (request.getParameter("changeProfileInfo") != null) {%>
            <br>    
                Phone Number (must be a valid GTA number): <input type="text" id="phone" size="20">

<br>
<br>

<b>Gender:</b>
<input type="radio" name="sex" value="Male">Male
<input type="radio" name="sex" value="Female">Female<br>

<br>

<b>I'm a Smoker:</b>
<input type="radio" name="smoker" value="Yes">Yes
<input type="radio" name="smoker" value="No">No<br>

<br>

<b>Languages:</b><br>
<input type="checkbox" name="language" value="English">English<br>
<input type="checkbox" name="language" value="French">French<br>
<input type="checkbox" name="language" value="Chinese">Chinese<br>
<input type="checkbox" name="language" value="Korean">Korean<br>
<input type="checkbox" name="language" value="Japanese">Japanese<br>

<br>

<b>Religion:</b><br>
<input type="radio" name="religion" value="Christianity">Christianity<br>
<input type="radio" name="religion" value="Islam">Islam<br>
<input type="radio" name="religion" value="Hinduism">Hinduism<br>
<input type="radio" name="religion" value="Judaism">Judaism<br>
<input type="radio" name="religion" value="Buddhism">Buddhism<br>
<input type="radio" name="religion" value="None" checked>None<br>
<br>
<input type="reset" value="Reset">
<input type="submit" value="Submit" name="changeProfileInfo"> <br>
<br>
                <br>
                <br>
                <br>
                <br>
                <a href="manageAccount.jsp"> Return to the Account Management Page</a>
                
            <% }%>
        </form>
    </body>
</html>
