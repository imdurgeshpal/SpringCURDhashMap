<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
  <center>

        <h1>Add New User</h1>  
       <form:form method="post" action="save" ModelAttribute="use">    
        <table >    
         <tr>    
          <td>ID : </td>   
          <td><form:input path="id"  /></td>  
          <td><form:errors path="id" cssClass="error"/></td>
         </tr>
         <tr>    
          <td>Name : </td>   
          <td><form:input path="name"  /></td>  
          <td><form:errors path="name" cssClass="error"/></td>
         </tr>    
         <tr>    
          <td>Salary :</td>    
          <td><form:input path="salary" /></td> 
          <td><form:errors path="salary" cssClass="error"/></td> 
         </tr>   
         <tr>    
          <td>Designation :</td>    
          <td><form:input path="designation" /></td>  
          <td><form:errors path="designation" cssClass="error"/></td>
         </tr>   
         <tr>    
          <td> </td>    
          <td><input type="submit" value="Save" /></td>    
         </tr>    
        </table>    
       </form:form>  
<a href="viewUser">View User</a>
<a href="showJSON">Show Data in JSON</a>

</center>  