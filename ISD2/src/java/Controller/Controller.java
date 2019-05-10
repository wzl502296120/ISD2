/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.OmoaDao;
import Model.Staff;
import java.util.ArrayList;

/**
 *
 * @author Max.Okura
 */
public class Controller {
    
    private OmoaDao omoaDao;

    public Controller() {
//        omoaDao = new omoaDao();
    }
    
    public ArrayList<Staff> getAllStaff() {
        System.out.println("Inside Controller ->"+omoaDao);
//        return null;
        return omoaDao.getAllStaff();
    }
    
}
