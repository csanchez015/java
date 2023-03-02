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
			<div style="width: 400px; height: 500px;margin: 20% auto; border: 1px solid black;">
			<a href="/dojos/new">Back to Dashboard</a>
			<h1 style=" text-align: center; font-size: 2.5em;">New Ninja</h1>
			<form:form action="/ninjas/new" method="POST" modelAttribute="ninja" >
			<form:errors path="firstName"/>
			<form:errors path="lastName"/>
			<form:errors path="age"/>
			<table>
				<thead>
					<tr>
						<th style="width: 170px;"></th>
						<th></th>
					</tr>
				<tbody>
					<tr>
						<td><h2>Dojo: </h2></td>
						<td>
							<form:select path="dojo">
								<c:forEach var="dojo" items="${dojos}">
									<form:option value="${dojo.id}">${dojo.location}</form:option>
								</c:forEach>
							</form:select>
						</td>
					</tr>
					<tr>
						<td><h2>First Name:</h2></td>
						<td><form:input path="firstName" /></td>
					</tr>
					<tr>
						<td><h2>Last Name:</h2></td>
						<td><form:input path="lastName" /></td>
					</tr>
					<tr>
						<td><h2>Age:</h2></td>
						<td><form:input path="age" /></td>
					</tr>
				</tbody>
			</table>
			<div style="text-align: center;">
			<button type="submit">Create</button>
			</div>
			</form:form>
			</div>
</body>
</html>