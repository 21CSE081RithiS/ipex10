<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
 <!doctype html>
<html>
   <head>
      <title>SELECT Operation</title>
   </head>

   <body>
       
       <%
           try{  
 
        Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/bank");  
        Statement stmt=con.createStatement();  
        ResultSet rs=stmt.executeQuery("select *from bank");
     
%>
<table border="2">
    <tr> <th> Customer name </th> <th> Cust_id </th>  <th> Current_bal </th> <th> Debit</th> <th> Credit</th></tr>
<%
            while(rs.next()){

            out.println("<tr><td>"+rs.getString(1)+"</td>");
            out.println("<td>"+rs.getInt(2)+"</td>");
            out.println("<td>"+rs.getInt(6)+"</td>");
            out.println("<td>"+rs.getInt(7)+"</td>");
            out.println("<td>"+rs.getInt(3)+"</td></tr>");
      con.close();  
 }
}
catch(Exception e)
{
    System.out.println(e);}  
  %>
</table>
   </body>
</html>
