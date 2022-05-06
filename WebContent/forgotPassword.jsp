<!DOCTYPE html>
<html>
   <head>
      <link rel="stylesheet" href="css/signup-style.css">
      <title>ForgotPassword</title>
      <style>
         body
         {
         background-image: url('images/arrival-bg.png');
         background-repeat:no-repeat;
         font-family: 'Montserrat', sans-serif;
         color: #0c0c0c;
         background-color: #ffffff;
         overflow-x: hidden;
         }
         #container {
         width: 40px;
         margin: 10px auto;
         margin-top: 50px;
         }
         .whyforgotPassword
         {
         float: left;
         background-color:transparent;
         width: 480px;
         height: 270px;
         border-radius: 0 5px 5px 0;
         padding-top: 10px;
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
         font-family: 'Playfair Display', serif;
         }
         p {
         color:black;
         font-size: 1.1em;
         margin: 20px 0 50px 0;
         }
      </style>
   </head>
   <body>
      <div id='container'>
         <div class='signup'>
            <h2>Forgot Password</h2>
            <form action = "forgotPasswordAction.jsp" method = "post">
               <input type = "email" name = "email" placeholder = "Enter email" required>
               <input type = "number" name = "mobilenumber" placeholder = "Enter Mobile Number" required>
               <select name = "securityQuestion">
                  <option value = "What was your first car?">What was your first car?</option>
                  <option value = "What was the name of your first pet?">What was the name of your first pet?</option>
               </select>
               <input type = "text" name = "answer" placeholder = "Enter Answer" required>
               <input type = "password" name = "newPassword" placeholder = "Enter New Password" required>
               <input type = "submit" value = "Save">
            </form>
            <h2><a href="login.jsp">Login</a></h2>
         </div>
         <div class='whyforgotPassword'>
            <%
               String msg = request.getParameter("msg");
               if("done".equals(msg))
               {
               %>
            <h1>Password Changed Successfully!</h1>
            <%} %>
            <%
               if("invalid".equals(msg))
               {
               %>
            <h1>Some thing Went Wrong! Try Again !</h1>
            <%} %>
            <h2>Online Shopping</h2>
            <p>The Online Shopping System is the application that allows the users to shop online without going to the shops to buy them.</p>
         </div>
      </div>
   </body>
</html>