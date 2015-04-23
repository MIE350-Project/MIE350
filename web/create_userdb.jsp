<!-- required imports -->
<%@ page import="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@ page import = "MIE350.dbConstants" %>

<%
  // Connect to the database.
  Statement stmt;
  Connection con;
  String url = "jdbc:mysql://localhost:3306/";
  Class.forName("com.mysql.jdbc.Driver");
  con = DriverManager.getConnection(url, dbConstants.DB_Username, dbConstants.DB_Password);
  stmt = con.createStatement();
%>

<h2>Creation of database</h2>

<%

String sql;

// Create the Database, if not there already.
try{
  sql = "CREATE DATABASE MIE350";
  stmt.executeUpdate(sql);
  out.println("Done: " + sql + "<br />");
} catch (SQLException ex) {
  out.println(ex + "<br />");
}

// Choose the library database.
try{
  sql = "USE MIE350";
  stmt.executeUpdate(sql);
  out.println("Done: " + sql + "<br />");
} catch (SQLException ex) {
  out.println(ex + "<br />");
}

// Generate the query to create the Person table.
sql = "CREATE TABLE Person(";
sql += "   Username VARCHAR(40) NOT NULL,";
sql += "   Password VARCHAR(40) NOT NULL,";
sql += "   FirstName VARCHAR(40) NOT NULL,";
sql += "   LastName VARCHAR(40) NOT NULL,";
sql += "   PRIMARY KEY (Username)";
sql += ");";

// Execute the query that creates the Person table, if not there already.
try{
  stmt.executeUpdate(sql);
  out.println("Done: " + sql + "<br />");
} catch (SQLException ex) {
  out.println(ex + "<br />");
}

// Generate the query to create the Tenant table.
sql = "CREATE TABLE Tenant(";
sql += "   Username VARCHAR(40) NOT NULL,";
sql += "   phone VARCHAR(40) NOT NULL,";
sql += "   sex VARCHAR(40) NOT NULL,";
sql += "   smoker VARCHAR(40) NOT NULL,";
sql += "   language VARCHAR(40) NOT NULL,";
sql += "   religion VARCHAR(40) NOT NULL,";
sql += "   PRIMARY KEY (Username),";
sql += "   FOREIGN KEY (Username) REFERENCES Person(Username)";
sql += ");";

// Execute the query that creates the Tenant table, if not there already.
try{
  stmt.executeUpdate(sql);
  out.println("Done: " + sql + "<br />");
} catch (SQLException ex) {
  out.println(ex + "<br />");
}

// Generate the query to create the Listing table.
sql = "CREATE TABLE Listing(";
sql += "   ListingID INT NOT NULL,";
sql += "   Username VARCHAR(40) NOT NULL,";
sql += "   Price INT NOT NULL,";
sql += "   Address VARCHAR(40) NOT NULL,";
sql += "   ContractTerm INT NOT NULL,";
sql += "   HouseType VARCHAR(10) NULL,";
//sql += "   RoomType VARCHAR(10) NULL,";
sql += "   PreferredGender VARCHAR(10) NULL,";
sql += "   SmokingAllowed VARCHAR(10) NULL,";
sql += "   PetsAllowed VARCHAR(10) NULL,";
sql += "   PRIMARY KEY (ListingID),";
sql += "   FOREIGN KEY (Username) REFERENCES Tenant(Username)";
sql += ");";

// Execute the query that creates the Listing table, if not there already.
try{
  stmt.executeUpdate(sql);
  out.println("Done: " + sql + "<br />");
} catch (SQLException ex) {
  out.println(ex + "<br />");
}

// Generate the query to create the Favourites table.
sql = "CREATE TABLE Favourites(";
sql += "   Username VARCHAR(40) NOT NULL,";
sql += "   listingid Integer NOT NULL,";
sql += "   rating Integer NOT NULL,";
sql += "   PRIMARY KEY (Username,listingid),";
sql += "   FOREIGN KEY (Username) REFERENCES Person(Username),";
sql += "   FOREIGN KEY (listingid) REFERENCES Listing(ListingID)";
sql += ");";

// Execute the query that creates the Favourites table, if not there already.
try{
  stmt.executeUpdate(sql);
  out.println("Done: " + sql + "<br />");
} catch (SQLException ex) {
  out.println(ex + "<br />");
}


