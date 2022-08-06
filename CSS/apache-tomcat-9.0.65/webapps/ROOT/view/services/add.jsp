<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 06/08/2022
  Time: 3:49 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
<html>
<head>
    <title>Adding Service</title>
</head>
<body>
<%@include file="/view/include/header.jsp" %>
<h1 class="text-center">Thêm dịch vụ mới</h1>
<p>Chọn dịch vụ cần add</p>
<select onchange="services()" id="select">
    <option value="house">House</option>
    <option value="room">Room</option>
    <option value="villa">Villa</option>
</select>
<form class="m-auto w-25">
    <div class="mb-3">
        <label for="exampleInputEmail1" class="form-label">Diện tích sử dụng</label>
        <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
    </div>
    <div class="mb-3">
        <label for="exampleInputEmail2" class="form-label">Chi phí thuê </label>
        <input type="email" class="form-control" id="exampleInputEmail2" aria-describedby="emailHelp">
    </div>
    <div class="mb-3">
        <label for="exampleInputEmail3" class="form-label">Số lượng người tối đa </label>
        <input type="email" class="form-control" id="exampleInputEmail3" aria-describedby="emailHelp">
    </div>
    <div class="mb-3">
        <label for="exampleInputEmail4" class="form-label">Kiểu thuê </label>
        <input type="email" class="form-control" id="exampleInputEmail4" aria-describedby="emailHelp">
    </div>
    <div class="mb-3 " id="s1">
        <label for="exampleInputEmail5" class="form-label">Dịch vụ miễn phí đi kèm </label>
        <input type="email" class="form-control" id="exampleInputEmail5" aria-describedby="emailHelp">
    </div>
    <div class="mb-3" id="s2">
        <label for="exampleInputEmail8" class="form-label">Tiêu chuẩn phòng </label>
        <input type="email" class="form-control" id="exampleInputEmail8" aria-describedby="emailHelp">
    </div>
    <div class="mb-3" id="s3">
        <label for="exampleInputEmail7" class="form-label">Mô tả tiện nghi khác </label>
        <input type="email" class="form-control" id="exampleInputEmail7" aria-describedby="emailHelp">
    </div>
    <div class="mb-3" id="s4">
        <label for="exampleInputEmail9" class="form-label">Diện tích hồ bơi </label>
        <input type="email" class="form-control" id="exampleInputEmail9" aria-describedby="emailHelp">
    </div>
    <div class="mb-3" id="s5">
        <label for="exampleInputEmail10" class="form-label">Số tầng </label>
        <input type="email" class="form-control" id="exampleInputEmail10" aria-describedby="emailHelp">
    </div>
    <div class="mb-3">
        <label for="exampleInputEmail6" class="form-label">Địa chỉ </label>
        <input type="email" class="form-control" id="exampleInputEmail6" aria-describedby="emailHelp">
    </div>
    <button type="submit" class="btn btn-primary">Lưu</button>
</form>

<script>
    function services() {
        let result = document.getElementById("select").value;
        switch (result) {
            case "house":
                document.getElementById("s1").style.display = 'none';
                document.getElementById("s2").style.display = 'block';
                document.getElementById("s3").style.display = 'block';
                document.getElementById("s4").style.display = 'none';
                document.getElementById("s5").style.display = 'block';
                break;
            case "room":
                document.getElementById("s1").style.display = 'block';
                document.getElementById("s2").style.display = 'none';
                document.getElementById("s3").style.display = 'none';
                document.getElementById("s4").style.display = 'none';
                document.getElementById("s5").style.display = 'none';
                break;
            case "villa":
                document.getElementById("s1").style.display = 'none';
                document.getElementById("s2").style.display = 'block';
                document.getElementById("s3").style.display = 'block';
                document.getElementById("s4").style.display = 'block';
                document.getElementById("s5").style.display = 'block';
                break;
        }
    }
</script>
<%@include file="/view/include/footer.jsp" %>
</body>
