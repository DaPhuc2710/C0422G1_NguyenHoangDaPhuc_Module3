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
<a href="/users">Trở về trang list</a>
<form>
    <table border="1px">
        <tr>
            <th>Id</th>
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
            </tr>
        </c:forEach>
    </table>
</form>
</body>
</html>
