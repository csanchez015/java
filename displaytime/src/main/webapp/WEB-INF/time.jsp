<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.Date"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Current Time</title>
</head>
<body>
			
			<div style="color: green; height: 400px; margin: 0 auto;">
			<h1><%= new Date() %></h1>
			</div>
			<script type="text/javascript" src="/js/time.js"></script>
</body>
</html>