<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="/css/show.css">
<meta charset="ISO-8859-1">
<title>Show Expense</title>
</head>
<body>
		<div class="container">
		<div class="top">
		<h1 class="header">Expense Details</h1>
		<a style="font-size: 1.3em; margin-right: 100px;" href="/expenses">Go Back</a>
		</div>
	
		<table style="margin: 0 auto; width:100%">
			<thead>
				<tr>
					<th style="width:400px;"></th>
					<th></th>
				</tr>
			<tbody>
				<tr>
					<td><h1>Expense Name:</h1></td>
					<td><h1><c:out value="${expense.expenseName }" /></h1></td>
				</tr>
				<tr>
					<td><h1>Expense Description:</h1></td>
					<td><h1><c:out value="${expense.description }" /></h1></td>
				</tr>
				<tr>
					<td><h1>Vendor:</h1></td>
					<td><h1><c:out value="${expense.vendor }" /></h1></td>
				</tr>
				<tr>
					<td><h1>Amount Spent:</h1></td>
					<td><h1>$<c:out value="${expense.amount }" /></h1></td>
				</tr>
					
			</tbody>
		</table>
		</div>
</body>
</html>