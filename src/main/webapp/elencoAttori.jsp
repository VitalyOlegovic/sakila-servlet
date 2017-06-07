<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List" %>
<%@page import="org.sakila.dao.ActorDAO" %>
<%@page import="org.sakila.bean.ActorBean" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Attori</title>
    </head>
    <body>
        <h1>Attori</h1>
        <% 
            ActorDAO ad = new ActorDAO();
            List<ActorBean> list = ad.getList();
            pageContext.setAttribute("list", list);
        %>
        
        <table border='1'>
        <thead>
            <tr>
                <td>id</td>
                <td>name</td>
                <td>last name</td>
                <td>last update</td>
                <td>edit</td>
                <td>delete</td>
            </tr>
        </thead>
        <c:forEach items="${list}" var="element">
            <tr>
                <td><c:out value="${element.actorId}" /></td>
                <td><c:out value="${element.firstName}" /></td>
                <td><c:out value="${element.lastName}" /></td>
                <td><c:out value="${element.lastUpdate}" /></td>
                <td><a href='modificaAttore.jsp?actor_id=<c:out value="${element.actorId}"/>'>Modifica</a></td>
                <td><a href='EliminazioneAttore?actor_id=<c:out value="${element.actorId}"/>'>Elimina</a></td>
            </tr>
        </c:forEach>
        </table>
    </body>
</html>
