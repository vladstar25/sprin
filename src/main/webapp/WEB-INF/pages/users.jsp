<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Users</title>
</head>
<body>
<h1>Список комманды:</h1>
<table>
    <tr>
        <th>id</th>
        <th>name</th>
        <th>age</th>
        <th>action</th>
    </tr>
    <c:forEach var="user" items="${listUsers}">
        <tr>
            <td>${user.id}</td>
            <td>${user.name}</td>
            <td>${user.age}</td>
            <td>
                <a href="/edit/${user.id}">EDIT</a>
                <a href="/delete/${user.id}">DELETE</a>
            </td>
        </tr>
    </c:forEach>
</table>
<a href="/add">Add User</a>
</body>
</html>
