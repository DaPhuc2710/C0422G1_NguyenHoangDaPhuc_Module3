<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 31/07/2022
  Time: 6:52 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update thông tin</title>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
            crossorigin="anonymous"></script>
</head>
<body>
<a href="/product">Quay lai list</a>
<form action="/product?action=update" method="post">
    <input type="hidden" name="id" value="${product.id}"> <%-- hidden để ẩn khi hiện ra với người dùng --%>
    <table>
        <tr>
            <th>ID</th>
            <td><input type="text" disabled value="${product.id}"></td>
            <%--lý do không để name id vì sẽ tạo ra lỗi --%>
        </tr>
        <tr>
            <th>Name</th>
            <td><input type="text" name="name" value="${product.name}"></td>
        </tr>
        <tr>
            <th>Price</th>
            <td><input type="text" name="price" value="${product.price}"></td>
        </tr>
        <tr>
            <th>Description</th>
            <td><input type="text" name="description" value="${product.description}"></td>
        </tr>
        <tr>
            <th>Producer</th>
            <td><input type="text" name="producer" value="${product.producer}"></td>
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
