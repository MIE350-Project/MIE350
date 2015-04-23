/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package MIE350;

import java.sql.*; 
import javax.sql.*; 
import java.util.*;

/**
 *
 * @author EddyZulkifly
 */
public class Searcher extends Person {
    FavouriteList Favourites = new FavouriteList();
    
    public Searcher (String userName, String passWord, String firstName, String lastName, Connection con) throws SQLException {
        super(userName, passWord, firstName, lastName);
        readInFavouriteList(con);
    }
    
    //method to initialize current Searcher's favoriteList
    public void readInFavouriteList(Connection con) throws SQLException{
        
        Statement stmt = con.createStatement();
        Statement stmt2 = con.createStatement();
        stmt.executeUpdate("USE MIE350");
        String qStr = "SELECT * FROM Favourites WHERE Username='" +this.userName +"'";
	ResultSet dataInput = stmt.executeQuery(qStr);
        
        while (dataInput.next()) {
                int ListingID = Integer.parseInt(dataInput.getString("listingid"));
                ResultSet rs = stmt2.executeQuery("SELECT * FROM Listing WHERE ListingID= " + ListingID);
                rs.next();
                String ListingUsername = rs.getString("Username");
                int ListingPrice = rs.getInt("Price");
                String ListingAddress = rs.getString("Address");
                int ListingTerm = rs.getInt("ContractTerm");
                String ListingHouse = rs.getString("HouseType");
                String ListingGender = rs.getString("PreferredGender");
                String ListingSmoking = rs.getString("SmokingAllowed");
                String ListingPets = rs.getString("PetsAllowed");

                Listing favoriteListing = new Listing(ListingID, ListingUsername, ListingPrice,ListingAddress,ListingTerm,  
                ListingHouse,ListingGender,ListingSmoking,ListingPets);

                int rating;
                rating = dataInput.getInt("rating");
                Favourite favourite = new Favourite(favoriteListing, rating);
                Favourites.add(favourite);
        }
    }
    
    //method to add a new favorite to the hashmap and the database
    public boolean addFavourite(Connection con, int ListingID, int Rating) throws SQLException {
        
        Statement stmt = con.createStatement();
        stmt.executeUpdate("USE MIE350");
        ResultSet rs = stmt.executeQuery("SELECT * FROM Listing WHERE ListingID= " + ListingID);
        rs.next();
        String ListingUsername = rs.getString("Username");
        int ListingPrice =rs.getInt("Price");
        String ListingAddress =rs.getString("Address");
        int ListingTerm=rs.getInt("ContractTerm");
        String ListingHouse=rs.getString("HouseType");
        String ListingGender=rs.getString("PreferredGender");
        String ListingSmoking=rs.getString("SmokingAllowed");
        String ListingPets=rs.getString("PetsAllowed");
                                
        Listing favoriteListing = new Listing(ListingID, ListingUsername, ListingPrice,ListingAddress,ListingTerm,  
                ListingHouse,ListingGender,ListingSmoking,ListingPets);
        
        Favourite favorite = new Favourite(favoriteListing, Rating);
        Favourites.add(favorite);
        
        String sql = "INSERT INTO Favourites";
        sql += " VALUES ";
        sql += "('" + this.userName +"', " + ListingID + ", " + Rating + ")";
        
        try {
            stmt.executeUpdate("USE MIE350");
            stmt.executeUpdate(sql);
            return true;
        }
        catch (SQLException ex) {
            ex.printStackTrace();
        }
        
        return false;
    }
    
    public boolean deleteFavourite(Connection con, int ListingID) throws SQLException {
        
        Statement stmt = con.createStatement();
        stmt.executeUpdate("USE MIE350");
                                
        Favourites.delete(ListingID);
        
        String sql = "DELETE FROM Favourites WHERE Username='" + this.userName + "' AND listingid=" + ListingID;
        
        try {
            stmt.executeUpdate("USE MIE350");
            stmt.executeUpdate(sql);
            return true;
        }
        catch (SQLException ex) {
            ex.printStackTrace();
        }
        
        return false;
    }
    
    public boolean editFavourite(Connection con, int ListingID,int rating) throws SQLException{
        Statement stmt = con.createStatement();
        stmt.executeUpdate("USE MIE350");
        ResultSet rs = stmt.executeQuery("SELECT * FROM Listing WHERE ListingID= " + ListingID);
        rs.next();
        String ListingUsername = rs.getString("Username");
        int ListingPrice =rs.getInt("Price");
        String ListingAddress =rs.getString("Address");
        int ListingTerm=rs.getInt("ContractTerm");
        String ListingHouse=rs.getString("HouseType");
        String ListingGender=rs.getString("PreferredGender");
        String ListingSmoking=rs.getString("SmokingAllowed");
        String ListingPets=rs.getString("PetsAllowed");
                                
        Listing favoriteListing = new Listing(ListingID, ListingUsername, ListingPrice,ListingAddress,ListingTerm,  
                ListingHouse,ListingGender,ListingSmoking,ListingPets);
        
        Favourite favourite = new Favourite(favoriteListing,rating);
        Favourites.edit(favourite);
        
        String sql = "UPDATE Favourites Set rating= "+rating+" WHERE Username='" + this.userName + "' AND listingid=" + ListingID;
        
        try {
            stmt.executeUpdate("USE MIE350");
            stmt.executeUpdate(sql);
            return true;
        }
        catch (SQLException ex) {
            ex.printStackTrace();
        }
        
        return false;  
    }
    
 public Iterator favouritesIterator () {
     return Favourites.iterator();
 }   
            
    
}
