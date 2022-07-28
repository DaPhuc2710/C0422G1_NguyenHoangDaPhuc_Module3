<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 28/07/2022
  Time: 3:39 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Danh sách team 7 làng Lá</h1>
<table border="1">
    <tr>
        <TH>STT</TH>
        <th>Tên</th>
        <th>Ngày sinh</th>
        <th>Địa chỉ</th>
        <th>Hình ảnh</th>
    </tr>
    <c:forEach var="customer" items="${customerList}" varStatus="status" >
        <tr>
            <th>${status.count}</th>
            <td>${customer.getName()}</td>
            <td>${customer.getdOfB()}</td>
            <td>${customer.getAddress()}</td>
            <td><img src="${customer.getPicture()}" alt="" width="50px"></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
