<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Omikuji</title>
</head>
<body>
	<h2 style="text-align: center;">Here's your Omikuji!</h2>
	<div style=" padding: 5px; background-color: #A1C7FF; width: 220px; margin: 0 auto; border:2px solid black;">
	
	<h2 style="text-align: center;"> In <c:out value="${number}"/> years, you will live in <c:out value="${city}"/>
	with <c:out value="${person}"/> as your roommate, <c:out value="${hobby}"/>
	for a living. The next time you see a <c:out value="${thing}"/>, you will 
	have good luck. Also, <c:out value="${something}"/></h2>
	</div>
	<div style="text-align: center; margin-top: 50px;">
	<a href="/omikuji"> Go Back</a>
	</div>
</body>
</html>