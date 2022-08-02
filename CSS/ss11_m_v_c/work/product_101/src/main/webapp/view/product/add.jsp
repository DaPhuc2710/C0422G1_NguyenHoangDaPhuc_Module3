<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 31/07/2022
  Time: 4:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
            crossorigin="anonymous"></script>
</head>
<body>
<h2>Trang thêm sản phẩm mới</h2>
<a href="/product">Quay lại trang list</a>
<form action="/product?action=add" method="post">
    <table>
        <tr>
            <th>Id<input type="text" name="id"></th>
        </tr>
        <tr>
            <th>Name<input type="text" name="name"></th>
        </tr>
        <tr>
            <th>Price<input type="text" name="price"></th>
        </tr>
        <tr>
            <th>Description<input type="text" name="description"></th>
        </tr>
        <tr>
            <th>Producer<input type="text" name="producer"></th>
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
