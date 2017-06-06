<?xml version="1.0" encoding="UTF-8" ?>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Parametri</title>
</head>
<body>

<h1>Parametri</h1>

<% 
String valoreParametro = request.getParameter("a");
out.print(valoreParametro);
String secondoParametro = request.getParameter("b");
out.print(secondoParametro);
%>

</body>
</html>