//Creating initial Person tuples
sql  = "INSERT INTO Person(Username, Password, FirstName, LastName) VALUES";
sql += "('Anna_K', 'ak1989', 'Anna', 'Kotlov'), ";
sql += "('eddyZ', 'ez1992', 'Eddy', 'Zulkifly'), ";
sql += "('sabaK', 'sk1992', 'Saba', 'Khan'), ";
sql += "('evelynS', 'sunshine', 'Evelyn', 'Sham'), ";
sql += "('dannyN', 'morning', 'Danny', 'Ngo'), ";
sql += "('johnS', 'world13', 'John', 'Shen'), ";
sql += "('mohdA', 'silly4', 'Mohd', 'Asher'), ";
sql += "('hannahS', 'peace2', 'Hannah', 'Stevenson'), ";
sql += "('yazanA', 'ya1993', 'Yazan', 'Aboudi'), ";
sql += "('arelR', 'qatar', 'Arel', 'Roche'), ";
sql += "('rohitR', 'hk313', 'Rohit', 'Rathi'), ";
sql += "('tiffanyO', 'funny', 'Tiffany', 'Ongtenco'), ";
sql += "('nazaneenK', 'searious', 'Nazaneen', 'Kalantar'), ";
sql += "('nadimB', 'awesome', 'Nadim', 'Barakat'), ";
sql += "('satyS', 'mustach', 'Satyender', 'Sahota'), ";
sql += "('sanchitM', 'happy', 'Sanchit', 'Mathur'), ";
sql += "('zackD', 'canada', 'Zack', 'Doucet'), ";
sql += "('benW', 'dancer', 'Ben', 'Wang'), ";
sql += "('laviniaH', 'chinky', 'Lavinia', 'Hui'), ";
sql += "('myraB', 'flower', 'Myra', 'Barquila'), ";
sql += "('puneetG', 'indian', 'Puneet', 'Gupta'), ";
sql += "('aidanaK', 'kazak', 'Aidana', 'Kazulova'), ";
sql += "('kevinC', 'food247', 'Kevin', 'Chow'), ";
sql += "('balaK', 'balabala', 'Bala', 'Krishna'), ";
sql += "('johnI', 'imawriter', 'John', 'Irving'), ";
sql += "('mariamT', 'complicated', 'Mariam', 'Toews'), ";
sql += "('barbaraP', 'junieb', 'Barbara', 'Parker'), ";
sql += "('peggyP', 'amelia', 'Peggy', 'Parish'), ";
sql += "('daveA', 'mamongtc', 'David', 'Adams'), ";
sql += "('willyW', 'iluvcandy', 'Willy', 'Wonka'), ";
sql += "('sheldonC', 'neutrinos', 'Sheldon', 'Cooper'), ";
sql += "('leonardH', 'lasers', 'Leonard', 'Hoffstaeder'), ";
sql += "('rajK', 'grasshopper', 'Rajesh', 'Kuthrapali'), ";
sql += "('howieW', 'astronaut', 'Howard', 'Wolowitz'), ";
sql += "('birttanyF', 'blueSky', 'Brittany', 'Fraser'); ";

try{
  stmt.executeUpdate(sql);
  out.println("Done inserting Persons" + "<br />");
} catch (SQLException ex) {
  out.println(ex + "<br />");
}


//Creating initial Tenant tuples
sql  = "INSERT INTO Tenant(Username, phone, sex, smoker, language, religion) VALUES";
sql += "('Anna_K', '4165391239', 'Female', 'No', 'English', 'None'), ";
sql += "('eddyZ', '4162181823', 'Male', 'No', 'English', 'None'), ";
sql += "('sabaK', '4161972181', 'Female', 'No', 'English', 'None'), ";
sql += "('evelynS', '4169214781', 'Female', 'No', 'Chinese', 'None'), ";
sql += "('dannyN', '4169217826', 'Male', 'No', 'English', 'None'), ";
sql += "('johnS', '4160218129', 'Male', 'No', 'French', 'None'); ";
//sql += "('mohdA', 'silly4', 'Mohd', 'Asher'), ";
//sql += "('hannahS', 'peace2', 'Hannah', 'Stevenson'), ";
//sql += "('yazanA', 'ya1993', 'Yazan', 'Aboudi'), ";
//sql += "('arelR', 'qatar', 'Arel', 'Roche'), ";
//sql += "('rohitR', 'hk313', 'Rohit', 'Rathi'), ";
//sql += "('tiffanyO', 'funny', 'Tiffany', 'Ongtenco'), ";

