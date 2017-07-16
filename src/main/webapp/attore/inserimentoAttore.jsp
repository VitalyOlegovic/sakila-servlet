<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="it">
<head>
    <meta charset = "UTF-8">
    <title>Inserimento attore</title>
</head>
<body>
	<h1>Inserimento attore</h1>
	<form action="CreaAttore" method="get">
	    <fieldset>
            <legend>Dati attore</legend>
            <label>Nome attore</label>
            <input type="text" name="firstName" /><br/>
            <label>Cognome attore</label>
            <input type="text" name="lastName"/><br/>
            <input type="submit" value="OK" />
            <input type="reset" value="Reset" />
		</fieldset>
	</form>
</body>
</html>