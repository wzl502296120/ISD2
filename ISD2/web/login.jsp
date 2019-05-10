<%-- 
    Document   : index
    Created on : 08/04/2019, 10:44:21 AM
    Author     : Mawgee.Okura
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>login page</title>
       <link href="CSS.css" rel="stylesheet" type="text/css">
    </head>

    <body bgcolor = "gray">
        <div>
            <div class="cardBox">
                <div class="headerBox" style="background-color: black;">
                    <p>
                       User Login
                    </p>
                </div>
                    <form action="index.jsp" method="POST">
                    
                <div class="bodyBox">
                    <p>UserName:<input type="text" name="username"></p>
                    <p>Password:<input type="password" name="password"></p>
                    <p> <input type="submit" value="Login">  <a href="register.jsp"><input type="button" value="Sign Up"></a>
                    </p>
                </div>
                        
                    </form> 
            </div>

        </div>


    </body>

</html>
