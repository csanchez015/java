<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <%@ page isErrorPage="true" %> 
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="/css/edit.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="box">
	<div class="header">
		<h1 style="color:green;font-size: 3em;">Edit Expense</h1>
		<a style="font-size:1.3em;" href="/expenses">Go Back</a>
	</div>
    	<form:form action="/expenses/edit/${expense.id}" method="POST" modelAttribute="expense">
		<input type="hidden" name="_method" value="PUT">
		<div style="margin-left:20px;"> 
			<p style="color: red;"><form:errors path="expenseName"/></p>
			<p style="color: red;"><form:errors path="vendor"/></p>
			<p style="color: red;"><form:errors path="amount"/></p>
			<p style="color: red;"><form:errors path="description"/></p>
		</div>
		<table style="margin: 0 auto; width:100%;">
			<thead>
				<tr>
					<th style="width:300px;"></th>
					<th></th>
				</tr>
			<tbody>
				<tr>
					<td><h1><form:label path="expenseName">Expense name:</form:label></h1></td>
					<td><h1><form:input class="input" path="expenseName"/></h1></td>
				</tr>
				<tr>
					<td><h1><form:label path="vendor">Vendor:</form:label></h1></td>
					<td><h1><form:input class="input" path="vendor"/></h1></td>
				</tr>
				<tr>
					<td><h1><form:label path="amount">Amount:</form:label></h1></td>
					<td><h1><form:input class="input" path="amount"/></h1></td>
				</tr>
				<tr>
					<td><h1><form:label path="description">Description:</form:label></h1></td>
					<td><h1><form:textarea style="height: 100px;" class="input" path="description"/></h1></td>
				</tr>
					
			</tbody>
		</table>
		<input class="button" type="submit" value="Submit"/>
    </form:form>
    
	
	</div>
</body>
</html>