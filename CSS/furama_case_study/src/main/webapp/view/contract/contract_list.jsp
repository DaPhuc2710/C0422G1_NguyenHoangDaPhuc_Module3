<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 05/08/2022
  Time: 3:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/view/include/header.jsp" %>
<html>
<head>
    <title>Trang danh sách nhân viên</title>
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
            <tr>
                <th scope="col">#</th>
                <th scope="col">Dịch vụ</th>
                <th scope="col">Khách hàng</th>
                <th scope="col">Ngày bắt đầu</th>
                <th scope="col">Ngày kết thúc</th>
                <th scope="col">Tiền đặt cọc</th>
                <th scope="col">Tổng tiền</th>
                <th scope="col" class="text-center">Các dịch vụ đi kèm</th>
                <th scope="col"></th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <th scope="row">Lê Văn Bình</th>
                <td>1997-04-09</td>
                <td>654231234</td>
                <td>0934212314</td>
                <td>binhlv@gmail.com</td>
                <td>Đại học</td>
                <td>Quản lý</td>
                <td>
                    <button type="button" class="btn btn-primary text-center" data-bs-toggle="modal"
                            data-bs-target="#exampleModal">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                             class="bi bi-plus-circle" viewBox="0 0 16 16">
                            <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
                            <path d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z"/>
                        </svg>
                    </button>
                </td>
                <td>
                    <a class="btn btn-primary" href="#" role="button">Danh sách các dịch vụ đi kèm</a>
                </td>
            </tr>
            <tr>
            <tr>
                <th scope="row">Hồ Thị Yến</th>
                <td>1995-12-12</td>
                <td>999231723</td>
                <td>0412352315</td>
                <td>thiyen@gmail.com</td>
                <td>Đại học</td>
                <td>Quản lý</td>

                <td>
                    <button type="button" class="btn btn-primary text-center" data-bs-toggle="modal"
                            data-bs-target="#exampleModal">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                             class="bi bi-plus-circle" viewBox="0 0 16 16">
                            <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
                            <path d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z"/>
                        </svg>
                    </button>
                </td>
                <td>
                    <a class="btn btn-primary" href="#" role="button">Danh sách các dịch vụ đi kèm</a>
                </td>
            </tr>
            <tr>
                <th scope="row">Nguyễn Hữu Hà</th>
                <td>1993-01-01</td>
                <td>534323231</td>
                <td>0941234553</td>
                <td>nhh0101@gmail.com</td>
                <td>Cao Đẳng</td>
                <td>Nhân viên</td>
                <td>
                    <button type="button" class="btn btn-primary text-center" data-bs-toggle="modal"
                            data-bs-target="#exampleModal">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                             class="bi bi-plus-circle" viewBox="0 0 16 16">
                            <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
                            <path d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z"/>
                        </svg>
                    </button>
                </td>
                <td>
                    <a class="btn btn-primary" href="#" role="button">Danh sách các dịch vụ đi kèm</a>
                </td>
            </tr>
            </tbody>
        </table>
    </div>
</div>
<%@include file="/view/include/footer.jsp" %>
</body>
</html>
