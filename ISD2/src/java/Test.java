
import Model.Staff;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author clint
 */
public class Test {
    
    public static void main(String[] args) {
        
        System.out.println("Starting Test");
        testGetStaff();
    }
    
    public static void testGetStaff() {
        
        final String URL = "jdbc:mysql://localhost:3306/OMOA_DB";
        final String USERNAME = "root";
        final String PASSWORD = "Qwrfy*3/";
        String staff_query = "Select * FROM Staff";
        final String DRIVER = "org.apache.mysql.jdbc.ClientDriver";
//        DBConnector connector = new DBConnector();
        Connection connObj;
        Statement statementObj;
        ResultSet resObj;
        Staff staff;

        try {
//            Class.forName(DRIVER);
            connObj = DriverManager.getConnection(URL, USERNAME, PASSWORD);
            statementObj = connObj.createStatement();
            resObj = statementObj.executeQuery(staff_query);
            while (resObj.next()) {
                staff = new Staff();
                staff.setId(resObj.getLong("id"));
                staff.setFirstName(resObj.getString("firstName")); 
                staff.setLastName(resObj.getString("lastName"));
                staff.setPassword(resObj.getString("password"));
                staff.setEmail(resObj.getString("email"));
                staff.setPhone(resObj.getString("phone"));
                staff.setCreateDate(resObj.getString("createDate"));
                staff.setRoleId(resObj.getInt("roleId"));
//                allStaff.add(staff);
                System.out.println("Found: "+staff.toString());
            }
        } catch (SQLException ex) {
            System.out.println("Error Connecting to Database");
//        } catch (ClassNotFoundException e) {
//                System.out.println("Error Connecting to Database - ClassNotFound\n");
            }
        }
}
