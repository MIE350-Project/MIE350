<%-- 
    Document   : confirmEditAccountInfo
    Created on : Nov 28, 2013, 10:16:28 PM
    Author     : Danny
--%>

<%@page import="java.sql.*"%>
<%@page import="MIE350.Person"%>
<%@page import="MIE350.dbConstants"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Account Info Edit Confirmation</title>
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
        <ul>
<li><a href="MainPage.jsp">Main</a></li>
<li><a href="about.jsp">About</a></li>
<li><a href="FAQ.jsp">FAQ</a></li>
<li><a href="signOut.jsp">Sign Out</a></li>
</ul>
        <% Connection con;
           String url = "jdbc:mysql://localhost:3306/";
           Class.forName("com.mysql.jdbc.Driver");
           con = DriverManager.getConnection(url, dbConstants.DB_Username, dbConstants.DB_Password);
           Person currentUser = (Person)session.getAttribute("currentUser");
        %>
        
        <%-- Confirmation page for changePassword --%>
        <% if(request.getParameter("changePassword") != null) {
          String currentPassword = request.getParameter("currentPassword");
          if (currentUser.getPassWord().equals(currentPassword)) {
              String newPassword = request.getParameter("newPassword");
              String confirmPassword = request.getParameter("confirmPassword");
              if(newPassword.equals(confirmPassword)) {
                  out.println(currentUser.editPassword(con, newPassword));
                  session.setAttribute("currentUser", currentUser);
              }
              else {
                  out.println("Error: Confirmation password does not match new password");
              }
          } else {
              out.println("Error: Incorrect current password");
          }
        }%>
        
        <%-- Confirmation page for changeFirstName --%>
        <% if(request.getParameter("changeFirstName") != null) {
            String newFirstName = request.getParameter("newFirstName");
            out.println(currentUser.editFirstName(con, newFirstName));
            session.setAttribute("currentUser", currentUser);
        }%>
        
        <%-- Confirmation page for changeLastName --%>
        <% if(request.getParameter("changeLastName") != null) {
            String newLastName = request.getParameter("newLastName");
            out.println(currentUser.editLastName(con, newLastName));
            session.setAttribute("currentUser", currentUser);
        }%>
        
        <br>
        <a href ="manageAccount.jsp">Return to Account Management page</a>
    </body>
</html>
