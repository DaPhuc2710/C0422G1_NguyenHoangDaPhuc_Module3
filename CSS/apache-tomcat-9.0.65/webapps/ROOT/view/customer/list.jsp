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
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
<html>
<head>
    <title>Trang khách hàng</title>

</head>
<body>
<div class="row mt-3">
    <div>
        <table class="table">
            <thead>
            <tr>
                <th scope="col">Mã khách hàng</th>
                <th scope="col">Tên Loại khách hàng</th>
                <th scope="col">Họ và tên</th>
                <th scope="col">Ngày sinh</th>
                <th scope="col">Giới tính</th>
                <th scope="col">Số CMND</th>
                <th scope="col">Số ĐT</th>
                <th scope="col">Email</th>
                <th scope="col">Địa chỉ</th>
                <th scope="col">Xóa</th>
                <th scope="col">Cập nhập</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="customer" items="${customer}">
                <tr>
                    <td>${customer.customerId}</td>
                    <c:forEach var="customerTypes" items="${customerTypes}">
                        <c:if test="${customerTypes.customerCodeType==customer.customerCodeType}">
                            <td>${customerTypes.typeCustomerName}</td>
                        </c:if>
                    </c:forEach>
                    <td>${customer.name}</td>
                    <td>${customer.dOfB}</td>
                    <c:choose>
                        <c:when test="${customer.gender==false}">
                            <td>Nữ</td>
                        </c:when>
                        <c:when test="${customer.gender==true}">
                            <td>Nam</td>
                        </c:when>
                    </c:choose>
                    <td>${customer.CMND}</td>
                    <td>${customer.telephone}</td>
                    <td>${customer.email}</td>
                    <td>${customer.address}</td>
                    <td>
                        <button onclick="xoa('${customer.customerId}')" type="button" class="btn btn-primary" data-bs-toggle="modal"
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
                        <a class="btn btn-primary" href="/customer?action=update&id=${customer.customerId}" role="button">
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


    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel"
         aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Xóa khách hàng</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal"
                            aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <input type="text" name="deleteId" id="deleteId">
                    Bạn có chắc là xóa khách hàng này không ?
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">No
                    </button>
                    <button id="confirm" type="submit" class="btn btn-primary"></button>
                </div>
            </div>
        </div>
    </div>

<%@include file="/view/include/footer.jsp" %>
</body>
<script>
    function xoa(id){
        document.getElementById("deleteId").value=id;
        document.getElementById("confirm").innerHTML= '<a href="/customer?action=delete&id='+id+'">Yes</a>';
    }
</script>
</html>

