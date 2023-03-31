<%-- 
    Document   : newjsp.j
    Created on : Mar 30, 2023, 8:13:43 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "https://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Home Page</title>
</head><!-- comment -->
</html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="ex10pack.product"%>

<%@page import="java.util.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       
       
    </head>
    <body>
        <%
            out.println("hello");
            Emp st=new Emp("AAA","Engineering",80000,21-04-2018);
            Emp st1=new Emp("BBB","HR",150000,2-2-2023);
            Emp st2=new Emp("DDD","Marketing",90000,8-2-2022);
            Emp st3=new Emp("XXX","Planning",120000,5-4-2021);
            Emp st4=new Emp("YYY","Admin",110000,7-30-2015);
            
            
            ArrayList <Emp> obj=new ArrayList<Emp>();
            obj.add(st);
            obj.add(st1);
            obj.add(st2);
            obj.add(st3);
            obj.add(st4);
// for(student a:obj){
// out.println(a.name);
// }

pageContext.setAttribute("obj", obj);
        %>
    <style>
        h2{
    color: navy;
  text-shadow: 2px 2px red;
  text-align: center;
  
}
</style>
        <h2> EMPLOYEE DETAILS </h2>
        <table border="2px" style="color: aqua"><tr><th>Name</th><th>Depatment</th><th>salary</th><th>Date </th> </tr>
        <c:forEach items="${pageScope.obj}" var="i">
                <tr> <td>${i.getName()}</td>
                    <td>${i.getDepartment()}</td>
                <c:choose>
    <c:when test="${i.salary>'100000'}">
                <td style="color: blue">${i.getsalary()}</td>
        <br />
    </c:when>    
    <c:otherwise>
       <td>${i.getsalary()}</td>
        <br />
    </c:otherwise>
</c:choose>
        <td>${i.getDate()}</td>

                
        </c:forEach>  
        </table>
      
    </body>



</html>

