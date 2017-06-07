<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Inserimento attore</title>
</head>
<body>
	<h1>Inserimento attore</h1>
	<form action="CreaAttore" method="get">
		Nome attore <input type="text" name="firstName" /><br/>
		Cognome attore <input type="text" name="lastName"/><br/>
		<input type="submit" value="OK" /> <input type="reset" value="Reset" />
	</form>
</body>
</html>