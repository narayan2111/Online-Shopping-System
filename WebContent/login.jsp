<!DOCTYPE html>
<html>
   <head>
      <link rel="stylesheet" href="css/signup-style.css">
      <title>Login</title>
      <style>
         body
         {
         background-color:white;
         background-image: url('images/slider-bg.jpg');
         }
         #container {
         width: 840px;
         margin: 25px auto;
         margin-top: 50px;
         }
         .whysign {
         float: left;
         background-color: transparent;
         width: 480px;
         height: 528px;
         border-radius: 5px 0 5px 0;
         padding-top: 20px;
         padding-right: 20px;
         }
         .whysignLogin
         {
         float: right;
         background-color: transparent;
         width: 280px;
         height: 347px;
         border-radius: 0 5px 5px 0;
         padding-top: 20px;
         padding-right: 130px;
         }
         .whyforgotPassword
         {
         float: left;
         background-color:transparent;
         width: 480px;
         height: 470px;
         border-radius: 0 5px 5px 0;
         padding-top: 20px;
         padding-right: 20px;
         }
         .signup {
         float: left;
         width: 300px;
         padding: 30px 20px;
         background-color:white;
         text-align: center;
         border-radius: 49px 49px 49px 49px;
         }
         [type=text],[type=email],[type=number],[type=password],select,option {
         display: block;
         margin: 0 auto;
         width: 80%;
         border: 0;
         border-bottom: 1px solid rgba(0,0,0,.2);
         height: 45px;
         line-height: 45px;  
         margin-bottom: 10px;
         font-size: 1em;
         color: black;
         }
         [type=submit] {
         margin-top: 25px;
         width: 80%;
         border: 0;
         background-color: #0080FF;
         border-radius: 5px;
         height: 50px;
         color: white;
         font-weight: 400;
         font-size: 1em;
         }
         [type='text']:focus {
         outline: none;
         border-color: #53CACE;
         }
         h2 {
         color: blue;
         font-weight: 900;
         font-size: 1.5em;
         }
         h1 {
         color: red;
         font-weight: 900;
         font-size: 2.5em;
         }
         p {
         color:rgb(57 39 213);
         font-size: 1.2em;
         margin: 50px 0 50px 0;
         }
         .online
         {
         color:	#800080;
         font-size: 6.2em;
         padding-left:200px;
         }
      </style>
   </head>
   <body>
      <div id='container'>
         <div class='signup'>
            <h2>Login</h2>
            <form action ="loginAction.jsp"method = "post" >
               <input type = "email" name = "email" placeholder = "Enter email" required>
               <input type = "password" name = "password" placeholder = "Enter Password" required>
               <input type = "submit" value = "login">
            </form>
            <h2><a href="signup.jsp">SignUp</a></h2>
            <h2><a href="forgotPassword.jsp">Forgot Password?</a></h2>
         </div>
         <div class='whysignLogin'>
            <%
               String msg = request.getParameter("msg");
               if("notexist".equals(msg))
               {
               %>
            <h1>Incorrect Username or Password</h1>
            <%} %>
            <%
               if("invalid".equals(msg))
               {
               %>
            <h1>Some thing Went Wrong! Try Again !</h1>
            <%}%>
            <h1>Online Shopping</h1>
            <p>The Online Shopping System is the application that allows the users to shop online without going to the shops to buy them.</p>
         </div>
      </div>
   </body>
</html>