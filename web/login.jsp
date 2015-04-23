<%-- 
    Document   : login
    Created on : Nov 26, 2013, 1:39:01 AM
    Author     : Danny
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="MIE350.Person"%>
<%@ page import="MIE350.dbConstants"%>

<%
    Statement stmt;
    Connection con;
    String url = "jdbc:mysql://localhost:3306/";
    Class.forName("com.mysql.jdbc.Driver");
    con = DriverManager.getConnection(url, dbConstants.DB_Username, dbConstants.DB_Password); 
    stmt = con.createStatement();
    
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    
    stmt.executeUpdate("USE MIE350");
    String sql = "SELECT * from Person where Username='" +username+ "' AND password='" + password + "';";
    ResultSet rs = stmt.executeQuery(sql);
    
    if (rs.next()) {
        String firstName = rs.getString("firstname");
	String lastName = rs.getString("lastname");
        Person currentUser = new Person(username, password, firstName, lastName);
        session.setAttribute("currentUser", currentUser);
        response.sendRedirect("MainPage.jsp");
//        out.println("Welcome, " +firstName+ " " +lastName+ "!");        
    }
    else {
        response.sendRedirect("loginFailed.jsp");
    }
%>