try{
  stmt.executeUpdate(sql);
  out.println("Done inserting Tenants" + "<br />");
} catch (SQLException ex) {
  out.println(ex + "<br />");
}


//Creating initial Listing tuples
sql  = "INSERT INTO Listing(ListingID, Username, Price, Address, ContractTerm, HouseType, PreferredGender, SmokingAllowed, PetsAllowed) VALUES";
sql += "('23','Anna_K', '700', '185 Huron St.', '8', 'House', 'Both', 'No', 'Yes'), ";
sql += "('126', 'eddyZ', '825', '85 Beverley St.', '12', 'House', 'Male', 'No', 'No'), ";
sql += "('84', 'sabaK', '650', '122 DArcy St.', '8', 'House', 'Female', 'No', 'Yes'), ";
sql += "('168', 'evelynS', '500', '269 College St.', '8', 'Apartment', 'Female', 'No', 'No'), ";
sql += "('387', 'dannyN', '600', '1122 St.George St.', '12', 'Apartment', 'Both', 'Yes', 'Yes'), ";
sql += "('932', 'johnS', '850', '832 Dundas St.', '8', 'Condo', 'Male', 'No', 'No'); ";
//sql += "('47', 'mohdA', '1175', '1425 Bay St.', '12', 'Condo', 'Male', 'No', 'No'), ";
//sql += "('134', 'hannahS', '575', '45 Huron St.', '8', 'Apartment', 'Female', 'Yes', 'Yes'), ";
//sql += "('573', 'yazanA', '900', '1221 Yonge St.', '12', 'Condo', 'Male', 'No', 'No'), ";
//sql += "('761', 'arelR', '1250', '2817 Bloor St.', '12', 'Condo', 'Male', 'Yes', 'Yes'), ";
//sql += "('98', 'rohitR', '725', '162 Dundas St.', '8', 'House', 'Both', 'No', 'Yes'), ";
//sql += "('243', 'tiffanyO', '750', '485 Queen St.', '12', 'Apartment', 'Female', 'Yes', 'No'), ";
//sql += "('821', 'nazaneenK', '800', '239 Bathurst St.', '8', 'House', 'Both', 'No', 'Yes'), ";
//sql += "('79', 'nadimB', '1200', '3143 Bay St.', '12', 'Condo', 'Male', 'No', 'No'), ";
//sql += "('537', 'satyS', '900', '98 College St..', '12', 'Apartment', 'Both', 'Yes', 'Yes'), ";
//sql += "('688', 'sanchitM', '700', '832 Spadina Ave.', '12', 'Apartment', 'Male', 'No', 'Yes'), ";
//sql += "('813', 'zackD', '1100', '2857 Bloor St.', '12', 'Condo', 'Both', 'No', 'No'), ";
//sql += "('328', 'benW', '950', '1912 College St.', '8', 'House', 'Male', 'Yes', 'No'), ";
//sql += "('912', 'laviniaH', '675', '195 Spadina Ave.', '12', 'Apartment', 'Female', 'No', 'Yes'), ";
//sql += "('286', 'myraB', '700', '812 Huron St.', '8', 'House', 'Female', 'No', 'No'), ";
//sql += "('299', 'puneetG', '875', '1298 Yonge St.', '12', 'Condo', 'Both', 'Yes', 'Yes'), ";
//sql += "('218', 'aidanaK', '1300', '2196 Bay St..', '12', 'Condo', 'Female', 'Yes', 'Yes'), ";
//sql += "('875', 'kevinC', '745', '213 Huron St.', '8', 'House', 'Both', 'No', 'Yes'), ";
//sql += "('642', 'balaK', '550', '91 Baldwin St.', '12', 'House', 'Female', 'No', 'No'), ";
//sql += "('77', 'birttanyF', '775', '2121 Bathurst St.', '12', 'Apartment', 'Both', 'No', 'Yes'); ";

try{
  stmt.executeUpdate(sql);
  out.println("Done inserting Listings" + "<br />");
} catch (SQLException ex) {
  out.println(ex + "<br />");
}
%>

<%
  // MVC: Closing a DB connection; ually in the DB configuration portion as well.
  con.close();
%>

<a href="index.jsp"> Return to home page </a> 