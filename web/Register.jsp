<%-- 
    Document   : Register
    Created on : 3-Nov-2013, 1:06:10 PM
    Author     : Evelyn
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>miRoommate Finder</title>
</head>
    <style>
body
{
background-color:#92DCE0;
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
<li><a href="index.jsp">Sign In</a></li>
<li><a href="about.jsp">About</a></li>
<li><a href="FAQ.jsp">FAQ</a></li>
</ul>
    <center>
        <h1>Create a New Account</h1>
        Please enter the following information in order to create an account.
    </center>
    <br>
    <br>
    <form name="registerForm" action="new_register_save.jsp" method="POST">
        <table border="1" style="border-collapse:collapse" align="center">
            <tr>
                <td>Username:</td>
                <td><input type="text" name="username"/></td>
            </tr>
            <tr>
                <td>Password:</td>
                <td><input type="password" name="password"/></td>
            </tr>
            <tr>
                <td>First Name:</td>
                <td><input type="text" name="firstname"/></td>
            </tr>
            <tr>
                <td>Last Name:</td>
                <td><input type="text" name="lastname"/></td>
            </tr>
            
        </table>
        <fieldset>
<legend><b>Terms and Conditions</b></legend>
<p>
The roommate profiles listed in The miRoommate Finder’s registry are made available to the general public.
</p>
<p>
Everyone who wish to register with Housing Services' Roommate Finder service (“The miRoommate Finder”) must agree to the following terms and conditions:
</p>
<p>
You must be a currently enrolled student of the University of Toronto to register and agree that your use of the site will be for your personal use only.
</p>
<p>
You agree to the terms of our privacy policy as set out above and acknowledge that you are voluntarily providing the information requested and by providing the information you are authorizing The miRoommate Finder to post the information as indicated on the site.
</p>
<p>
The miRoommate Finder does not imply any recommendation or representation by the RoomSense as to the information provided in The miRoommate Finder. RoomSense does not investigate, endorse or guarantee the accuracy of the information provided by any profile and it is the user’s sole responsibility to verify any of the information listed.
</p>
<p>
By registering for The miRoommate Finder you are accepting all the risks associated with its use, including but not limited to injury to person or loss or damage to property and in consideration of the provision of The miRoommate Finder you hereby hold harmless, release and forever discharge RoomSense, its employees, agents, contractors and representatives from any liability related to or arising out of any registration or use of The Roommate Finder.
</p>
<p>
RoomSense reserves the right to modify or discontinue The miRoommate Finder at any time and does not accept any liability to you or any third party for the modification, suspension or discontinuance of The miRoommate Finder.
</p>
<p>
The miRoommate Finder reserves the right to refuse to accept or remove any content on the site for any reason whatsoever in its sole discretion and may terminate your account at any time for any reason.
</p>
<p>
The miRoommate Finder may provide links to other world wide web sites or resources. Because The miRoommate Finder has no control over such sites and resources, you agree that it is not responsible for the content or functionality of such sites. Furthermore, the existence of a link on The miRoommate Finder site does not imply an endorsement of that site, the owners or content thereon. You agree to be responsible or liable, directly or indirectly, for any damage or loss caused or alleged to be caused by or in connection with use of or reliance on any content, goods or services available on or through any such site or resource.
</p>
<p>
You agree that any information the Roommate provides will only be used by you for the purpose of roommate matching via this service. You agree that you will not share any such information with anyone outside of The Roommate Finder under any circumstances.
</p>
<p>
The miRoommate Finder is committed to upholding the Ontario Human Rights Code and will not knowingly post a roommate profile which is discriminatory.
</p>
<input type="checkbox" name="AcceptTerms" value="Accept"><b>I have read and agreed to the miRoommate Finder
Terms & Conditions of Use and Privacy Policy</b><br>
</fieldset>
        <input type="reset" value="reset"><input type="submit" value=" submit">
    </form>
    <br>
    <a href="index.jsp"> Return to home page </a>
</body>
</html>


