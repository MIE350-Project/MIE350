<%-- 
    Document   : confirmDeleteListing
    Created on : 3-Dec-2013, 2:53:31 AM
    Author     : Evelyn
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="MIE350.Person"%>
<%@page import="MIE350.dbConstants"%>
<%@page import="MIE350.Tenant"%>
<%@page import="MIE350.Listing"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Listing Confirmation</title>
    </head>
    <body>
        <% Connection con;
           String url = "jdbc:mysql://localhost:3306/";
           Class.forName("com.mysql.jdbc.Driver");
           con = DriverManager.getConnection(url, dbConstants.DB_Username, dbConstants.DB_Password);
           Tenant currentUser = (Tenant)session.getAttribute("currentTenant");
           Listing listing = (Listing)session.getAttribute("listing");
        %>
        
        <% if(currentUser.getPassWord().equals(request.getParameter("confirmPassword"))) {
            boolean deleted = listing.deleteListing(con);
            if(deleted) {
                out.println("Your listing has been successfully deleted");
        %>
        <br>
        <a href='TenantsMainPage.jsp'> Return to Tenants Page </a>
        <% } else {
                out.println("Listing deletion failed");
        %>
        <br>
        <a href='YourListing.jsp'> Return to Your Listing Page </a>
        <%}%>
        
        <%} else {
            out.println("Error: Incorrect password");
        %>
        <br>
        <a href='YourListing.jsp'> Return to Your Listing Page </a>
        <%}%>
    </body>
</html>