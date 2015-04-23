<%-- 
    Document   : addFavourite
    Created on : 4-Dec-2013, 6:52:22 PM
    Author     : Danny
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Favourite</title>
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
        <h1>Enter rating</h1>
        <br>
        <form action="YourFavorites.jsp">
            <input type="text" name="rating">
            <input type="hidden" name="favouriteListingID" value="<%=request.getParameter("currentListingID")%>">
            <input type="submit" name="addFavourite" value="Add to Favourites">
        </form>
    </body>
</html>
