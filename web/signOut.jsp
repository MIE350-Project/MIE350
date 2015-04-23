<%-- 
    Document   : signOut
    Created on : Nov 30, 2013, 10:46:36 PM
    Author     : EddyZulkifly
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="MIE350.Person"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign Out</title>
    </head>
            <style>
body
{
background-color:#92DCE0;
}
h1{
    color: #FFFFFF;
}
h2{
    color: #FFFFFF;
}
h3{
    color: #FFFFFF;
}
td{
    color: #FFFFFF;
}
i{
    color: #FFFFFF;
}
    </style>
    <body>
        <% 
                session.invalidate();
                out.println("You have signed out of miRoommate Finder!");
        %>
        <br>
        <h2><a href="index.jsp"> Return to Sign In Page </a></h2>
    </body>
</html>
