<%-- 
    Document   : livestreamdetail
    Created on : Sep 29, 2023, 6:09:24 PM
    Author     : HP
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="card mb-4">
    <div class="text-right mb-3">
        <a href="<c:url value='/questionlist/${livestream.idlivestreams}/' />" class="btn btn-info">Danh sách câu hỏi</a>
    </div>
    <section class="container">
        <h1 class="row d-flex justify-content-center">${livestream.title}</h1>
        <h5 class="text-sm-right" style="text-decoration: none; color: black;">${livestream.createdDate}</h5>
        <h5 class="text-sm-right" style="text-decoration: none; color: black;">Thông báo livestream</h5>
        <p class="text-justify">${livestream.livestreaminfomation}</p>
        <div class="d-flex justify-content-center">
            <img src="${livestream.picture}" width="500px" height="300px" />
        </div>
        <p class="text-justify">Thời gian bắt đầu: ${livestream.startTime}</p>
        <p class="text-justify">Thời gian kết thúc: ${livestream.endTime}</p>
        <h5 class="text-sm-right" style="text-decoration: none; color: black;">Tác giả: ${livestream.usersIdusers.username}</h5>
    </section>
</div>
<script src="<c:url value="/assets/js/main1.js" />"></script>