<!DOCTYPE html>
<html lang="it">
<head>
    <meta charset = "UTF-8">
    <title>Modifica attore</title>
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
    <h1>Modifica attore</h1>
	<form action="ModificaAttore" method="get">
	    <fieldset>
	        <legend>Dati attore</legend>
	        <section>
            <input type="hidden" name="id" value='<%=request.getParameter("actor_id")  %>' />
            <label>Nome attore</label>
            <input type="text" name="firstName" /><br/>
            </section>
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