<%-- 
    Document   : ProfileInfo
    Created on : Nov 28, 2013, 10:03:43 PM
    Author     : John
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Page</title>
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

<script>
function validate()
{
var phone=document.getElementById("phone").value;
submitOK="true";

if (isNaN(phone)||phone<4160000000||age>9059999999)
 {
 alert("The phone number must be a valid number in the GTA");
 submitOK="false";
 }
if (submitOK=="false")
 {
 return false;
 }
}
</script>
</head>
    
<body>
        <ul>
<li><a href="MainPage.jsp">Main</a></li>
<li><a href="about.jsp">About</a></li>
<li><a href="FAQ.jsp">FAQ</a></li>
</ul>
        <h2>Account Information:</h2>
        
<form name="input" action="confirmEditProfileInfo.jsp" onsubmit="return validate()">
    
Phone Number (must be a valid GTA number): <input type="text" id="phone" name="phone" size="20">

<br>
<br>

<b>Sex:</b>
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
<input type="submit" value="Submit">
</form>
    </body>
    <br>
    <br>
    <br>
    <a href="Profile.jsp">Return to your Profile Information</a>
</html>

