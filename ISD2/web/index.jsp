<%-- 
    Document   : index
    Created on : 08/04/2019, 10:44:21 AM
    Author     : Max.Okura
--%>
<link href="CSS.css" rel="stylesheet" type="text/css">

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome to OSMOA System</title>
    </head>
    <body>
      
    <ul>
  <li><a class="active" href="#home">Home</a></li>
  <li><a href="#news">Browse/Search Movies</a></li>
  <li><a href="#contact">Checkout and Pay</a></li>
  <li><a href="#about">Track Orders</a></li>
    <div class="dropdown">
    <button class="dropbtn"> Account Management <i class="fa fa-caret-down"></i> </button>
    <div class="dropdown-content">
      <a href="#">Add/Update Payment Details</a>
      <a href="#">Add/Update Account details</a>
 
    </div>
  </div> 
    <li><a href="#about">Help</a></li>
    <li id="login"> <a href="login"> Login/Logout </a> <li>
</ul>
        

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
