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
<h1 class="bg-danger" style=" text-align: center ">Trang danh sách sản phẩm</h1>
<p><a href="/product?action=add" class="btn btn-outline-danger" role="button">Thêm mới sản phẩm</a></p>
<nav class="navbar navbar-light bg-light">
    <div class="container-fluid light" style="background-color: #e3f2fd;">
        <a class="btn btn-info col-6">Update số liệu theo id</a>
        <form class="d-flex" action="/product" method="get">
            <input class="form-control me-2 mt-3" type="search" placeholder="Search" type="text" name="id"
                   aria-label="Search">
            <button class="btn btn-info mt-3" name="action" value="update" type="submit">Search</button>
        </form>
    </div>
</nav>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
        <a class="navbar-brand" href="/product?action=add">Thêm mới sản phẩm</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" href="/product?action=add">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="#">Update số liệu theo id</a>
                </li>
            </ul>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="#">Update số liệu theo id</a>
                </li>
            </ul>
            <form class="d-flex">
                <input class="form-control me-2" type="search" type="text" name="id" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success" name="action" value="update" type="submit">Search</button>
            </form>
        </div>
    </div>
</nav>
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
                <a href="/product?action=update&id=${product.id}">
                    <button>Update</button>
                </a>

            </td>
            <td>
                <a href="/product?action=delete&id=${product.id}">
                    <button>Delete</button>
                </a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>

</html>
