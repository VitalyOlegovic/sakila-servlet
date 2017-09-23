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
        <style type = "text/css">
            body {
                margin-left: 10%;
                margin-top: 5%;
                margin-bottom: 5%;
            }
            table {
                width: 50%;
            }
            table, td, th, thead {
                border: 1px solid gray;
                border-collapse: collapse;
            }
            thead {
                font-weight: bold;
            }
            nav {
                margin-bottom: 10px
            }
            @media screen and (max-width: 900px) {
                body{
                    margin-left: 10px;
                    margin-top: 0px;
                }

                table{
                    width: 100%;
                }
            }

        </style>
    </head>
    <body>
        <h1>Attori</h1>
        <% 
            ActorDAO ad = new ActorDAO();
            List<ActorBean> list = ad.getList();
            pageContext.setAttribute("list", list);
        %>
        
        <table>
        <thead>
            <tr>
                <td>Id</td>
                <td>Name</td>
                <td>Last name</td>
                <td>Last update</td>
                <td>Edit</td>
                <td>Delete</td>
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
