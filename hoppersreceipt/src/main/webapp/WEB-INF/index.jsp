<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="/css/style.css">
<meta charset="ISO-8859-1">
<title>Simple Receipt</title>
</head>
<body>
				
	<h2>Customer Name: <c:out value="${name}"></c:out></h2>
	<h3>Item name: <c:out value="${item}"></c:out></h3>
	<h3>Price: $<c:out value="${price}"></c:out></h3>
	<h3>Description: <c:out value="${description}"></c:out></h3>
	<h3>Vendor: <c:out value="${vendor}"></c:out></h3>
</body>
</html>