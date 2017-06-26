<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add User</title>
<style>
    .error {
        color: red; font-weight: bold;
    }
</style>
</head>
<body>
    <div align="center">
        <h2>Add User Form</h2>
        <table border="0" width="90%">
        <form:form method ="post" action="save" ModelAttribute="use" >
                <tr>
                    <td align="left" width="20%">Id: </td>
                    <td align="left" width="40%"><form:input path="id"/></td>
                    <td align="left"><form:errors path="id" cssClass="error"/></td>
                </tr>
                <tr>
                    <td>Name: </td>
                    <td><form:input path="name" /></td>
                    <td><form:errors path="name" cssClass="error"/></td>
                </tr>
                 <tr>
                    <td>Salary: </td>
                    <td><form:input path="salary" /></td>
                    <td><form:errors path="salary" cssClass="error"/></td>
                </tr>
                 <tr>
                    <td>Designation: </td>
                    <td><form:input path="designation" size="30"/></td>
                    <td><form:errors path="designation" cssClass="error"/></td>
                </tr>
                <tr>
                    <td></td>
                    <td align="center"><input type="submit" value="Submit"/></td>
                    <td></td>
                </tr>
        </form:form>
        </table>
    </div>
</body>
</html>