<%-- 
    Document   : editFavourite
    Created on : 4-Dec-2013, 8:48:21 PM
    Author     : Danny
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Favourite</title>
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
        <h1>Enter new rating</h1>
        <br>
        <form action="YourFavorites.jsp">
            <input type="text" name="newRating">
            <input type="hidden" name="edittedListingID" value="<%=request.getParameter("listingID")%>">
            <input type="submit" name="editFavourite" value="Edit Favourite">
        </form>
    </body>
</html>
