<%@page import = "project.ConnectionProvider" %>
<%@page import = "java.sql.*"%>
<%@page import = "java.sql.Connection"%>
<%@page import = "java.sql.DatabaseMetaData"%>
<%@page import = "java.sql.DriverManager"%>
<%@page import = "java.sql.ResultSet"%>
<%@page import =  "java.sql.SQLException" %>
<%
   String email = session.getAttribute("email").toString();
   String product_id = request.getParameter("id");
   try{
   	
   	Connection con = ConnectionProvider.getCon();
   	Statement st = con.createStatement();
   	st.executeUpdate("delete from cart where email = '"+email+"'and product_id='"+product_id+"'and address is NULL"   );
   	response.sendRedirect("myCart.jsp?msg =remove");
   }
   catch(Exception e)
   {
   	System.out.println(e);
   }
   %>