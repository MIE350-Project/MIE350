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
 * @author John
 */
public class Person {
    protected String userName;
    protected String passWord;
    protected String firstName;
    protected String lastName;
    
    
    //Constructor
    public Person(String userName, String passWord, String firstName, String lastName) {   
        this.userName = userName;
        this.passWord = passWord;
        this.firstName = firstName;
        this.lastName = lastName;
    }

    /**
     * @return the firstName
     */
    public String getFirstName() {
        return firstName;
    }

    /**
     * @return the lastName
     */
    public String getLastName() {
        return lastName;
    }

    /**
     * @return the userName
     */
    public String getUserName() {
        return userName;
    }

    /**
     * @return the passWord
     */
    public String getPassWord() {
        return passWord;
    }

    /**
     * @param firstName the firstName to set
     */
    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    /**
     * @param lastName the lastName to set
     */
    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    /**
     * @param userName the userName to set
     */
    public void setUserName(String userName) {
        this.userName = userName;
    }

    /**
     * @param passWord the passWord to set
     */
    public void setPassWord(String passWord) {
        this.passWord = passWord;
    }

    
    public String insertPerson (Connection con) {
        
        String insertResult = "Account Creation Failed";
        String sql = "INSERT INTO Person";
        sql += "(Username, Password, FirstName, LastName) ";
        sql += " VALUES ";
        sql += "('"+userName+"' , '"+passWord+"'  , '"+firstName+"' , '"+lastName+"');";
       
        try {
            Statement stmt = con.createStatement();
            stmt.executeUpdate("USE MIE350");
            stmt.executeUpdate(sql);
            insertResult = "Account successfully created";
        }
        catch (SQLException ex) {
            ex.printStackTrace();
        }
        
        return insertResult;
    }
    
    public String editPassword (Connection con, String newPass) {
        
        String updateResult = "Failed to update password";
        String sql = "UPDATE Person SET Password='" +newPass+ "' WHERE Username='" +this.userName+ "'";
        
        try {
            Statement stmt = con.createStatement();
            stmt.executeUpdate("USE MIE350");
            stmt.executeUpdate(sql);
            this.passWord = newPass;
            updateResult = "Successfully updated password";
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        
        return updateResult;
    }
    
    public String editFirstName (Connection con, String newFirstName) {
        String updateResult = "Failed to update first name";
        String sql = "UPDATE Person SET FirstName='" +newFirstName+ "' WHERE Username='" +this.userName+ "'";
        
        try {
            Statement stmt = con.createStatement();
            stmt.executeUpdate("USE MIE350");
            stmt.executeUpdate(sql);
            this.firstName = newFirstName;
            updateResult = "Successfully updated first name";
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        
        return updateResult;
    }
    
    public String editLastName (Connection con, String newLastName) {
        String updateResult = "Failed to update last name";
        String sql = "UPDATE Person SET LastName='" +newLastName+ "' WHERE Username='" +this.userName+ "'";
        
        try {
            Statement stmt = con.createStatement();
            stmt.executeUpdate("USE MIE350");
            stmt.executeUpdate(sql);
            this.lastName = newLastName;
            updateResult = "Successfully updated last name";
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        
        return updateResult;
    }
    
    public boolean deletePerson (Connection con) {
        boolean deleteResult = false;
        String sql3 = "DELETE from Favourites WHERE Username='" +this.userName + "'";
        String sql2 = "DELETE from Listing WHERE Username='" +this.userName + "'";
        String sql1 = "DELETE from Tenant WHERE Username='" +this.userName+"'";
        String sql = "DELETE from Person WHERE Username='" +this.userName+ "'";
        
        try {
            Statement stmt = con.createStatement();
            stmt.executeUpdate("USE MIE350");
            
            //delete existing Favourites, if any
            ResultSet rs = stmt.executeQuery("SELECT * FROM Favourites WHERE Username='" +this.userName + "'");
            if (rs.next()) {
                stmt.executeUpdate(sql3);
            }
            
            //delete existing Listing, if any
            rs = stmt.executeQuery("SELECT * FROM Listing WHERE Username='" +this.userName + "'");
            if (rs.next()) {
                stmt.executeUpdate(sql2);
            }
            
            //delete existing Tenant profile, if any
            rs = stmt.executeQuery("SELECT * FROM Tenant WHERE Username ='" + this.userName +"'");
            if (rs.next()) {
                stmt.executeUpdate(sql1);
            }
            
            stmt.executeUpdate(sql);
            deleteResult = true;
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        
        return deleteResult;
    }

}
