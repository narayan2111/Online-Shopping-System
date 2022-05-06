<%@page import = "project.ConnectionProvider" %>
<%@page import = "java.sql.*"%>
<%@page import = "java.sql.Connection"%>
<%@page import = "java.sql.DatabaseMetaData"%>
<%@page import = "java.sql.DriverManager"%>
<%@page import = "java.sql.ResultSet"%>
<%@page import =  "java.sql.SQLException" %>
<%
   String email = session.getAttribute("email").toString();
   String status = "processing";
   try
   {
   	Connection con = ConnectionProvider.getCon();
   	PreparedStatement ps = con.prepareStatement("update cart set status = ? where email = ? and status = 'bill'");
   	ps.setString(1,status);
   	ps.setString(2,email);
   	ps.executeUpdate();
   	response.sendRedirect("home.jsp");
   	
   }
   catch(Exception e)
   {
   	System.out.println(e);
   }
   %>