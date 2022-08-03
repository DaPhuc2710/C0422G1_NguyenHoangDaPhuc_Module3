<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 01/08/2022
  Time: 4:55 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>Adding Page</h2>
<a href="/users">Back to list page</a>
<form method="post" action="/users?action=insert">
    <table>
        <tr>
            <th>Name:<input type="text" name="name" ></th>
        </tr>
        <tr>
            <th>Email:<input type="text" name="email" ></th>
        </tr>
        <tr>
            <th>Country:<input type="text" name="country"></th>
        </tr>
        <tr>
            <th><button type="submit">Save</button></th>
        </tr>
    </table>
</form>
</body>
</html>
