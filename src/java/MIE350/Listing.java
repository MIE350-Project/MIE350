/* 
 * To change this license header, choose License Headers in Project Properties. 
 * To change this template file, choose Tools | Templates 
 * and open the template in the editor. 
 */
  
package MIE350; 
import java.sql.*; 
import javax.sql.*; 
  
/** 
 * 
 * @author Evelyn 
 */
public class Listing { 
    private int listingID; 
    private String tenantUsername;
    private int price; 
    private String address; 
    private int contractTerm; //was looking at the html field type = "number", int then?? 
    private String houseType; 
    private String preferredGender; 
    private String smokingAllowed; //Boolean or string?? 
    private String petsAllowed; //Boolean or string?? 
      
    //Constructor 
    public Listing(int listingID, String tenantUsername, int price, String address, int contractTerm,  
                    String houseType, String preferredGender, String smokingAllowed, String petsAllowed) {        
        this.listingID = listingID;
        this.tenantUsername = tenantUsername;
        this.price = price; 
        this.address = address;
        this.contractTerm = contractTerm; 
        this.houseType = houseType; 
        this.preferredGender = preferredGender; 
        this.smokingAllowed = smokingAllowed; 
        this.petsAllowed = petsAllowed; 
    } 
  
  
    public String insertListing (Connection con) { 
          
        String insertResult = "Listing Creation Failed"; 
        String sql = "INSERT INTO Listing"; 
        sql += "(ListingID, Username, Price, Address, ContractTerm, HouseType, PreferredGender, SmokingAllowed, PetsAllowed) "; 
        sql += " VALUES "; 
        sql += "("+listingID+" , '" +tenantUsername+ "' , "+price+" , '"+address+"' , "+contractTerm+" , '"+houseType+"' , '"+preferredGender+"' , '"+smokingAllowed+"' , '"+petsAllowed+"');"; 
        try { 
            Statement stmt = con.createStatement(); 
            stmt.executeUpdate("USE MIE350"); 
            stmt.executeUpdate(sql); 
            insertResult = "Listing successfully created"; 
        } 
        catch (SQLException ex) { 
            ex.printStackTrace(); 
        } 
          
        return insertResult; 
    } 
      
    public String editPrice (Connection con, int newPrice) { 
          
        String updateResult = "Failed to update price"; 
        String sql = "UPDATE Listing SET Price=" +newPrice+ " WHERE ListingID= " +this.listingID; 
          
        try { 
            Statement stmt = con.createStatement(); 
            stmt.executeUpdate("USE MIE350"); 
            stmt.executeUpdate(sql); 
            this.price = newPrice; 
            updateResult = "Successfully updated price"; 
        } catch (SQLException ex) { 
            ex.printStackTrace(); 
        } 
          
        return updateResult; 
    } 
      
    public String editAddress (Connection con, String newAddress) { 
        String updateResult = "Failed to update address"; 
        String sql = "UPDATE Listing SET Address='" +newAddress+ "' WHERE ListingID= " +this.listingID;
          
        try { 
            Statement stmt = con.createStatement(); 
            stmt.executeUpdate("USE MIE350"); 
            stmt.executeUpdate(sql); 
            this.address = newAddress; 
            updateResult = "Successfully updated address"; 
        } catch (SQLException ex) { 
            ex.printStackTrace(); 
        } 
          
        return updateResult; 
    } 
      
    public String editContractTerm (Connection con, int newContractTerm) { 
        String updateResult = "Failed to update contract term"; 
        String sql = "UPDATE Listing SET ContractTerm=" +newContractTerm+ " WHERE ListingID= " +this.listingID; 
          
        try { 
            Statement stmt = con.createStatement(); 
            stmt.executeUpdate("USE MIE350"); 
            stmt.executeUpdate(sql); 
            this.contractTerm = newContractTerm; 
            updateResult = "Successfully updated contract term"; 
        } catch (SQLException ex) { 
            ex.printStackTrace(); 
        } 
          
        return updateResult; 
    } 
      
    public String editHouseType (Connection con, String newHouseType) { 
        String updateResult = "Failed to update house type"; 
        String sql = "UPDATE Listing SET HouseType='" +newHouseType+ "' WHERE ListingID= " +this.listingID;
          
        try { 
            Statement stmt = con.createStatement(); 
            stmt.executeUpdate("USE MIE350"); 
            stmt.executeUpdate(sql); 
            this.houseType = newHouseType; 
            updateResult = "Successfully updated house type"; 
        } catch (SQLException ex) { 
            ex.printStackTrace(); 
        } 
          
        return updateResult; 
    } 
           
