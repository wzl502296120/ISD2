<%-- 
    Document   : registerview
    Created on : 14/05/2019, 9:55:54 AM
    Author     : Mawgee.Okura
--%>
<link href="../CSS.css" rel="stylesheet" type="text/css">
<%@include file="../header.jsp"%>
<%@include file="../footer.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Updated register details </title>
        
         <%  
          
            Register viewuser = (Register) session.getAttribute("loggedin");
            
            %>     
     <%!
        String firstname;
        String lastname;
        String email;
        String password;
         %>
            
     <% 
    if(request.getParameter("firstname") == null){
        firstname = viewuser.getFirstname();}
    else{
        viewuser.setFirstname(request.getParameter("firstname"));
    }%>
    
     <% 
    if(request.getParameter("lastname") == null){
        lastname = viewuser.getLastname();}
    else{ 
        viewuser.setLastname(request.getParameter("lastname"));
    }%>
    
    <% 
    if(request.getParameter("email") == null){
        email = viewuser.getEmail();}
    else{
        viewuser.setEmail(request.getParameter("email"));
    }%>
    
    
     <%
    if(request.getParameter("password") == null){
        password = viewuser.getPassword();}
    else{
       viewuser.setPassword(request.getParameter("password"));
    }%>
            
   
            
    <% int phone = 123;%> 
    </head>
    <body>
        <h1> You have successfully updated account details</h1> </br> 
        <h2> New account details </h2> 
       
        
        <div class="container">
            
            <label> First Name: </label> <%= firstname %> </br>
            <label> Last Name: </label> <%= lastname %> </br>
            <label> Email: </label> <%= email %> </br>
            <label> Phone: </label> <%= phone %>  </br>
            
            
            </br>
         
        <!--    <input type="button" <c:if test="${!disabled}"><c:out value="disabled='disabled'"/></c:if>">
            
            <c:choose>
                    <c:when test="${!disabled}">
                            <button  value="SendEmail" disabled="disabled" > </button>
                    </c:when>
            <c:otherwise>
                    <input type="submit" value="SendEmail"  >
              </c:otherwise>
</c:choose> --> 
        </div> 
    </body>
</html>
