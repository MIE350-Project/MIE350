<%-- 
    Document   : YourListing
    Created on : Nov 28, 2013, 5:01:19 PM
    Author     : John
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>miRoommate Finder</title>
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
    <ul>
<li><a href="MainPage.jsp">Main</a></li>
<li><a href="about.jsp">About</a></li>
<li><a href="FAQ.jsp">FAQ</a></li>
<li><a href="signOut.jsp">Sign Out</a></li>
</ul>
        <h2>Create Your Listing</h2>
 
    <form name="listingForm" action="new_listing_save.jsp" >
        <table border="0"style="border-collapse:collapse" align="left">
        <tr>
            <td>Type:</td>	
            <td>
                <input type="radio" name="houseType" value="House">House
                <input type="radio" name="houseType" value="Condo">Condo
                <input type="radio" name="houseType" value="Apartment">Apartment
            </td>
        </tr>
	
        <tr>	
          <td>Address:</td>
          <td><input type="text" name="address"/></td>
        </tr>
        
        <!--
        <tr>	
          <td>Nationality:</td>
          <td><input type="text" name="nationality"/></td>
        </tr>
        -->    
        <tr>
            <td>Contract Term (months):</td>
            <td><input type="text" name="contractTerm"/></td>
        </tr>
		
        <tr>
            <td>Rent Amount (monthly):</td>
            <td><input type="text" name="price"> 
                        
            <!--<input type="radio" name="rent" value="<500">less than $500
            <input type="radio" name="rent" value="500-750">$500 - $750
            <input type="radio" name="rent" value="750-1000">$751 - $1000
            <input type="radio" name="rent" value=">1000">more than $1000-->
            </td>
        </tr>
		
        <tr>
            <td>Preferred Gender:</td>
	    <td>
                <input type="radio" name="preferredGender" value="Male">Male
                <input type="radio" name="preferredGender" value="Female">Female
                <input type="radio" name="preferredGender" value="Both">Both
            </td>    
        </tr>
	    
        <tr>
		<td>Smoking Allowed:</td>
            
                <td>
                    <input type="radio" name="smokingAllowed" value="Yes">Yes
                    <input type="radio" name="smokingAllowed" value="No">No
                </td>
        </tr>
		
        <tr>
                <td> Pets Allowed:</td>
                <td>
                    <input type="radio" name="petsAllowed" value="Yes">Yes
                    <input type="radio" name="petsAllowed" value="No">No
                </td>
        </tr>
		<td colspan="2" align="center"><input type="reset" value="reset"><input type="submit" value=" submit">
                <br>            
                <tr>
                <td>
                    <br>
                    <br>
                    <br>
                    <br>
                    <br>
                    <a href="TenantsMainPage.jsp"> Return to the Tenants Main Page </a>
                </td>
                </tr>
        </table>
</form>
</body>
</html>
