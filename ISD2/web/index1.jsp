<%-- 
    Document   : index1
    Created on : 13/05/2019, 1:46:19 PM
    Author     : Max.Okura
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="oms.model.*" %>
<link href="CSS.css" rel="stylesheet" type="text/css">
<!DOCTYPE html>
   <% String firstname;
    if(request.getParameter("firstname") == null){
        firstname = "error";}
    else{
        firstname = request.getParameter("firstname");
    }%>
    
     <% String lastname;
    if(request.getParameter("lastname") == null){
        lastname = "error";}
    else{
        lastname = request.getParameter("firstname");
    }%>
    
    <% String email;
    if(request.getParameter("email") == null){
        email = "error";}
    else{
        email = request.getParameter("email");
    }%>
     <% String password;
    if(request.getParameter("password") == null){
        password = "error";}
    else{
        password = request.getParameter("password");
    }%>
   
    <%! int phone = 123; %>
   
        
<%
            oms.model.Register loggedin = new oms.model.Register(firstname,lastname,email,password,phone);
            session.setAttribute("loggedin", loggedin);
            
            
            %>
            
<jsp:include page="header.jsp" />
<jsp:include page="footer.jsp" />
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