        public String editPreferredGender (Connection con, String newPreferredGender) { 
        String updateResult = "Failed to update preferred gender"; 
        String sql = "UPDATE Listing SET PreferredGender='" +newPreferredGender+ "' WHERE ListingID= " +this.listingID; 
          
        try { 
            Statement stmt = con.createStatement(); 
            stmt.executeUpdate("USE MIE350"); 
            stmt.executeUpdate(sql); 
            this.preferredGender = newPreferredGender; 
            updateResult = "Successfully updated preferred gender"; 
        } catch (SQLException ex) { 
            ex.printStackTrace(); 
        } 
          
        return updateResult; 
    } 
       
        public String editSmokingAllowed (Connection con, String newSmokingAllowed) { 
        String updateResult = "Failed to update if smoking is allowed"; 
        String sql = "UPDATE Listing SET SmokingAllowed='" +newSmokingAllowed+ "' WHERE ListingID= " +this.listingID; 
          
        try { 
            Statement stmt = con.createStatement(); 
            stmt.executeUpdate("USE MIE350"); 
            stmt.executeUpdate(sql); 
            this.smokingAllowed = newSmokingAllowed; 
            updateResult = "Successfully updated if smoking is allowed"; 
        } catch (SQLException ex) { 
            ex.printStackTrace(); 
        } 
          
        return updateResult; 
    } 
          
 public String editPetsAllowed (Connection con, String newPetsAllowed) { 
        String updateResult = "Failed to update if pets are allowed"; 
        String sql = "UPDATE Listing SET PetsAllowed='" +newPetsAllowed+ "' WHERE ListingID= " +this.listingID;
          
        try { 
            Statement stmt = con.createStatement(); 
            stmt.executeUpdate("USE MIE350"); 
            stmt.executeUpdate(sql); 
            this.petsAllowed = newPetsAllowed; 
            updateResult = "Successfully updated if pets are allowed"; 
        } catch (SQLException ex) { 
            ex.printStackTrace(); 
        } 
          
        return updateResult; 
    } 
   
   
    public boolean deleteListing (Connection con) { 
        boolean deleteResult = false; 
        String sql = "DELETE from Listing WHERE ListingID=" +this.listingID; 
          
        try { 
            Statement stmt = con.createStatement(); 
            stmt.executeUpdate("USE MIE350"); 
            stmt.executeUpdate(sql); 
            deleteResult = true; 
        } catch (SQLException ex) { 
            ex.printStackTrace(); 
        } 
          
        return deleteResult; 
    } 
  
    /** 
     * @return the listingID 
     */
    public int getListingID() { 
        return listingID; 
    } 
  
    /** 
     * @return the price 
     */
    public int getPrice() { 
        return price; 
    } 
  
    /** 
     * @return the address 
     */
    public String getAddress() { 
        return address; 
    } 
  
    /** 
     * @return the contractTerm 
     */
    public int getContractTerm() { 
        return contractTerm; 
    } 
  
    /** 
     * @return the houseType 
     */
    public String getHouseType() { 
        return houseType; 
    }
  
    /** 
     * @return the preferredGender 
     */
    public String getPreferredGender() { 
        return preferredGender; 
    } 
  
    /** 
     * @return the smokingAllowed 
     */
    public String isSmokingAllowed() { 
        return smokingAllowed; 
    } 
  
    /** 
     * @return the petsAllowed 
     */
    public String isPetsAllowed() { 
        return petsAllowed; 
    } 
  
    /** 
     * @param listingID the listingID to set 
     */
    public void setListingID(int listingID) { 
        this.listingID = listingID; 
    } 
  
    /** 
     * @param price the price to set 
     */
    public void setPrice(int price) { 
        this.price = price; 
    } 
  
    /** 
     * @param address the address to set 
     */
    public void setAddress(String address) { 
        this.address = address; 
    } 
  
    /** 
     * @param contractTerm the contractTerm to set 
     */
    public void setContractTerm(int contractTerm) { 
        this.contractTerm = contractTerm; 
    } 
  
    /** 
     * @param houseType the houseType to set 
     */
    public void setHouseType(String houseType) { 
        this.houseType = houseType; 
    } 
  
    /** 
     * @param preferredGender the preferredGender to set 
     */
    public void setPreferredGender(String preferredGender) { 
        this.preferredGender = preferredGender; 
    } 
  
    /** 
     * @param smokingAllowed the smokingAllowed to set 
     */
    public void setSmokingAllowed(String smokingAllowed) { 
        this.smokingAllowed = smokingAllowed; 
    } 
  
    /** 
     * @param petsAllowed the petsAllowed to set 
     */
    public void setPetsAllowed(String petsAllowed) { 
        this.petsAllowed = petsAllowed; 
    } 

    /**
     * @return the tenantUsername
     */
    public String getTenantUsername() {
        return tenantUsername;
    }

    /**
     * @param tenantUsername the tenantUsername to set
     */
    public void setTenantUsername(String tenantUsername) {
        this.tenantUsername = tenantUsername;
    }
      
} 