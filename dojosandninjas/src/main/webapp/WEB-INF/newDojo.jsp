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
			<div style=" width: 400px; height: 250px; margin: 20% auto; border: 1px solid black;">
			<a href="/ninjas/new">Register a Ninja!</a>
			<h1 style="text-align: center; font-size: 2.5em;">New Dojo</h1>
		
			<form:form action="/dojos/new" method="POST" modelAttribute="dojo">
				<h2 style="text-align: center;">Name: <form:input path="location" /></h2>
				
				<form:errors path="location" />
				<div style="text-align: center">
				<button type="submit">Create</button>
				</div>
			</form:form>
			</div>
</body>
</html>