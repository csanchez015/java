<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="/css/style.css">
<meta charset="ISO-8859-1">
<title>Fruity Loop</title>
</head>
<body>
	<div class="container">
	<h1 style = "color: #FF21A7; margin-bottom: 30px;">Fruit Store</h1>
	<table class="table">
		<thead>
			<tr>
				<th>Name</th>
				<th>Price</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="eachFruit" items="${fruitList }">
				<tr>
					<td><c:out value="${eachFruit.name }"/></td>
					<td><c:out value="${eachFruit.price }"/></td>
				</tr>
			</c:forEach>
		
		
		</tbody>
	
	</table>
	</div>
</body>
</html>