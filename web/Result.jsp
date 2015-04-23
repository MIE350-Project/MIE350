<%-- 
    Document   : Result
    Created on : Nov 29, 2013, 1:58:18 AM
    Author     : John
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="MIE350.dbConstants"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search Results</title>
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
    <ul>
<li><a href="MainPage.jsp">Main</a></li>
<li><a href="about.jsp">About</a></li>
<li><a href="FAQ.jsp">FAQ</a></li>
<li><a href="signOut.jsp">Sign Out</a></li>
</ul>
        <%  Statement stmt;
            Connection con;
            String url = "jdbc:mysql://localhost:3306/";
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(url, dbConstants.DB_Username, dbConstants.DB_Password); 
            stmt = con.createStatement();
            stmt.executeUpdate("USE MIE350");
           
            //Constructing the sql query to be executes
            String sql = "SELECT * FROM Listing WHERE ";
            
            //price search
            if (!((String)request.getParameter("price")).equals("")) {
                int price = Integer.parseInt(request.getParameter("price"));
                sql += "Price <= " + price +" ";
            }
            else {
                sql += "Price <= " + Integer.MAX_VALUE +" ";
            }
            
            //contract term search
            if (!((String)request.getParameter("contractTerm")).equals("")) {
                int contractTerm = Integer.parseInt(request.getParameter("contractTerm"));
                sql += "AND ContractTerm <= " + contractTerm +" ";
            } 
            else {
                sql += "AND ContractTerm <= " + Integer.MAX_VALUE + " ";
            } 
            
            //house type search
            if (request.getParameter("houseType") != null) {
                sql += "AND HouseType='" + request.getParameter("houseType") + "' ";
            }
            
            //gender search
            if (request.getParameter("gender") != null) {
                sql += "AND (PreferredGender='" + request.getParameter("gender") + "' OR PreferredGender='Both') ";
            }
            
            //smoking search
            if (request.getParameter("smoking") != null) {
                sql += "AND SmokingAllowed ='" +request.getParameter("smoking")+ "' ";
            }
            
            //pets search
            if (request.getParameter("pets") != null) {
                sql += "AND PetsAllowed ='" +request.getParameter("pets") + "'";
            }
            
            ResultSet rs = stmt.executeQuery(sql);
        %>
<center><h2>Results</h2></center>
        <table border="1" style="border-collapse:collapse" align="center">
            <tr>
                <td><b>Address</b></td>
                <td><b>Type</b></td>
                <td><b>Contract Term (months)</b></td>
                <td><b>Rent Amount (monthly)</b></td>
                <td><b>Preferred Gender</b></td>
                <td><b>Smoking Allowed</b></td>
                <td><b>Pets Allowed</b></td>
                <td><b>Add to Favorites</b></td>
            </tr>
            
            <% while (rs.next()) { %>
            
                <tr>
                    <td><%=rs.getString("Address")%></td>
                    <td><%=rs.getString("HouseType")%></td>
                    <td><%=rs.getString("ContractTerm")%></td>
                    <td><%=rs.getString("Price")%></td>
                    <td><%=rs.getString("PreferredGender")%></td>
                    <td><%=rs.getString("SmokingAllowed")%></td>
                    <td><%=rs.getString("PetsAllowed")%></td>
                    <td>
                        <form action="addFavourite.jsp">
                            <input type="hidden" name="currentListingID" value="<%=Integer.parseInt(rs.getString("ListingID"))%>">
                            <input type="hidden" name="houseType" value="<%=request.getParameter("houseType")%>">
                            <input type="hidden" name="contractTerm" value="<%=request.getParameter("contractTerm")%>">
                            <input type="hidden" name="price" value="<%=request.getParameter("price")%>">
                            <input type="hidden" name="gender" value="<%=request.getParameter("gender")%>">
                            <input type="hidden" name="smoking" value="<%=request.getParameter("smoking")%>">
                            <input type="hidden" name="pets" value="<%=request.getParameter("pets")%>">
                            <input type="submit" name="addFavorite" value="Add">
                        </form>
                    </td> 
                </tr>
            
            <% } %>
            
        </table>
        
        
    </body>
    <br>
    <center>
    <a href="Search.jsp">Return to search page</a></center>
</html>
