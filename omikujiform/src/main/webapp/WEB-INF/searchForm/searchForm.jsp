<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Omikuji</title>
</head>
<body>
<h2 style="text-align: center;" >Send an Omikuji!</h2>
	<div style="width: 300px; border: 2px solid black; padding: 10px; margin: 0 auto;">
	<form action="/omikuji/process" method="POST">
		
		<div style="margin-bottom:10px;">
			<label>Pick any number from 5 to 25</label><br>
			<input style="width:35px;" type="number" value="5" name="number"/>
		</div>
		<div style="margin-bottom:10px;">
			<label>Enter the name of any city: </label><br>
			<input type="text" name="city"/>
		</div>
		<div style="margin-bottom:10px;">
			<label>Enter the name of any real person: </label><br>
			<input type="text" name="person"/>
		</div>
		<div style="margin-bottom:10px;">
			<label>Enter professional endeavor or hobby: </label><br>
			<input type="text" name="hobby"/>
		</div>
		<div style="margin-bottom:10px;">
			<label>Enter any type of living thing: </label><br>
			<input type="text" name="thing"/>
		</div>
		<div style="margin-bottom:10px;">
			<label>Say something nice to someone: </label><br>
			<textarea name="something"/></textarea>
		</div>
		<h3>Send and show a friend</h3><br>
		<input type='submit' value='Send'>
		</div>
	
	
	
	
	</form>
</body>
</html>