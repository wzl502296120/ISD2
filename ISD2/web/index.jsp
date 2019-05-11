<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@page import="Controller.Controller, java.util.ArrayList, Model.Staff, DAO.OmoaDao"  %>

<%-- 
    Document   : index
    Created on : 08/04/2019, 10:44:21 AM
    Author     : Mawgee Okura 
--%>
<link href="CSS.css" rel="stylesheet" type="text/css">
<%@include file="header.jsp"%>


<sql:query var="staff" dataSource="jdbc/omoa">
    SELECT * FROM Staff
</sql:query>
    
<table border="1">
    <!-- column headers -->
    <tr>
    <c:forEach var="columnName" items="${staff.columnNames}">
        <th><c:out value="${columnName}"/></th>
    </c:forEach>
</tr>
<!-- column data -->
<c:forEach var="row" items="${staff.rowsByIndex}">
    <tr>
    <c:forEach var="column" items="${row}">
        <td><c:out value="${column}"/></td>
    </c:forEach>
    </tr>
</c:forEach>
</table>
    
<%  
//    Controller controller = new Controller();
//    Staff staff = new Staff(1,"Clint","Sellen","pass","me@you.co","0487654321","2019-04-10",1);
//    ArrayList<Staff> allStaff = new ArrayList<>();
//    ArrayList<Staff> allStaff = controller.getAllStaff();
    
        final String URL = "jdbc:mysql://localhost:3306/OMOA_DB";
        final String USERNAME = "root";
        final String PASSWORD = "Qwrfy*3/";
        String staff_query = "Select * FROM Staff";
        Connection connObj = null;
        Statement statementObj = null;
        ResultSet resObj = null;

        try {
            connObj = DriverManager.getConnection(URL, USERNAME, PASSWORD);
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
//                allStaff.add(staff);
                System.out.println("\n\nFound: "+staff.toString());
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
            System.out.println("Error Connecting to Database");
        }
%>

<%--<jsp:useBean id="controller" class="Controller" scope="page" />
<jsp:getProperty name="staffs" property="allStaff"/>--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome to OSMOA System</title>
    </head>
    <body>
      

        

          <h1> Welcome to Online Movie Ordering Application (OMOA) System</h1>
       
          <br> 
          <h2>About the system </h2>
          <p> Enjoy the ability to order the latest movies.  </p>
          
          <h2> <u> Current Available Movies </u> </h2>
        
        <table>
            
            <tr>
                <th> Movie Title </th>
                <th> Description </th>
                <th> Price </th>
                <th> Select </th> 
            </tr>
            
            <tr>
                <th> Avengers End Game </th>
                <th> The Final Battle </th>
                <th> $200.00 </th> 
                <th> <button> Select </button> </th>
                
                
            </tr>
            
            
            <tr>
                <th> <a href=""> More Movies </a> </th>
                
            </tr>
            
        </table>     
        
          <!--<h1>{$staff.firstName} {$staff.getLastName}</h1>-->
        
    </body>
</html>
