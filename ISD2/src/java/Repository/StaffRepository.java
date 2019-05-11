/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Repository;

import Model.Staff;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author clint
 */
public class StaffRepository {

    private Statement statementObj = null;
    private ResultSet resObj = null;
   
    public ArrayList<Staff> getAllStaff() {
        
        String staff_query = "Select * FROM Staff";
        ArrayList<Staff> allStaff = new ArrayList<>();
        try {
            Connection connObj = DataBase.getDBConnection();
            statementObj = connObj.createStatement();
            resObj = statementObj.executeQuery(staff_query);
            while (resObj.next()) {
                Staff staff = new Staff();
                staff.setId(resObj.getLong("id"));
                staff.setFirstName(resObj.getString("firstName")); 
                staff.setLastName(resObj.getString("lastName"));
                staff.setPassword(resObj.getString("password"));
                staff.setEmail(resObj.getString("email"));
                staff.setPhone(resObj.getString("phone"));
                staff.setCreateDate(resObj.getString("createDate"));
                staff.setRoleId(resObj.getInt("roleId"));
                allStaff.add(staff);
                System.out.println("Found: "+staff.toString());
            }
            return allStaff;
        } catch (SQLException ex) {
            System.out.print(ex.getCause());
        }
        return null;
    }   
    
}
