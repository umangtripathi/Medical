<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h4>Last Action Status : ${requestScope.status}</h4>
	<h3>User List</h3>
	<table style="background-color: cyan; margin: auto;">
		<c:forEach var="u" items="${requestScope.User_list}">

			<tr>
				<td>${u.loginName}</td>
				<td>${u.password}</td>
				<td>${u.fname}</td>
				<td>${u.lname}</td>
				<td>${u.logintype}</td>
				<td>${u.contactno}</td>
				<td>${u.regdate}</td>
				<td><a href="<spring:url value='/admin/update?vid=${u.id}'/>">Update</a></td>
				<td><a href="<spring:url value='/admin/delete?vid=${u.id}'/>">Delete</a></td>

			</tr>
		</c:forEach>
	</table>
	<h5>
		<a href="<spring:url value='/admin/add'/>">Add New Vendor</a>
	</h5>
</body>
</html>