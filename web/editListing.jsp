<%-- 
    Document   : editListing
    Created on : 3-Dec-2013, 1:34:22 AM
    Author     : Evelyn
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Your Listing</title>
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
        <form action="confirmEditListing.jsp"> 
            <% if (request.getParameter("changeHouseType") != null) {%>
                New House Type: <br> 
                <input type="radio" name="newHouseType" value="House">House <br>
                <input type="radio" name="newHouseType" value="Condo">Condo <br>
                <input type="radio" name="newHouseType" value="Apartment">Apartment
                <br>
<input type="reset" value="Reset">
                <input type="submit" value="Submit" name="changeHouseType"> <br>
            
            <% } else if (request.getParameter("changeAddress") != null) { %>
                New Listing Address: <input type="text" name="newAddress">
                <br>
<input type="reset" value="Reset">
                <input type="submit" value="Submit" name="changeAddress"> <br>
            
                <% } else if (request.getParameter("changeContractTerm") != null) {%>
                New Contract Term (months): <input type="text" name="newContractTerm"/>
                <br>
<input type="reset" value="Reset">
                <input type="submit" value="Submit" name="changeContractTerm"> <br>
                
                <% } else if (request.getParameter("changePrice") != null) {%>
                New Rent Amount: <input type="text" name="newPrice">
                <!--<input type="radio" name="rent" value="500-750">$500 - $750 <br>
            <input type="radio" name="rent" value="750-1000">$751 - $1000 <br>
            <input type="radio" name="rent" value=">1000">more than $1000-->
                <br>
<input type="reset" value="Reset">
                <input type="submit" value="Submit" name="changePrice"> <br>
                
                 <% } else if (request.getParameter("changePreferredGender") != null) {%>
                 Edit Gender Preferences: <br> 
                <input type="radio" name="gender" value="Male">Male <br>
                <input type="radio" name="gender" value="Female">Female <br>
                <input type="radio" name="gender" value="Both">Both
                <br>
<input type="reset" value="Reset">
                <input type="submit" value="Submit" name="changePreferredGender"> <br>
                
                <% } else if (request.getParameter("changeSmokingAllowed") != null) {%>
                Change whether or not smoking is allowed: <br> 
                <input type="radio" name="smokingAllowed" value="Yes">Yes <br>
                <input type="radio" name="smokingAllowed" value="No">No
                <br>
<input type="reset" value="Reset">
                <input type="submit" value="Submit" name="changeSmokingAllowed"> <br>
                
                <% } else if (request.getParameter("changePetsAllowed") != null) {%>
                Change whether or not pets are allowed: <br> 
                <input type="radio" name="petsAllowed" value="Yes">Yes <br>
                <input type="radio" name="petsAllowed" value="No">No
                <br>
<input type="reset" value="Reset">
                <input type="submit" value="Submit" name="changePetsAllowed"> <br>
                <% } %>
                
        </form>
    </body>
</html>


