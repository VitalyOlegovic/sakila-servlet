<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="it">
<head>
    <meta charset = "UTF-8">
    <title>Inserimento attore</title>
    <style>
    body {
    	margin-left: 20%;
    	margin-right: 20%;
    	margin-top: 5%;
    	margin-bottom: 5%;
    }
    section {
    	display: block;
    	margin-top: 10px;
    	margin-bottom: 10px;
    }
    </style>
</head>
<body>
	<h1>Inserimento attore</h1>
	<form action="CreaAttore" method="get">
	    <fieldset>
            <legend>Dati attore</legend>
            <section>
            <label>Nome attore</label>
            <input type="text" name="firstName" /><br/>
            </srction>
            <section>
            <label>Cognome attore</label>
            <input type="text" name="lastName"/><br/>
            </section>
            <input type="submit" value="OK" />
            <input type="reset" value="Reset" />
		</fieldset>
	</form>
</body>
</html>