/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Repository;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author clint
 */
public class DataBase {
    private static final String URL = "jdbc:mysql://localhost:3306/OMOA_DB?zeroDateTimeBehavior=convertToNull";
    private static final String USERNAME = "root";
    private static final String PASSWORD = "Qwrfy*3/";
    private static final String DRIVER = "org.apache.mysql.jdbc.ClientDriver";
    
    private static Connection connObj = null;
    
    public static Connection getDBConnection() {
        if (connObj == null) {
            try {
                Class.forName(DRIVER);
                connObj = DriverManager.getConnection(URL, USERNAME, PASSWORD);
            } catch (SQLException ex) {
                ex.printStackTrace();
                System.out.println("Error Connecting to Database\n"+ex.getMessage());
            } catch (ClassNotFoundException e) {
                System.out.println("Error Connecting to Database - ClassNotFound\n" + e.getException());
            }
        }
        return connObj;
    }  
}
