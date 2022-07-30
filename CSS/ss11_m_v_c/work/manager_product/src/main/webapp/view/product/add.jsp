<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 29/07/2022
  Time: 4:06 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Trang them moi</h1>
<a href="/product">Quay lai trang list</a>
<c: if test="${mess !=null}">
    <p>${mess}</p>
</c:>
<form method="post" action="/product?action=add">
    <table>
        <tr>
            <td>ID</td>
            <td><input type="text" name="id" placeholder="Nhap id"></td>
        </tr>
        <tr>
            <td>Tên</td>
            <td><input type="text" name="name" placeholder="Nhap ten"></td>
        </tr>

        <tr>
            <td>Giá</td>
            <td><input type="text" name="price" placeholder="Nhap gia"></td>
        </tr>

        <tr>
            <td>Mô tả</td>
            <td><input type="text" name="description" placeholder="Nhap mo ta"></td>
        </tr>
        <tr>
            <td>Nhà sản xuất</td>
            <td><input type="text" name="producer" placeholder="Nhap nha san xuat"></td>
        </tr>
        <tr>
            <td></td>
            <td><button type="submit">Luu</button></td>
        </tr>
    </table>
</form>
</body>
</html>
