<%-- 
    Document   : index
    Created on : 18-Oct-2013, 11:06:36 PM
    Author     : Evelyn
--%>

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
 
        <center>
            <br>
            <h1>miRoommate Finder</h1>
            <h2>Welcome!</h2>              
            <br>
            <br>
            <h3>Please sign in: </h3>
        
        <form action="login.jsp">
            <table border="1" style="border-collapse: collapse" align="center">
                <tr>
                    <td>Username:</td>
                    <td><input type="text" name="username" /></td>
                </tr>    
                <tr>
                    <td>Password:</td>
                    <td><input type="password" name="password" /></td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" value="Sign In"></td>
                </tr>        
            </table>             
        </form>
        <br>
        <br>
        <i>Don't have an account? Please <a href="Register.jsp"> create
                a new account</a> to begin using the roommate finder.</i>
        <br>    
        <br>
        <a href="create_userdb.jsp"> Click here to initialize DB </a>
         </center>       
    </body>
</html>

