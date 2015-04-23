
<%-- 
   Document   : new_listing_save

	Created on : 1-Dec-2013, 11:41:35 AM

	Author     : Evelyn
--%>

<!-- required imports -->


<%@ page import="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@ page import ="java.util.*" %>
<%@ page import = "MIE350.Listing" %>
<%@ page import = "MIE350.Tenant" %>
<%@ page import = "MIE350.dbConstants"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listing Created</title>
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


<%
  // Connect to the database.
    Statement stmt;
    Connection con;
    String url = "jdbc:mysql://localhost:3306/";
    Class.forName("com.mysql.jdbc.Driver");
    con = DriverManager.getConnection(url, dbConstants.DB_Username, dbConstants.DB_Password);
    stmt = con.createStatement();
%>



<%
  //Creation of a ListingID
   
Random random= new Random();
int listingID = random.nextInt(1000);
//imported java.util.* header, but netbeans does not recognize class or random() function		   
// Pull out the values passed in the form, via a POST request.

Tenant currentTenant = (Tenant)session.getAttribute("currentTenant");
String tenantUsername = currentTenant.getUserName();

int price = Integer.parseInt(request.getParameter("price"));

String address = request.getParameter("address");
  
int contractTerm = Integer.parseInt(request.getParameter("contractTerm")); //may need to parse form entry into an int?
  
String houseType = request.getParameter("houseType");
  
//String roomtype = request.getParameter("roomtype");
  
String preferredGender = request.getParameter("preferredGender");
  
String smokingAllowed = request.getParameter("smokingAllowed");
  
String petsAllowed = request.getParameter("petsAllowed");
  
Listing l = new Listing(listingID, tenantUsername, price, address, contractTerm, houseType, preferredGender, smokingAllowed, petsAllowed);
  
out.println(l.insertListing(con));
%>

<%
  // Close the database connection.
  con.close();
%>
<br>
<a href="YourListing.jsp"> Go to Your Listing page </a> 
</body>
</html>
