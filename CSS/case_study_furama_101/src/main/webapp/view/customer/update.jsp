<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 07/08/2022
  Time: 9:42 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/view/include/header.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
<html>
<head>
    <title>Trang chỉnh sửa khách hàng </title>

</head>
<body>
<h1 class="text-center">Chỉnh sửa khách hàng </h1>
<form class="m-auto w-25" method="post" action="/customer?action=update">
    <div class="mb-3">
        <label for="exampleInputEmail11" class="form-label">Mã Khách Hàng</label>
        <input type="text" class="form-control" id="exampleInputEmail11" aria-describedby="emailHelp" name="customerId"
               value="${customer.customerId}">

    </div>
    <div class="mb-3">
        <label for="exampleInputEmail1" class="form-label">Họ tên</label>
        <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="name"
               value="${customer.name}">
        <p class="text-warning">${errors.get('name')}</p>
    </div>
    <div class="mb-3">
        <label for="exampleInputEmail2" class="form-label">Ngày sinh </label>
        <input type="date" class="form-control" id="exampleInputEmail2" aria-describedby="emailHelp" name="dOfB"
               value="${customer.dOfB}">

    </div>
    <div class="mb-3">
        <label class="form-label">Giới tính</label>
        <select name="gender">
            <c:if test="${customer.gender==true}">
                <option value="${true}">Nam</option>
            </c:if>
            <c:if test="${customer.gender==false}">
                <option value="${false}">Nữ</option>
            </c:if>
            <c:if test="${customer.gender==false}">
                <option value="${true}">Nam</option>
            </c:if>
            <c:if test="${customer.gender==true}">
                <option value="${false}">Nữ</option>
            </c:if>
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
        <select name="customerCodeType">
            <c:forEach var="customerTypeTables" items="${customerTypeTables}">
                <c:if test="${customerTypeTables.customerCodeType==customer.customerCodeType}">
                    <option value="${customerTypeTables.customerCodeType}"> ${customerTypeTables.typeCustomerName}</option>
                </c:if>
            </c:forEach>
            <c:forEach var="customerTypeTables" items="${customerTypeTables}">
                <c:if test="${customerTypeTables.customerCodeType!=customer.customerCodeType}">
                    <option value="${customerTypeTables.customerCodeType}"> ${customerTypeTables.typeCustomerName}</option>
                </c:if>
            </c:forEach>
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
