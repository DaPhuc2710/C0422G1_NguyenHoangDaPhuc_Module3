<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 04/08/2022
  Time: 9:16 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
            crossorigin="anonymous"></script>

</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light container sticky-top">
    <div class="container-fluid bg-transparent ">
        <a class="navbar-brand" href="#">Home</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false"
                aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavDropdown">
            <ul class="navbar-nav">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink1" role="button"
                       data-bs-toggle="dropdown" aria-expanded="false">
                        Dịch Vụ
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                        <li><a class="dropdown-item" href="#">Danh sách dịch vụ</a></li>
                        <li><a class="dropdown-item" href="#">Thêm mới dich vụ</a></li>
                        <li><a class="dropdown-item" href="#">Chỉnh sửa dịch vụ</a></li>
                        <%--                <li><a class="dropdown-item" href="#">Xóa dịch vụ</a></li>--%>
                    </ul>
                </li>

                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink3" role="button"
                       data-bs-toggle="dropdown" aria-expanded="false">
                        Khách Hàng
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                        <li><a class="dropdown-item" href="http://localhost:8080/view/crud/list-customer.jsp">Danh sách khách hàng</a></li>
                        <li><a class="dropdown-item" href="#">Thêm mới khách hàng</a></li>
                        <li><a class="dropdown-item" href="#">Chỉnh sửa khách hàng</a></li>
                        <%--                <li><a class="dropdown-item" href="#">Xóa dịch vụ</a></li>--%>
                    </ul>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink2" role="button"
                       data-bs-toggle="dropdown" aria-expanded="false">
                        Nhân viên
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                        <li><a class="dropdown-item" href="http://localhost:8080/view/crud/list-employee.jsp">Danh sách nhân viên</a></li>
                        <li><a class="dropdown-item" href="#">Thêm mới nhân viên</a></li>
                        <li><a class="dropdown-item" href="#">Chỉnh sửa nhân viên</a></li>
                        <%--                <li><a class="dropdown-item" href="#">Xóa dịch vụ</a></li>--%>
                    </ul>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink4" role="button"
                       data-bs-toggle="dropdown" aria-expanded="false">
                        Hợp đồng
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                        <li><a class="dropdown-item" href="#">Thêm mới hợp đồng</a></li>
                        <li><a class="dropdown-item" href="#">Chỉnh sửa chỉnh sửa</a></li>
                        <%--                <li><a class="dropdown-item" href="#">Xóa dịch vụ</a></li>--%>
                    </ul>
                </li>
            </ul>
        </div>
        <nav class="navbar navbar-light ">
            <div class="container-fluid">
                <form class="d-flex">
                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-primary" type="submit">Search</button>
                </form>
            </div>
        </nav>
    </div>
</nav>



</body>
</html>
