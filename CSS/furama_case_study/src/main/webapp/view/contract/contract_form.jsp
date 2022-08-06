<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 06/08/2022
  Time: 9:13 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/view/include/header.jsp" %>
<html>
<head>
    <title>Trang thêm danh sách</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
            crossorigin="anonymous"></script>
</head>
<body>
<h1 class="text-center">Thêm hợp đồng mới</h1>
<form class="m-auto w-25">
    <div class="mb-3">
        <label for="exampleInputEmail1" class="form-label">Ngày bất đầu</label>
        <input type="datetime-local" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
    </div>
    <div class="mb-3">
        <label for="exampleInputEmail2" class="form-label">Ngày kết thúc </label>
        <input type="datetime-local" class="form-control" id="exampleInputEmail2" aria-describedby="emailHelp">
    </div>
    <div class="mb-3">
        <label for="exampleInputEmail3" class="form-label">Tiền gửi </label>
        <input type="number" class="form-control" id="exampleInputEmail3" aria-describedby="emailHelp">
    </div>
    <div class="mb-3">
        <label for="exampleInputEmail4" class="form-label">Tổng Tiền </label>
        <input type="number" class="form-control" id="exampleInputEmail4" aria-describedby="emailHelp">
    </div>

    <div class="mb-3">
        <label class="form-label">Khách hàng thuê dịch vụ </label>
        <select>
            <option>Diamond</option>
            <option>Platinum</option>
            <option>Gold</option>
            <option>Silver</option>
            <option>Member</option>
        </select>
    </div>
    <div class="mb-3">
        <label class="form-label">Dịch vụ </label>
        <select>
            <option>House</option>
            <option>Villa</option>
            <option>Room</option>

        </select>
    </div>
    <div class="mb-3">
        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-plus-circle"
                 viewBox="0 0 16 16">
                <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
                <path d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z"/>
            </svg>
        </button>
    </div>

    <div class="mb-3">
        <button type="button" class="btn btn-secondary">Hủy bỏ</button>
        <button type="button" class="btn btn-primary">Tạo hợp đồng</button>
    </div>
</form>
<%@include file="/view/include/footer.jsp" %>
</body>
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                ...
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Save changes</button>
            </div>
        </div>
    </div>
</div>
</html>
