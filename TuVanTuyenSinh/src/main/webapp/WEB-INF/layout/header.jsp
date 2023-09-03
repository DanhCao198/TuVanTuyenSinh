<%-- 
    Document   : header
    Created on : Jul 29, 2023, 7:47:28 AM
    Author     : Admin
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<section class="mb-3 mt-3">
    <div class="">
        <div class="row justify-content-between">
            <div class="col-md-8 order-md-last">
                <div class="row">
                    <div class="col-md-6 text-center">
                        <a class="navbar-brand" href="">Cổng thông tin <br>Tư Vấn Tuyển Sinh</br></a>
                    </div>
                    <div class="col-md-6 d-md-flex justify-content-end mb-md-0 mb-3">
                        <form action="#" class="searchform order-lg-last">
                            <div class="form-group d-flex">
                                <input type="text" class="form-control pl-3" placeholder="Search">
                                <button type="submit" placeholder="" class="form-control search"><span class="fa fa-search"></span></button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-md-4 d-flex">
                <div class="social-media">
                    <p class="mb-0 d-flex">

                        <img src="https://res.cloudinary.com/dev7q6f9g/image/upload/v1693319387/norzb2fl19qkalnqtmn5.png" width="60px" height="40px"/>

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
                <ul class="navbar-nav m-auto">
                    <li class="nav-item active"><a href="<c:url value='/'/>" class="nav-link">Trang Chủ</a></li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="dropdown04" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Hệ</a>
                        <div class="dropdown-menu" aria-labelledby="dropdown04">
                            <a class="dropdown-item" href="#">Hệ Chính Quy</a>
                            <a class="dropdown-item" href="#">Hệ Đào Tạo Từ Xa</a>
                            <a class="dropdown-item" href="#">Văn Bằng 2</a>
                            <a class="dropdown-item" href="#">Liên Thông</a>
                            <a class="dropdown-item" href="#">Cao học</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="dropdown04" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Khoa</a>
                        <div class="dropdown-menu" aria-labelledby="dropdown04">
                            <a class="dropdown-item" href="#">Công nghệ thông tin</a>
                            <a class="dropdown-item" href="#">Xây dựng</a>
                            <a class="dropdown-item" href="#">Tài chính ngân hàng</a>
                            <a class="dropdown-item" href="#">Quản trị kinh doanh</a>
                            <a class="dropdown-item" href="#">Ngôn ngữ</a>
                            <a class="dropdown-item" href="#">Xã hội học</a>
                        </div>
                    </li>
                      <li class="nav-link"><a href="<c:url value='/school'/>" class="nav-link">Giới thiệu</a></li>
                </ul>
            </div>     
            <ul class="navbar-nav ml-auto">
                <c:choose>
                    <c:when test="${pageContext.request.userPrincipal.name != null}">
                        <li class="nav-item">
                            <c:if test="${user.roleUserIdRoleuser.name == 'ROLE_ADMIN'}">
                                <a class="nav-link" href="<c:url value='/admin/settings/' />">Quản lý</a>
                            </c:if>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="<c:url value='/' />">
                                <c:if test="${user!=null}">
                                    <img src="${user.avatar}" width="30px" height="20px"/>
                                </c:if>
                                ${pageContext.request.userPrincipal.name}
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" margin="10px" href="<c:url value='/logout' />">Đăng Xuất</a>
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