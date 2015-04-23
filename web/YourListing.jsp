<%-- 
    Document   : YourListing
    Created on : Dec 3, 2013, 4:15:39 PM
    Author     : John
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="MIE350.dbConstants"%>
<%@ page import="MIE350.Tenant"%>
<%@ page import="MIE350.Listing"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Your Listing Page</title>
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
    <%  Statement stmt;
        Connection con;
        String url = "jdbc:mysql://localhost:3306/";
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection(url, dbConstants.DB_Username, dbConstants.DB_Password); 
        stmt = con.createStatement();
        stmt.executeUpdate("USE MIE350");
            
        //Constructing the sql query to be executed
        String sql = "SELECT * FROM Listing WHERE Username='" + ((Tenant)session.getAttribute("currentTenant")).getUserName() + "' " ;
        ResultSet rs = stmt.executeQuery(sql);
        rs.next();
        int ListingID = rs.getInt("ListingID");
        String Username = rs.getString("Username");
        int Price = rs.getInt("Price");
        String Address = rs.getString("Address");
        int ContractTerm = rs.getInt("ContractTerm");
        String HouseType = rs.getString("HouseType");
        String PreferredGender = rs.getString("PreferredGender");
        String SmokingAllowed = rs.getString("SmokingAllowed");
        String PetsAllowed = rs.getString("PetsAllowed");
        
        Listing currentListing = new Listing(ListingID, Username, Price, Address, ContractTerm, HouseType, PreferredGender, SmokingAllowed, PetsAllowed);
        session.setAttribute("listing", currentListing);
        %>    
        
        <ul>
<li><a href="MainPage.jsp">Main</a></li>
<li><a href="about.jsp">About</a></li>
<li><a href="FAQ.jsp">FAQ</a></li>
<li><a href="signOut.jsp">Sign Out</a></li>
</ul>
        
        <center><h1>Your Listings</h1></center>
        
        <form action="editListing.jsp">
        <table border="1" style="border-collapse:collapse" align="center">
    
        
        <tr>
            <td>Address:</td>
            <td> <%=rs.getString("Address")%> </td>
            <td> <input type="submit" value="edit" name="changeAddress"> </td>
        </tr>
        
                <tr>
            <td>Type:</td>
            <td><%=rs.getString("HouseType")%></td> 
            <td> <input type="submit" value="edit" name="changeHouseType"> </td>
        </tr>
        
                <tr>
            <td>Contract Term (months):</td>
            <td> <%=rs.getString("ContractTerm")%> </td>
            <td> <input type="submit" value="edit" name="changeContractTerm"> </td>
        </tr>
        
        
                <tr>
            <td>Rent Amount (monthly):</td>
            <td> <%=rs.getString("Price")%></td>
            <td> <input type="submit" value="edit" name="changePrice"> </td>
        </tr>
        
        
                <tr>
            <td>Preferred Gender:</td>
            <td> <%=rs.getString("PreferredGender")%></td>
            <td> <input type="submit" value="edit" name="changePreferredGender"> </td>
        </tr>
        
        <tr>
            <td>Smoking Allowed:</td>
            <td><%=rs.getString("SmokingAllowed")%></td>
            <td> <input type="submit" value="edit" name="changeSmokingAllowed"> </td>
        </tr>
        
        <tr>
            <td>Pets Allowed:</td>
            <td><%=rs.getString("PetsAllowed")%></td>
            <td> <input type="submit" value="edit" name="changePetsAllowed"> </td>
        </tr>
        </table>
        </form>
       
        <br>
        <br>
        <center>
        <a href="deleteListing.jsp"> Delete your listing</a>
        </center>
    </body>
</html>
