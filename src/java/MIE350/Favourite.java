/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package MIE350;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author EddyZulkifly
 */
public class Favourite {
    
    private Listing listing;
    private int rating;
    
    public  Favourite (Listing listing, int rating) {
        this.listing = listing;
        this.rating = rating;
    }

    /**
     * @return the listingid
     */
    public Listing getListing() {
        return listing;
    }

    /**
     * @param listingid the listingid to set
     */
    public void setListing(Listing listing) {
        this.listing = listing;
    }

    /**
     * @return the rating
     */
    public int getRating() {
        return rating;
    }

    /**
     * @param rating the rating to set
     */
    public void setRating(int rating) {
        this.rating = rating;
    }
    
//    public void addFavourite(Favourite new_favourite){
//        favourites.add(new_favourite);
//    }
//    
//    public void editFavourite(Favourite edited_favourite){
//        rating=edited_favourite.rating;
//        
//    }
    
//    public String updateFavourite(Connection con,Favourite favourite){
//        String username=favourite.getUserName();
//        int listingid = favourite.getListingid();
//        int rating = favourite.getRating();
//        
//        String updateResult="Update Favourite Failed";
//        String sql= "UPDATE Favourite Set Rating="+rating+"WHERE listingid="+listingid+" AND username='"+username+"';";
//        
//        try{
//            Statement stmt=con.createStatement();
//            stmt.executeUpdate("USE MIE350");
//            stmt.executeUpdate(sql);
//            updateResult = "Successfully updated favourite";
//        }catch (SQLException ex) {
//            ex.printStackTrace();
//        }      
//        
//        return updateResult;
//    }
//    
//    public String insertFavourite (Connection con) {
//        
//        String insertResult = "Favourite Addition Failed";
//        String sql = "INSERT INTO Favourites";
//        sql += "(Username, listingid, rating) ";
//        sql += " VALUES ";
//        sql += "('"+userName+"' , '"+listingid+"'  , '"+rating+"');";
//        try {
//            Statement stmt = con.createStatement();
//            stmt.executeUpdate("USE MIE350");
//            stmt.executeUpdate(sql);
//            insertResult = "Favourite successfully created";
//        }
//        catch (SQLException ex) {
//            ex.printStackTrace();
//        }
//        
//        return insertResult;
//    }
   
//    public boolean hasFavourites(){
//        boolean valid=false;
//        if(favourites.size()!=0){
//            valid=true;
//        }
//        return valid;
//    }
}
