<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <%@ page isErrorPage="true" %> 
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="/css/style.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	<div class="container">
	<h1 style="color: blue;">Save Travels</h1>
	
	<div class="table">
	<table style="padding: 10px; text-align: center;">
		<thead>
			<tr>
				<th style="width:30%;"> Expense </th>
				<th style="width:25%;"> Vendor </th>
				<th style="width:20%;"> Amount </th>
				<th style="width:25%;"> Actions </th>
			</tr>
		<tbody>
			<c:forEach var="eachExpense" items="${expenseList}">
				<tr>
					<td> <a href="/expenses/${eachExpense.id}"><c:out value="${eachExpense.expenseName}" /></a></td>
					<td> <c:out value="${eachExpense.vendor}" /></td>
					<td> $<c:out value="${eachExpense.amount}" /></td>
					<td> 
						<a href="/expenses/edit/${eachExpense.id}">Edit</a>
						<form:form method="post" action="/expenses/delete/${eachExpense.id}" >
   							<input type="hidden" name="_method" value="delete">
    						<button type="submit">Delete</button>
						</form:form>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	</div>

	<h1 style="color: blue; margin-left: 20px;">Add an expense:</h1>
	<form:form action="/expenses/new" method="POST" modelAttribute="expense">
		<div style="margin-left:20px;"> 
			<p style="color: red;"><form:errors path="expenseName"/></p>
			<p style="color: red;"><form:errors path="vendor"/></p>
			<p style="color: red;"><form:errors path="amount"/></p>
			<p style="color: red;"><form:errors path="description"/></p>
		</div>
		<table style="margin-left: 20px; width:100%;">
			<thead>
				<tr>
					<th style="width:200px;"></th>
					<th></th>
				</tr>
			<tbody>
				<tr>
					<td><p><form:label path="expenseName">Expense name:</form:label></p></td>
					<td><p><form:input class="input" path="expenseName"/></p></td>
				</tr>
				<tr>
					<td><p><form:label path="vendor">Vendor:</form:label></p></td>
					<td><p><form:input class="input" path="vendor"/></p></td>
				</tr>
				<tr>
					<td><p><form:label path="amount">Amount:</form:label></p></td>
					<td><p><form:input class="input" path="amount"/></p></td>
				</tr>
				<tr>
					<td><p><form:label path="description">Description:</form:label></p></td>
					<td><p><form:textarea style="height: 70px;" class="input" path="description"/></p></td>
				</tr>
					
			</tbody>
		</table>
		<input class="button" type="submit" value="Submit"/>
    </form:form>
    </div>
    
    
</body>
</html>