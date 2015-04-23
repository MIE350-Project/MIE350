<%-- 
    Document   : Search
    Created on : Nov 28, 2013, 10:29:53 PM
    Author     : John
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search Query</title>
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
	<h2>Search Criteria</h2>

	    <form name="searchListings" action="Result.jsp">
<b>Type:</b>
		
	<br>	
             <input type="radio" name="houseType" value="House">House
            <input type="radio" name="houseType" value="Condo">Condo
            <input type="radio" name="houseType" value="Apartment">Apartment
            <br>

	<br>


    <b>Contract Term (months):</b>

	<br>
            <input type="text" name="contractTerm">

       	<br>

<!--	    <tr>
                <td><b>Location: </b></td>

	<br>

	<td>
           
            
            <input type="checkbox"> Bay Street<br>
 	    <input type="checkbox"> Spadina<br>
	    <input type="checkbox"> McCaul<br>
	    <input type="checkbox"> Cecil<br>
		</select>

   	</td>
            </tr>-->	
     
            
	<br>


<b>Maximum Rent Amount (monthly):</b>
        <br>
        <input type="text" name="price">

             <!--<input type="radio" name="rent" value="<500">less than $500
            <input type="radio" name="rent" value="500-750">$500 - $750
            <input type="radio" name="rent" value="750-1000">$751 - $1000
            <input type="radio" name="rent" value=">1000">more than $1000-->
        <br>
		
	<br>

    <b>Gender</b>

	<br>

	<input type="radio" name="gender" value="Male"> Male
	<input type="radio" name="gender" value="Female"> Female
        <!--<input type="radio" name="gender" value="Both"> Both-->

        <br>
	<br>

<b>Smoking Allowed:</b>
                <br>

	<input type="radio" name="smoking" value="Yes">Yes
	<input type="radio" name="smoking" value="No">No<br>

	<br>

<b>Pets Allowed:</b>
                <br>
                
	<input type="radio" name="pets" value="Yes">Yes
	<input type="radio" name="pets" value="No">No<br>

            <br>
	<input type="reset" value="reset"><input type="submit" value=" submit">
                    <br>
                    <br>
                    <br>
                    <br>
                    <br>
                    <a href="SearchersMainPage.jsp"> Return to the Searchers Main Page </a>
</form>

</body>

