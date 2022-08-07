<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 06/08/2022
  Time: 3:49 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/view/include/header.jsp" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
<html>
<head>
    <title>Trang thêm nhân viên mới</title>

</head>
<body>
<h1 class="text-center">Thêm nhân viên mới</h1>
<form class="m-auto w-25">
    <div class="mb-3">
        <label for="exampleInputEmail1" class="form-label">Họ tên</label>
        <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
    </div>
    <div class="mb-3">
        <label for="exampleInputEmail2" class="form-label">Ngày sinh </label>
        <input type="email" class="form-control" id="exampleInputEmail2" aria-describedby="emailHelp">
    </div>
    <div class="mb-3">
        <label for="exampleInputEmail3" class="form-label">Số CMND </label>
        <input type="email" class="form-control" id="exampleInputEmail3" aria-describedby="emailHelp">
    </div>
    <div class="mb-3">
        <label for="exampleInputEmail4" class="form-label">Số ĐT </label>
        <input type="email" class="form-control" id="exampleInputEmail4" aria-describedby="emailHelp">
    </div>
    <div class="mb-3">
        <label for="exampleInputEmail5" class="form-label">Email </label>
        <input type="email" class="form-control" id="exampleInputEmail5" aria-describedby="emailHelp">
    </div>
    <div class="mb-3">
        <label class="form-label">Trình độ</label>
        <select>
            <option>Trung cấp</option>
            <option>Cao đẳng</option>
            <option>Đại học</option>
            <option>Sau đại học.</option>
        </select>
    </div>
    <div class="mb-3">
        <label class="form-label">Vị trí </label>
        <select>
            <option>Lễ tân</option>
            <option>Phục vụ</option>
            <option>Chuyên viên</option>
            <option>Giám sát</option>
            <option>Quản lý</option>
            <option>Giám đốc</option>
        </select>
    </div>
    <div class="mb-3">
        <label class="form-label">Bộ phận </label>
        <select>
            <option>Sale – Marketing</option>
            <option>Phục vụ</option>
            <option>Hành Chính</option>
            <option>Quản lý</option>
        </select>
    </div>
    <div class="mb-3">
        <label for="exampleInputEmail8" class="form-label">Lương </label>
        <input type="email" class="form-control" id="exampleInputEmail8" aria-describedby="emailHelp">
    </div>
    <button type="submit" class="btn btn-primary">Lưu</button>
</form>
<%@include file="/view/include/footer.jsp" %>
</body>
</html>
