<%-- 
    Document   : index
    Created on : 08/04/2019, 10:44:21 AM
    Author     : Mawgee Okura 
--%>

<link href="CSS.css" rel="stylesheet" type="text/css">
<%@include file="header.jsp"%>
<%@include file="footer.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

    <% String firstname = request.getParameter("firstname"); %>
    <% String lastname = request.getParameter("lastname"); %>
    <% String email = request.getParameter("email"); %>
    <% String password = request.getParameter("password"); %>
    <% int phone = Integer.parseInt(request.getParameter("phonenumber")); %>


     


     <%
            Model.Register loggedin = new Model.Register(firstname,lastname,email,password,phone);
            session.setAttribute("loggedin", loggedin);
            
            
            %>
            
            

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
        
        
    </body>
</html>
