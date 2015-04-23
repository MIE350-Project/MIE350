<%-- 
    Document   : confirmEditListing
    Created on : 3-Dec-2013, 1:44:37 AM
    Author     : Evelyn
--%>

<%@page import="java.sql.*"%>
<%@page import="MIE350.Person"%>
<%@page import="MIE350.Listing"%>
<%@page import="MIE350.dbConstants"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listing Edit Confirmation</title>
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
        <% Connection con;
           String url = "jdbc:mysql://localhost:3306/";
           Class.forName("com.mysql.jdbc.Driver");
           con = DriverManager.getConnection(url, dbConstants.DB_Username, dbConstants.DB_Password);
           Person currentUser = (Person)session.getAttribute("currentUser");
           Listing listing = (Listing)session.getAttribute("listing");
        %>
        
        <%-- Confirmation page for changeHouseType --%>
        <% if(request.getParameter("changeHouseType") != null) {
            String newHouseType = request.getParameter("newHouseType");
            out.println(listing.editHouseType(con, newHouseType));
            session.setAttribute("listing", listing);
        }%>
        
        <%-- Confirmation page for changeAddress --%>
        <% if(request.getParameter("changeAddress") != null) {
            String newAddress = request.getParameter("newAddress");
            out.println(listing.editAddress(con, newAddress));
            session.setAttribute("listing", listing);
        }%>
        
        
         <%-- Confirmation page for changeContractTerm --%>
        <% if(request.getParameter("changeContractTerm") != null) {
            int newContractTerm = Integer.parseInt(request.getParameter("newContractTerm"));
            out.println(listing.editContractTerm(con, newContractTerm));
            session.setAttribute("listing", listing);
        }%>
        
        <%-- Confirmation page for changePrice --%>
        <% if(request.getParameter("changePrice") != null) {
            int newPrice = Integer.parseInt(request.getParameter("newPrice"));
            out.println(listing.editPrice(con, newPrice));
            session.setAttribute("listing", listing);
        }%>

        <%-- Confirmation page for changePreferredGender --%>
        <% if(request.getParameter("changePreferredGender") != null) {
            String newPreferredGender = request.getParameter("gender");
            out.println(listing.editPreferredGender(con, newPreferredGender));
            session.setAttribute("listing", listing);
        }%>
        
        <%-- Confirmation page for changeSmokingAllowed --%>
        <% if(request.getParameter("changeSmokingAllowed") != null) {
            String newSmokingAllowed = request.getParameter("smokingAllowed");
            out.println(listing.editSmokingAllowed(con, newSmokingAllowed));
            session.setAttribute("listing", listing);
        }%>

        <%-- Confirmation page for changePetsAllowed --%>
        <% if(request.getParameter("changePetsAllowed") != null) {
            String newPetsAllowed = request.getParameter("petsAllowed");
            out.println(listing.editPetsAllowed(con, newPetsAllowed));
            session.setAttribute("listing", listing);
        }%>
        
        <br>
        <a href ="YourListing.jsp">Return to Your Listing page</a>
    </body>
</html>

