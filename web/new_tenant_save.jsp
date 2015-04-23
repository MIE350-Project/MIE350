<%-- 
    Document   : new_register_save
    Created on : Nov 6, 2013, 11:33:25 PM
    Author     : EddyZulkifly
--%>

<!-- required imports -->
<%@ page import="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@ page import = "MIE350.Person" %>
<%@ page import = "MIE350.Tenant" %>
<%@ page import = "MIE350.dbConstants"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tenant Profile Created</title>
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
  // Pull out the values passed in the form, via a POST request.
  Person currentUser = (Person)session.getAttribute("currentUser");
  String username = currentUser.getUserName();
  String password = currentUser.getPassWord();
  String firstname = currentUser.getFirstName();
  String lastname = currentUser.getLastName();
  String phone = request.getParameter("phone");
  String sex = request.getParameter("sex");
  String smoker = request.getParameter("smoker");
  String language = request.getParameter("language");
  String religion = request.getParameter("religion");
  
  Tenant currentTenant = new Tenant(username, password, firstname, lastname, phone, sex, smoker, language, religion);
  out.println(currentTenant.insertTenant(con));
  session.setAttribute("currentTenant", currentTenant);
%>

<%
  // Close the database connection.
  con.close();
%>

<br>
<a href="TenantsMainPage.jsp"> Go to Tenants Main Page </a> 
</body>
</html>