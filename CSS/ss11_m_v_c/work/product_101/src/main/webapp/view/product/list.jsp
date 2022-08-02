<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 31/07/2022
  Time: 5:23 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
            crossorigin="anonymous"></script>
</head>
<body>
<h1>Trang danh sách sản phẩm</h1>
<a href="/product?action=add">thêm mới sản phẩm</a>
<form action="/product" method="get">
    <p>Update số liệu theo id</p>
    <input type="text" name="id">
    <button name="action" value="update">Tìm</button>
</form>
<form action="/product">
    <p>Tìm kiếm theo tên</p>
    <input type="text" name="name">
    <button name="action" value="findByName">Tìm</button>
</form>
<form action="/product">
    <p>Tìm kiếm theo id</p>
    <input type="text" name="id">
    <button name="action" value="findById">Tìm</button>
</form>

<table border="1">
    <tr>
        <th>id</th>
        <th>name</th>
        <th>price</th>
        <th>description</th>
        <th>producer</th>
    </tr>
    <c:forEach var="product" items="${product}" varStatus="status">
        <tr>
            <td>${product.id}</td>
            <td>${product.name}</td>
            <td>${product.price}</td>
            <td>${product.description}</td>
            <td>${product.producer}</td>
            <td>
                <button><a href="/product?action=delete&id=${product.id}">Delete</a></button>
            </td>
        </tr>
    </c:forEach>
</table>
</body>

</html>
