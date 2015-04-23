<%-- 
    Document   : YourFavorites
    Created on : Dec 3, 2013, 4:50:53 PM
    Author     : John
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="MIE350.dbConstants"%>
<%@ page import="MIE350.Person"%>
<%@ page import="MIE350.Searcher"%>
<%@ page import="MIE350.Listing"%>
<%@ page import="MIE350.Favourite"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Your Favorites Page</title>
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
         <%  Statement stmt;
        Connection con;
        String url = "jdbc:mysql://localhost:3306/";
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection(url, dbConstants.DB_Username, dbConstants.DB_Password); 
        stmt = con.createStatement();
        stmt.executeUpdate("USE MIE350");
        
        String Username = ((Person)session.getAttribute("currentUser")).getUserName();
        String Password = ((Person)session.getAttribute("currentUser")).getPassWord();
        String FirstName = ((Person)session.getAttribute("currentUser")).getFirstName();
        String LastName = ((Person)session.getAttribute("currentUser")).getLastName();
        
        Searcher currentSearcher = new Searcher(Username, Password, FirstName, LastName, con);
        session.setAttribute("currentSearcher", currentSearcher);
        
        if (request.getParameter("addFavourite") != null){
            int favouriteListingID = Integer.parseInt(request.getParameter("favouriteListingID"));
            int rating = Integer.parseInt(request.getParameter("rating"));
            currentSearcher.addFavourite(con, favouriteListingID, rating);
        }
        
        if (request.getParameter("editFavourite") != null){
            int edittedListingID = Integer.parseInt(request.getParameter("edittedListingID"));
            int rating = Integer.parseInt(request.getParameter("newRating"));
            currentSearcher.editFavourite(con, edittedListingID, rating);
        }
        
        if (request.getParameter("deleteFavourite") != null){
            int deletedListingID = Integer.parseInt(request.getParameter("listingID"));
            currentSearcher.deleteFavourite(con, deletedListingID);
        }
        
        Iterator favourites = currentSearcher.favouritesIterator();
        %>  
    <ul>
<li><a href="MainPage.jsp">Main</a></li>
<li><a href="about.jsp">About</a></li>
<li><a href="FAQ.jsp">FAQ</a></li>
<li><a href="signOut.jsp">Sign Out</a></li>
</ul>
    <center><h2>Your Favorites</h2></center>
        <table border="1" style="border-collapse:collapse" align="center">
            <tr>
                <td><b>Address</b></td>
                <td><b>Type</b></td>
                <td><b>Contract Term (months)</b></td>
                <td><b>Rent Amount (monthly)</b></td>
                <td><b>Preferred Gender</b></td>
                <td><b>Smoking Allowed</b></td>
                <td><b>Pets Allowed</b></td>
                <td><b>Rating</b></td>
                <td><b>Edit Favorite</b></td>
                <td><b>Remove Favorite</b></td>
            </tr>
            
            <% while (favourites.hasNext()) {
                Favourite currentFavourite = (Favourite)favourites.next();
                Listing currentFavouriteListing = currentFavourite.getListing();
            %>
            
                <tr>
                    <td><%=currentFavouriteListing.getAddress()%></td>
                    <td><%=currentFavouriteListing.getHouseType()%></td>
                    <td><%=currentFavouriteListing.getContractTerm()%></td>
                    <td><%=currentFavouriteListing.getPrice()%></td>
                    <td><%=currentFavouriteListing.getPreferredGender()%></td>
                    <td><%=currentFavouriteListing.isSmokingAllowed()%></td>
                    <td><%=currentFavouriteListing.isPetsAllowed()%></td>
                    <td><%=currentFavourite.getRating()%></td>
                    <td>
                        <form action="editFavourite.jsp">
                            <input type="hidden" name="listingID" value="<%=currentFavouriteListing.getListingID()%>">
                            <input type="submit" name="editFavourite" value="edit">
                        </form>
                    </td> 
                    <td>
                        <form action="YourFavorites.jsp">
                            <input type="hidden" name="listingID" value="<%=currentFavouriteListing.getListingID()%>">
                            <input type="submit" name="deleteFavourite" value="remove">
                        </form>
                    </td> 
                </tr>
            
            <% } %>
            
        </table>
    <br>
    <br>
    <br>
    <br>
    <br>
    <a href="SearchersMainPage.jsp">Return to Searchers Main Page</a>
    </body>
</html>
