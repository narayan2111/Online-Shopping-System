<%@page import = "project.ConnectionProvider" %>
<%@page import = "java.sql.*"%>
<%@page import = "java.sql.Connection"%>
<%@page import = "java.sql.DatabaseMetaData"%>
<%@page import = "java.sql.DriverManager"%>
<%@page import = "java.sql.ResultSet"%>
<%@page import =  "java.sql.SQLException" %>
<%
   String id=request.getParameter("id");
   String email=request.getParameter("email");
   String status="Cancel";
   
   try
   {
   	Connection con =ConnectionProvider.getCon();
   	Statement st =con.createStatement();
   	st.executeUpdate("update cart set status ='"+status+"' where product_id='"+id+"' and email='"+email+"' and address is not NULL");
   	response.sendRedirect("ordersReceived.jsp?msg=cancel");
   }
   catch(Exception e)
   {
   	System.out.println(e);
   	response.sendRedirect("ordersReceived.jsp?msg=wrong");
   }
   %>