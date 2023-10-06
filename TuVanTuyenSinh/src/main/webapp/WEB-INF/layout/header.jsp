<%-- 
    Document   : header
    Created on : Jul 29, 2023, 7:47:28 AM
    Author     : Admin
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/" var="action" />
<section class="mb-3 mt-3">
    <div class="">
        <div class="row justify-content-between">
            <div class="col-md-8 order-md-last">
                <div class="row">
                    <div class="col-md-6 text-center">
                        <a class="navbar-brand" href="${action}">CỔNG THÔNG TIN TƯ VẤN TUYỂN SINH</a>
                    </div>
                    <div class="col-md-6 d-md-flex justify-content-end mb-md-0 mb-3">
                        <form class="searchform order-lg-last" action="${action}">
                            <div class="form-group d-flex">
                                <input type="text" class="form-control pl-3" name="kw" placeholder="Tìm kiếm theo hệ đào tạo..">
                                <button type="submit" class="form-control search">Tìm</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-md-4 d-flex">
                <div class="social-media">
                    <p class="mb-0 d-flex">
                        <img src="https://res.cloudinary.com/dev7q6f9g/image/upload/v1694165864/oaetvtnfrjfrf0emhojk.png"/>
                    </p>
                </div>
            </div>
        </div>
    </div>

    <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
        <div class="container-fluid">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="fa fa-bars"></span> Menu
            </button>
            <div class="collapse navbar-collapse" id="ftco-nav">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active"><a href="<c:url value='/'/>" class="nav-link">Trang Chủ</a></li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="dropdown04" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Hệ</a>
                        <div class="dropdown-menu" aria-labelledby="dropdown04">
                            <c:forEach items="${admission}" var="ds">
                                <a class="dropdown-item" href="#${ds.idadmission}">${ds.typeoftraining}</a>
                            </c:forEach>
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="dropdown04" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Khoa</a>
                        <div class="dropdown-menu" aria-labelledby="dropdown04">
                            <c:forEach items="${faculties}" var="ds">
                                <a class="dropdown-item" href="<c:url value='/facultiesdetail/${ds.idfaculty}'/>">${ds.facultyname}</a>
                            </c:forEach>
                        </div>
                    </li>
                    <li class="nav-item"><a href="<c:url value='/school'/>" class="nav-link">Giới thiệu</a></li>
                    <li class="nav-item"><a href="<c:url value='/benmarks'/>" class="nav-link">Điểm chuẩn</a></li>
                    <li class="nav-item"><a href="<c:url value='/livestreamlist/'/>" class="nav-link">Livestreams</a></li>
                    <li class="nav-item"><a href="<c:url value='/lienhe'/>" class="nav-link">Liên hệ</a></li>
                </ul>
            </div>
            <ul class="navbar-nav ml-auto">
                <c:choose>
                    <c:when test="${pageContext.request.userPrincipal.name != null}">
                        <li class="nav-item">
                            <div id="avatar-notification-container" style="display: flex; align-items: center;">
                                <span id="notification-icon" class="notification-icon" style="font-size: 30px; color: #FFFFFF;">
                                    <i class="fa fa-bell"></i>
                                </span>
                                <div id="notification-dropdown-container" style="position: relative; margin-left: 10px;">                                    
                                    <div class="dropdown-menu" id="notification-dropdown" aria-labelledby="notification-dropdown-link" style="position: absolute; right: auto; left: 0; top: 100%; min-width: 200px;">
                                        <!-- Nội dung thông báo sẽ được đưa vào đây -->
                                    </div>
                                </div>

                                <c:if test="${user.roleUserIdRoleuser.name == 'ROLE_ADMIN'}">
                                    <div id="management-icon-container" style="display: flex; align-items: center;">
                                        <div class="management-icon rounded-circle" onclick="toggleManagementMenu()">
                                            <i class="fa fa-bars"></i>
                                        </div>

                                        <div id="management-menu" class="management-menu" style="display: none;">
                                            <a class="dropdown-item" href="<c:url value='/admin/facultysetting/' />">Quản lý khoa</a>
                                            <a class="dropdown-item" href="<c:url value='/admin/majorsetting/' />">Quản lý ngành</a>
                                            <a class="dropdown-item" href="<c:url value='/admin/settings/' />">Quản lý bài viết</a>
                                            <a class="dropdown-item" href="<c:url value='/admin/livestreamsetting/' />">Quản lý livestream</a>
                                            <a class="dropdown-item" href="<c:url value='/admin/bannersetting/' />">Quản lý Banners</a>
                                            <a class="dropdown-item" href="<c:url value='/admin/userssettings/' />">Quản lý người dùng</a>
                                        </div>

                                    </div>
                                </c:if>

                                <div id="avatar-container" class="dropdown" style="position: relative; margin-left: 10px;">
                                    <a class="" href="#" role="button" id="avatar-dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <div class="avatar" style="position: relative;">
                                            <c:if test="${pageContext.request.userPrincipal.name != null}">
                                                <img src="${user.avatar}" width="60px" height="60px" id="user-avatar" />
                                            </c:if>
                                        </div>
                                    </a>
                                    <div class="dropdown-menu" aria-labelledby="avatar-dropdown" style="position: absolute; right: auto; left: -24px; top: 100%; min-width: 100px;">
                                        <c:if test="${pageContext.request.userPrincipal.name != null}">
                                            <div class="username">${pageContext.request.userPrincipal.name}</div>
                                            <hr class="username-separator" />

                                        </c:if>
                                        <div class="logout"><a class="dropdown-item" href="<c:url value='/logout' />">Đăng Xuất</a></div>

                                    </div>
                                </div>
                            </div>

                        </li>
                    </c:when>
                    <c:otherwise>
                        <li class="nav-item">
                            <a href="<c:url value='/login' />" class="nav-link">Đăng Nhập</a>
                        </li>
                        <li class="nav-item">
                            <a href="<c:url value='/register' />" class="nav-link">Đăng Ký</a>
                        </li>
                    </c:otherwise>
                </c:choose>
            </ul>
        </div>
    </nav>
    <!-- END nav -->
</section>
<script>
    $(document).ready(function () {
        $("#avatar-dropdown").click(function (e) {
            e.preventDefault();


            $("#avatar-container").toggleClass("show");
        });
    });
</script>
<script>
    $(document).ready(function () {
        $("#notification-dropdown").hide();
        $("#notification-icon").click(function (event) {
            event.stopPropagation();
            $.ajax({
                url: "/get-notifications",
                method: "GET",
                success: function (data) {
                    $("#notification-dropdown").html(data);
                    $("#notification-dropdown").show();
                }
            });
        });
        $(document).click(function () {
            $("#notification-dropdown").hide();
        });
        $("#notification-dropdown-container").click(function (event) {
            event.stopPropagation();
        });
    });
</script>


<script>
    function toggleManagementMenu() {
        var managementMenu = document.getElementById("management-menu");
        if (managementMenu.style.display === "none") {
            managementMenu.style.display = "block";
        } else {
            managementMenu.style.display = "none";
        }
    }
</script>


