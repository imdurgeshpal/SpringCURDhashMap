<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.util.*"%>
<%@page import="model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>    
  <center>

        <h1>Edit User</h1>  
       <form method="post" action="${pageContext.request.contextPath}/saveUpdate" ModelAttribute="update">    
        <table >   
        <%
						

							User user = (User) request.getAttribute("values");
					%> 
         <tr>
						<td><label>ID :</label></td>
						<td><input type="text" name="id" readonly="readonly" value="<%=user.getId()%>"></td>
					</tr>
         <tr>    
          <td>Name : </td>   
          <td><input type="text" name="name"  value="<%=user.getName()%>"/></td>  
         </tr>    
         <tr>    
          <td>Salary :</td>    
          <td><input type="text" name="salary"  value="<%=user.getSalary()%>" /></td>  
         </tr>   
         <tr>    
          <td>Designation :</td>    
          <td><input type="text" name="designation" value="<%=user.getDesignation()%>"/></td>  
         </tr>   
         <tr>    
          <td> </td>    
          <td><input type="submit" value="Save" /></td>    
         </tr>    
        </table>    
       </form>  
<a href="${pageContext.request.contextPath}/viewUser">View User</a>
<a href="${pageContext.request.contextPath}/showJSON">Show Data in JSON</a>
</center>  