<%@page isErrorPage="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
   <style>
      body
      {
      background-color:#011d1e;
      background-image: url('images/image1.png');
      background-attachment: fixed;
      }
      h1
      {
      color: white;
      text-align: center;
      }
      .btn {
      display: inline-block;
      background: #ff523b;
      color: white;
      padding: 10px 50px;
      margin: 0px 800px;
      border-radius: 30px;
      transition: background 0.5s;
      font-size:25px;
      }
      .btn:hover
      {
      background: #563434;
      }
   </style>
   <head>
      <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
      <title>Error</title>
   </head>
   <body>
      <h1>Some thing went Wrong!</h1>
      <h1>So go for login! Try again!</h1>
      <br><br><br><br>
      <a href="login.jsp" class="btn">LogIn </a>
   </body>
</html>