<%@page import = "project.ConnectionProvider" %>
<%@page import = "java.sql.*"%>
<%@page import = "java.sql.Connection"%>
<%@page import = "java.sql.DatabaseMetaData"%>
<%@page import = "java.sql.DriverManager"%>
<%@page import = "java.sql.ResultSet"%>
<%@page import =  "java.sql.SQLException" %>
<%
   String name = request.getParameter("name");
   String email = request.getParameter("email");
   String mobilenumber = request.getParameter("mobilenumber");
   String securityQuestion = request.getParameter("securityQuestion");
   String answer = request.getParameter("answer");
   String password = request.getParameter("password");
   String address = "";
   String city = "";
   String state = "";
   String country = "";
   try
   {
   	Connection con = ConnectionProvider.getCon();
   	PreparedStatement ps = con.prepareStatement("Insert into users values(?,?,?,?,?,?,?,?,?,?)");
   	ps.setString(1,name);
   	ps.setString(2,email);
   	ps.setString(3,mobilenumber);
   	ps.setString(4,securityQuestion);
   	ps.setString(5,answer);
   	ps.setString(6,password);
   	ps.setString(7,address);
   	ps.setString(8,city);
   	ps.setString(9,state);
   	ps.setString(10,country);
   	ps.executeUpdate();
   	response.sendRedirect("signup.jsp?msg=valid");
   }
   catch(Exception e)
   {
   	System.out.println(e);
   	response.sendRedirect("signup.jsp?msg=invalid");
   }
   %>