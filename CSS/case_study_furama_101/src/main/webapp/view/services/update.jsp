<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 06/08/2022
  Time: 4:16 PM
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
    <title>Update service</title>
</head>
<body>
<h1 class="text-center">Cập nhập thông tin dịch vụ</h1>
<form class="m-auto w-25">
    <div class="mb-3">
        <label for="exampleInputEmail1" class="form-label">Tên dịch vụ</label>
        <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
    </div>
    <div class="mb-3">
        <label for="exampleInputEmail2" class="form-label">Diện tích</label>
        <input type="email" class="form-control" id="exampleInputEmail2" aria-describedby="emailHelp">
    </div>
    <div class="mb-3">
        <label for="exampleInputEmail3" class="form-label">Chi phí thuê</label>
        <input type="email" class="form-control" id="exampleInputEmail3" aria-describedby="emailHelp">
    </div>
    <div class="mb-3">
        <label for="exampleInputEmail4" class="form-label">Tiêu chuẩn phòng</label>
        <input type="email" class="form-control" id="exampleInputEmail4" aria-describedby="emailHelp">
    </div>
    <div class="mb-3">
        <label for="exampleInputEmail5" class="form-label">Số người tối đa</label>
        <input type="email" class="form-control" id="exampleInputEmail5" aria-describedby="emailHelp">
    </div>
    <button type="submit" class="btn btn-primary">Lưu</button>
</form>
<%@include file="/view/include/footer.jsp" %>
</body>
</html>

