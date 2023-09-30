<%-- 
    Document   : livestreams
    Created on : Sep 29, 2023, 6:08:49 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<h1 class="text-center text-info mt-1">Tạo thông báo livestream</h1>
<c:url value="/admin/livestreams" var="action" />
<form:form method="post" action="${action}" modelAttribute="livestream" enctype="multipart/form-data">
    <form:errors path="*" element="div" cssClass="alert alert-danger" />
    <form:hidden path="idlivestreams" />
    <form:hidden path="picture" />

    <div class="form-floating mb-3 mt-3">
        <form:input type="text" class="form-control" 
                    path="title" id="ten" placeholder="Tên tiêu đề" />
        <label for="name">Tên tiêu đề</label>
    </div>
    <div class="form-floating mb-3 mt-3">
        <form:textarea  rows="10" cols="148"
                        path="livestreaminfomation" id="noidung" placeholder="Nội dung" />
    </div>
    <div class="form-floating mt-3 mb-3">
        <form:input type="file" class="form-control"
                    path="file" id="picture" name="picture"/>
        <label for="postImg">Chọn hình</label>
    </div>
    <div class="form-floating mb-3 mt-3">
        <button class="btn btn-info" type="submit">
            <c:choose>
                <c:when test="${livestream.idlivestreams == null}">Thêm</c:when>
                <c:otherwise>Cập nhật</c:otherwise>
            </c:choose>
        </button>
    </div>

</form:form>