<?xml version="1.0" encoding="UTF-8" ?>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Modifica attore</title>
</head>
<body>
    <h1>Modifica attore</h1>
	<form action="ModificaAttore" method="get">
		<input type="hidden" name="id" value='<%=request.getParameter("actor_id")  %>' />
		Nome attore <input type="text" name="firstName" /><br/>
		Cognome attore <input type="text" name="lastName"/><br/>
		<input type="submit" value="OK" /> <input type="reset" value="Reset" />
		
	</form>
</body>
</html>