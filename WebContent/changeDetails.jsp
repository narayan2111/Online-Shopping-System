<%@page import = "project.ConnectionProvider" %>
<%@page import = "java.sql.*"%>
<%@page import = "java.sql.Connection"%>
<%@page import = "java.sql.DatabaseMetaData"%>
<%@page import = "java.sql.DriverManager"%>
<%@page import = "java.sql.ResultSet"%>
<%@page import =  "java.sql.SQLException" %>
<%@include file = "changeDetailsHeader.jsp"%>
<%@include file = "footer.jsp"%>
<html>
   <head>
      <link rel="stylesheet" href="css/changeDetails.css">
      <title>Change Details</title>
      <style>
         hr
         {width:70%;}
         body
         {
         background-image: url('images/arrival-bg.png');
         background-repeat:no-repeat;
         font-family: 'Montserrat', sans-serif;
         color: #0c0c0c;
         background-color: #ffffff;
         overflow-x: hidden;
         }
         h3
         {
         color: black;
         font-weight: 700;
         font-size: 1.2em;
         }
      </style>
   </head>
   <body>
      <%
         try
         {
         	Connection con = ConnectionProvider.getCon();
         	Statement st = con.createStatement();
         	ResultSet rs = st.executeQuery("select *from users where email = '"+email+"'   ");
         	while(rs.next())
         	{
         	
         
         
         %>
      <h3>Name:  <%=rs.getString(1) %> </h3>
      <hr>
      <h3>Email:  <%=rs.getString(2) %>  </h3>
      <hr>
      <h3>Mobile Number: <%=rs.getString(3) %>  </h3>
      <hr>
      <h3>Security Question: <%=rs.getString(4) %>  </h3>
      <hr>
      <br>
      <br>
      <br>
      <%}} 
         catch(Exception e)
         {
         	System.out.println(e);
         }
         %>
   </body>
</html>