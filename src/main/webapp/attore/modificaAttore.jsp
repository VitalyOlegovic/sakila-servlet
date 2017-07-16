<!DOCTYPE html>
<html lang="it">
<head>
    <meta charset = "UTF-8">
    <title>Modifica attore</title>
</head>
<body>
    <h1>Modifica attore</h1>
	<form action="ModificaAttore" method="get">
	    <fieldset>
	        <legend>Dati attore</legend>
            <input type="hidden" name="id" value='<%=request.getParameter("actor_id")  %>' />
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