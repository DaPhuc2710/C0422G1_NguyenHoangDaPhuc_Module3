<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 06/08/2022
  Time: 3:49 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/view/include/header.jsp" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
<html>
<head>
    <title>Trang thêm khách hàng mới</title>

</head>
<body>
<h1 class="text-center">Thêm khách hàng mới</h1>
<form class="container-fluid w-25 shadow" method="post" action="/customer?action=add">
    <div class="mb-3">
        <label for="exampleInputEmail1" class="form-label">Họ tên</label>
        <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="name"
               value="${customer.name}">
        <p class="text-warning">${errors.get('name')}</p>
    </div>
    <div class="mb-3">
        <label for="exampleInputEmail2" class="form-label">Ngày sinh </label>
        <input type="date" class="form-control" id="exampleInputEmail2" aria-describedby="emailHelp" name="dOfB"
        >
        <%--        value="${customer.dOfB}"--%>
        <%--        <p class="text-warning">${errors.get('dOfB')}</p>--%>
    </div>
    <div class="mb-3">
        <label class="form-label">Giới tính</label>
        <select name="gender">
            <option value="true">Nam</option>
            <option value="false">Nữ</option>
        </select>
    </div>
    <div class="mb-3">
        <label for="exampleInputEmail3" class="form-label">Số CMND </label>
        <input type="text" class="form-control" id="exampleInputEmail3" aria-describedby="emailHelp" name="CMND"
               value="${customer.CMND}">
        <p class="text-warning">${errors.get('CMND')}</p>
    </div>
    <div class="mb-3">
        <label for="exampleInputEmail4" class="form-label">Số ĐT </label>
        <input type="text" class="form-control" id="exampleInputEmail4" aria-describedby="emailHelp" name="telephone"
               value="${customer.telephone}">
        <p class="text-warning">${errors.get('telephone')}</p>
    </div>
    <div class="mb-3">
        <label for="exampleInputEmail5" class="form-label">Email </label>
        <input type="text" class="form-control" id="exampleInputEmail5" aria-describedby="emailHelp" name="email"
               value="${customer.email}">
        <p class="text-warning">${errors.get('email')}</p>
    </div>
    <div class="mb-3">
        <label class="form-label">Loại khách </label>
        <select name="type">
            <option value="1">Diamond</option>
            <option value="2">Platinum</option>
            <option value="3">Gold</option>
            <option value="4">Silver</option>
            <option value="5">Member</option>
        </select>
    </div>
    <div class="mb-3">
        <label for="exampleInputEmail6" class="form-label">Địa chỉ </label>
        <input type="text" class="form-control" id="exampleInputEmail6" aria-describedby="emailHelp" name="address"
               value="${customer.address}">
        <p class="text-warning">${errors.get('address')}</p>
    </div>
    <button type="submit" class="btn btn-primary">Lưu</button>
</form>
<%@include file="/view/include/footer.jsp" %>
</body>
</html>
