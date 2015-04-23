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
public class Tenant extends Person{
    
    private String phone;
    private String sex;
    private String smoker;
    private String language;
    private String religion;
    
    public Tenant (String userName, String passWord, String firstName, String lastName, String phone, String sex, String smoker, String language, String religion) {
        super(userName, passWord, firstName, lastName);
        this.phone = phone;
        this.sex = sex;
        this.smoker = smoker;
        this.language = language;
        this.religion = religion;
    }
    /**
     * @return the phone
     */
    public String getPhone() {
        return phone;
    }

    /**
     * @param phone the phone to set
     */
    public void setPhone(String phone) {
        this.phone = phone;
    }

    /**
     * @return the sex
     */
    public String getSex() {
        return sex;
    }

    /**
     * @param sex the sex to set
     */
    public void setSex(String sex) {
        this.sex = sex;
    }

    /**
     * @return the smoker
     */
    public String getSmoker() {
        return smoker;
    }

    /**
     * @param smoker the smoker to set
     */
    public void setSmoker(String smoker) {
        this.smoker = smoker;
    }

    /**
     * @return the language
     */
    public String getLanguage() {
        return language;
    }

    /**
     * @param lanaguage the lanaguage to set
     */
    public void setLanguage(String language) {
        this.language = language;
    }

    /**
     * @return the religion
     */
    public String getReligion() {
        return religion;
    }

    /**
     * @param religion the religion to set
     */
    public void setReligion(String religion) {
        this.religion = religion;
    }
    
    public String insertTenant (Connection con) {
        
        String insertResult = "Profile Creation Failed";
        String sql = "INSERT INTO Tenant";
        sql += "(username, phone, sex, smoker, language, religion) ";
        sql += " VALUES ";
        sql += "('"+userName+"' , '"+phone+"'  , '"+sex+"' , '"+smoker+"','"+ language +"' ,'"+religion+"');";
       
        try {
            Statement stmt = con.createStatement();
            stmt.executeUpdate("USE MIE350");
            stmt.executeUpdate(sql);
            insertResult = "Tenant Profile successfully added";
        }
        catch (SQLException ex) {
            ex.printStackTrace();
        }
        
        return insertResult;
    }
    
    public String updateTenant (Connection con, String phone, String sex, String smoker, String language, String religion) {
        
        String updateResult = "Failed to update Tenant Profile";
        String sql = "UPDATE Tenant SET phone='" +phone+ "', sex ='"+sex+"', smoker='" +smoker+ "', language ='"+language+"', religion='"+religion+"' WHERE Username='" +userName+ "'";
        
        try {
            Statement stmt = con.createStatement();
            stmt.executeUpdate("USE MIE350");
            stmt.executeUpdate(sql);
            this.phone = phone;
            this.sex = sex;
            this.smoker = smoker;
            this.language = language;
            this.religion = religion;
            
            updateResult = "Successfully updated Tenant Profile";
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        
        return updateResult;
    }

    
    public boolean deleteTenant (Connection con) {
        boolean deleteResult = false;
        String sql = "DELETE from Tenant WHERE Username='" +userName+ "'";
        
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
        
}
