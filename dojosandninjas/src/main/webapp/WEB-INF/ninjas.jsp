<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
			<div style="width: 600px; margin:20% auto;">
			<a href="/dojos/new">Back to Dashboard</a>
			
			<h1 style=" text-align: center; font-size: 2.5em;"><c:out value="${dojos.location}" /> Location Ninjas</h1> 
			<div style="margin: 0 auto;">
			<table style=" text-align: center; width: 100%; border: 1px solid; border-collapse: collapse;">
				<thead style="width: 100%;">
					<tr style="border-bottom: 1px solid black;">
						<th style="width: 33%"><h2>First Name</h2></th>
						<th style="width: 33%"><h2>Last Name</h2></th>
						<th style="width: 33%"><h2>Age</h2></th>
					</tr>
				<tbody>
					<c:forEach var="ninja" items="${ninjas}">
						<tr style="border-bottom: 1px solid black;">
							<td><h3><c:out value="${ninja.firstName}" /></h3></td>
							<td><h3><c:out value="${ninja.lastName}" /></h3></td>
							<td><h3><c:out value="${ninja.age}" /></h3></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			</div>
			</div>
</body>
</html>