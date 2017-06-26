<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
  <%@page import="java.util.*"%>
<%@page import="model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
  <html>
  <body>
  <center>
<table border="2" width="70%" cellpadding="2">  
<tr><th>ID</th><th>Name</th><th>Salary</th><th>Designation</th></tr>   
   
	<%
					if (request.getAttribute("Data") != null) {

						HashMap<Integer, User> hashMap = (HashMap<Integer, User>) request.getAttribute("Data");
						for (HashMap.Entry<Integer, User> entrySet : hashMap.entrySet()) {

							User user = entrySet.getValue();
					
%>
				 <tr> 
				 <td><%=user.getId()%></td>
				<td><%=user.getName()%></td>
				<td><%=user.getSalary()%></td>
				<td><%=user.getDesignation()%></td>
				<td><form action="update/<%=user.getId()%>"
						method="get">
						<input type="submit" value="Update">
					</form></td>

				<td><form action="delete/<%=user.getId()%>"
						method="get">
						<input type="submit" value="Delete">
					</form></td>

   </tr>  
   <%
				}

				}
			%>
   </table><br>
   <center><a href="addUser">Add Employee</a> </center>
    <center><a href="showJSON">Show Data in JSON</a> </center>
   </center>
   </body>  
 </html>