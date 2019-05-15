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
        <title>Register View</title>
        
        <%!   
            String firstname;
            String lastname;
            String email;
            String phone;
            Boolean disabled;
            
            %>
        
        <%  
          
            Register viewuser = (Register) session.getAttribute("loggedin");
            %> 
            
            
            <%
                if(viewuser.getEmail() != "error"){
                    disabled = false;
                    firstname = viewuser.getFirstname();
                    lastname  = viewuser.getLastname();
                    email     = viewuser.getEmail();
                    phone     = Integer.toString(viewuser.getPhone());
                } 
                else{
                    disabled = true;
                    firstname = "Please login to view account details";
                    lastname = "";
                    email    = "";
                    phone    = "";
                    
                }
                
                
                %>
    </head>
    <body>
        
        <h2>View Account Details </h2>
        
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