<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 01/08/2022
  Time: 3:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>List Page</h2>
<a href="/users?action=insert">Adding new user</a>
<form action="/users">
    <p>Find by Country</p>
    <input type="text" name="country">
    <button name="action" value="findByCountry">Search</button>
</form>
<form action="/users">
    <p>Find by id</p>
    <input type="text" name="id">
    <button name="action" value="findById">Search</button>
</form>
<a href="/users?action=sortByName">Sort</a>
<table>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Email</th>
        <th>Country</th>
    </tr>
    <c:forEach var="users" items="${users}">
        <tr>
            <td>${users.id}</td>
            <td>${users.name}</td>
            <td>${users.email}</td>
            <td>${users.country}</td>
            <td>
                <button><a href="/users?action=delete&id=${users.id}">Delete</a></button>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
