<%-- 
    Document   : new_register_save
    Created on : Nov 6, 2013, 11:33:25 PM
    Author     : EddyZulkifly
--%>

<!-- required imports -->
<%@ page import="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@ page import = "MIE350.Person" %>
<%@ page import = "MIE350.dbConstants"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>miRoommate Finder</title>
    </head>
        <style>
body
{
background-color:#92DCE0;
}
h1{
    color: #FFFFFF;
}
h2{
    color: #FFFFFF;
}
h3{
    color: #FFFFFF;
}
td{
    color: #FFFFFF;
}
i{
    color: #FFFFFF;
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
  String username = request.getParameter("username");
  String password = request.getParameter("password");
  String firstname = request.getParameter("firstname");
  String lastname = request.getParameter("lastname");
  
  
  Person p = new Person(username, password, firstname, lastname);
  out.println(p.insertPerson(con));
%>

<%
  // Close the database connection.
  con.close();
%>

<br>
<a href="index.jsp"> Return to Login page </a> 
</body>
</html>    