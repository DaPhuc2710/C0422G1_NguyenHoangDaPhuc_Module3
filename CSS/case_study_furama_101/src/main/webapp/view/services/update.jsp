<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 06/08/2022
  Time: 4:16 PM
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
    <title>Update service</title>
</head>
<body>
<h1 class="text-center">Cập nhập thông tin dịch vụ</h1>
<form class="m-auto w-25" method="post" action="/services?action=update">
    <p>Chọn dịch vụ cần add</p>
    <select onchange="services()" id="select" name="servicesTypeCode">
        <c:forEach var="typeOfServicesClass" items="${typeOfServicesClassList}">
            <c:if test="${services.servicesTypeCode==typeOfServicesClass.servicesTypeCode}">
                <option value="${services.servicesTypeCode}">${typeOfServicesClass.servicesTypeName}</option>
            </c:if>
        </c:forEach>

        <c:forEach var="typeOfServicesClass" items="${typeOfServicesClassList}">
            <c:if test="${services.servicesTypeCode!=typeOfServicesClass.servicesTypeCode}">
                <option value="${services.servicesTypeCode}">${typeOfServicesClass.servicesTypeName}</option>
            </c:if>
        </c:forEach>
        <option value="0">None</option>
    </select>
    <div class="mb-3">
        <label for="exampleInputEmail13" class="form-label">Mã dịch vụ</label>
        <input type="text" class="form-control" id="exampleInputEmail13" aria-describedby="emailHelp" name="servicesId" value="${services.servicesId}">
    </div>
    <div class="mb-3">
        <label for="exampleInputEmail111" class="form-label">Tên dịch vụ</label>
        <input type="text" class="form-control" id="exampleInputEmail111" aria-describedby="emailHelp" name="name" value="${services.name}">
    </div>
    <div class="mb-3">
        <label for="exampleInputEmail1" class="form-label">Diện tích sử dụng</label>
        <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="area" value="${services.area}">
    </div>
    <div class="mb-3">
        <label for="exampleInputEmail2" class="form-label">Chi phí thuê </label>
        <input type="text" class="form-control" id="exampleInputEmail2" aria-describedby="emailHelp"name="cost" value="${services.cost}">
    </div>
    <div class="mb-3">
        <label for="exampleInputEmail3" class="form-label">Số lượng người tối đa </label>
        <input type="text" class="form-control" id="exampleInputEmail3" aria-describedby="emailHelp"name="maxPeople" value="${services.maxPeople}">
    </div>
    <div class="mb-3">
        <label  class="form-label">Kiểu thuê</label>
        <select  name="rentTypeCode">
            <c:forEach var="rentTypeCodeClass" items="${rentTypeCodeClassList}">
                <c:if test="${services.rentTypeCode==rentTypeCodeClass.rentTypeCode}">
                    <option value="${services.rentTypeCode}"> ${rentTypeCodeClass.rentTypeName}</option>
                </c:if>
            </c:forEach>
            <c:forEach var="rentTypeCodeClass" items="${rentTypeCodeClassList}">
                <c:if test="${services.rentTypeCode!=rentTypeCodeClass.rentTypeCode}">
                    <option value="${services.rentTypeCode}"> ${rentTypeCodeClass.rentTypeName}</option>
                </c:if>
            </c:forEach>
            <option value="0">None</option>
        </select>
    </div>
    <div class="mb-3 " id="s1">
        <label for="exampleInputEmail5" class="form-label">Dịch vụ miễn phí đi kèm </label>
        <input type="text" class="form-control" id="exampleInputEmail5" aria-describedby="emailHelp" name="extraServices" value="${services.extraServices}">
    </div>
    <div class="mb-3" id="s2">
        <label for="exampleInputEmail8" class="form-label">Tiêu chuẩn phòng </label>
        <input type="text" class="form-control" id="exampleInputEmail8" aria-describedby="emailHelp" name="quality"  value="${services.quality}">
    </div>
    <div class="mb-3" id="s3">
        <label for="exampleInputEmail7" class="form-label">Mô tả tiện nghi khác </label>
        <input type="text" class="form-control" id="exampleInputEmail7" aria-describedby="emailHelp" name="description"  value="${services.description}">
    </div>
    <div class="mb-3" id="s4">
        <label for="exampleInputEmail9" class="form-label">Diện tích hồ bơi </label>
        <input type="text" class="form-control" id="exampleInputEmail9" aria-describedby="emailHelp" name="poolArea"  value="${services.poolArea}">
    </div>
    <div class="mb-3" id="s5">
        <label for="exampleInputEmail10" class="form-label">Số tầng </label>
        <input type="text" class="form-control" id="exampleInputEmail10" aria-describedby="emailHelp" name="floor" value="${services.floor}">
    </div>
    <button type="submit" class="btn btn-primary">Lưu</button>
</form>

<script>
    function services() {
        let result = document.getElementById("select").value;
        switch (result) {
            case "2":
                document.getElementById("s1").style.display = 'none';
                document.getElementById("s2").style.display = 'block';
                document.getElementById("s3").style.display = 'block';
                document.getElementById("s4").style.display = 'none';
                document.getElementById("s5").style.display = 'block';
                break;
            case "3":
                document.getElementById("s1").style.display = 'block';
                document.getElementById("s2").style.display = 'none';
                document.getElementById("s3").style.display = 'none';
                document.getElementById("s4").style.display = 'none';
                document.getElementById("s5").style.display = 'none';
                break;
            case "1":
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