<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 01/08/2022
  Time: 9:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<a href="/users">Quay lai list</a>
<form action="/users?action=update" method="post">
    <input type="hidden" name="id" value="${users.id}">
    <table>
        <tr>
            <th>ID</th>
            <td><input type="text" disabled value="${users.id}"></td>
        </tr>
        <tr>
            <th>Name</th>
            <td><input type="text" name="name" value="${users.name}"></td>
        </tr>
        <tr>
            <th>Email</th>
            <td><input type="text" name="email" value="${users.email}"></td>
        </tr>
        <tr>
            <th>Country</th>
            <td><input type="text" name="country" value="${users.country}"></td>
        </tr>
        <tr>
            <th>
                <button type="submit">Save</button>
            </th>
        </tr>
    </table>
</form>

</body>
</html>
