<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

    <section class="container mt-5">
        <div class="card">
            <div class="card-body">
                <h1 class="card-title text-center text-info">${faculties1.facultyname}</h1>
                <h2>Giới thiệu</h2>
                <p class="card-text">${faculties1.gioiThieu}</p>
                <h2>Mô tả chương trình đào tạo</h2>
                <p class="card-text">${faculties1.moTaCTDT}</p>
                <p class="card-text">
                    <a href="${faculties1.website}" target="_blank" class="btn btn-primary">Truy cập Website</a>
                </p>
            </div>
        </div>
    </section>
    <!-- Include your custom JavaScript file -->
    <script src="<c:url value='/assets/js/main1.js' />"></script

