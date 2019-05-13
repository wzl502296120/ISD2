<%-- 
    Document   : footer
    Created on : May 10, 2019, 10:59:11 PM
    Author     : mawgeeokura
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.*" %>
<link href="CSS.css" rel="stylesheet" type="text/css">


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    </head>
    <body>
        <div class="footer">
            <p>  <% 
            Model.Register users = (Model.Register) session.getAttribute("loggedin");
            
            %>
            
           <% if (users != null) {%>
               
               You are logged in as 
               <%= users.getEmail()%>
               
               
               
            <%}%> </p>
        </div>
    </body>
</html>
