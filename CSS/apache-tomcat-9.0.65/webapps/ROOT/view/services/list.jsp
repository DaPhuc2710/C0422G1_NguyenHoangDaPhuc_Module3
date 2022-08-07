<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 06/08/2022
  Time: 3:49 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/view/include/header.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>List Service</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
            crossorigin="anonymous"></script>

</head>
<body>
<div class="row mt-3">
    <div>
        <table class="table">
            <thead>
            <tr><th scope="col">Mã dịch vụ</th>
                <th scope="col">Tên dịch vụ</th>
                <th scope="col">Diện tích</th>
                <th scope="col">Chi phí thuê</th>
                <th scope="col">Số người tối đa</th>
                <th scope="col">Tên kiểu thuê</th>
                <th scope="col">Tên loại dịch vụ</th>
                <th scope="col">Tiêu chuẩn phòng</th>
                <th scope="col">Mô tả tiện nghi khác</th>
                <th scope="col">Diện tích hồ bơi</th>
                <th scope="col">Số tầng</th>
                <th scope="col">Dịch vụ miễn phí đi kèm</th>
                <th scope="col">Delete</th>
                <th scope="col">Update</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="services" items="${services}">
                <tr>
                    <td>${services.servicesId}</td>
                    <td>${services.name}</td>
                    <td>${services.area}</td>
                    <td>${services.cost}</td>
                    <td>${services.maxPeople}</td>
                    <c:forEach var="rentTypes" items="${rentTypes}">
                        <c:if test="${services.rentTypeCode==rentTypes.rentTypeCode}">
                            <td>${rentTypes.rentTypeName}</td>
                        </c:if>
                    </c:forEach>
                    <c:forEach var="typeOfServices" items="${typeOfServices}">
                        <c:if test="${services.servicesTypeCode==typeOfServices.servicesTypeCode}">
                            <td>${typeOfServices.servicesTypeName}</td>
                        </c:if>
                    </c:forEach>
                    <td>${services.quality}</td>
                    <td>${services.description}</td>
                    <td>${services.poolArea}</td>
                    <td>${services.floor}</td>
                    <td>${services.extraServices}</td>
                    <td>
                        <button onclick="xoa('${services.servicesId}')" type="button" class="btn btn-primary" data-bs-toggle="modal"
                                data-bs-target="#exampleModal">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                 class="bi bi-trash" viewBox="0 0 16 16">
                                <path d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6z"/>
                                <path fill-rule="evenodd"
                                      d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1zM4.118 4 4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118zM2.5 3V2h11v1h-11z"/>
                            </svg>
                        </button>
                    </td>
                    <td>
                        <a class="btn btn-primary" href="/services?action=update&id=${services.servicesId}" role="button">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                 class="bi bi-pen"
                                 viewBox="0 0 16 16">
                                <path d="m13.498.795.149-.149a1.207 1.207 0 1 1 1.707 1.708l-.149.148a1.5 1.5 0 0 1-.059 2.059L4.854 14.854a.5.5 0 0 1-.233.131l-4 1a.5.5 0 0 1-.606-.606l1-4a.5.5 0 0 1 .131-.232l9.642-9.642a.5.5 0 0 0-.642.056L6.854 4.854a.5.5 0 1 1-.708-.708L9.44.854A1.5 1.5 0 0 1 11.5.796a1.5 1.5 0 0 1 1.998-.001zm-.644.766a.5.5 0 0 0-.707 0L1.95 11.756l-.764 3.057 3.057-.764L14.44 3.854a.5.5 0 0 0 0-.708l-1.585-1.585z"/>
                            </svg>
                        </a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>

</div>
<%@include file="/view/include/footer.jsp" %>
</body>

<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Xóa dịch vụ</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal"
                        aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <input type="text" name="deleteId" id="deleteId">
                Bạn có chắc là xóa dịch vụ không ?
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close
                </button>
                <button  id="confirm" type="submit" class="btn btn-info"></button>
            </div>
        </div>
    </div>
</div>
<script>
    function xoa(id){
        console.log(id)
        document.getElementById("deleteId").value=id;
        document.getElementById("confirm").innerHTML= '<a href="/services?action=delete&id='+id+'">Yes</a>';
    }
</script>
</html>

