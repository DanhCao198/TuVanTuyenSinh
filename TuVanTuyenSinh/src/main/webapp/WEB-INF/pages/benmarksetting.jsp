<%-- 
    Document   : Post
    Created on : Aug 31, 2023, 5:17:09 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<h1 class="text-center text-info mt-1">Điểm chuẩn trường đại học mở thành phố Hồ Chí Minh</h1>
<c:url value="/admin/benmarks" var="action" />
<form:form method="post" action="${action}" modelAttribute="benmarks" enctype="multipart/form-data">
    <form:errors path="*" element="div" cssClass="alert alert-danger" />
    <form:hidden path="idbenmarks" />
    <div class="form-floating mb-3 mt-3">
        <form:select class="form-select" id="facultyIdfaculty" name="facultyIdfaculty" 
                     path="facultyIdfaculty">
            <c:forEach items="${faculties}" var="fa">
                <c:choose>
                    <c:when test="${fa.idfaculty == post.facultyIdfaculty.idfaculty}">
                        <option value="${fa.idfaculty}" selected>${fa.facultyname}</option>
                    </c:when>
                    <c:otherwise>
                        <option value="${fa.idfaculty}" selected>${fa.facultyname}</option>
                    </c:otherwise>
                </c:choose>

            </c:forEach>
        </form:select>
        <label for="des">Khoa</label>
    </div>
    <div class="form-floating mb-3 mt-3">
        <form:input type="text" class="form-control" 
                    path="diemthpt" id="diemthpt" placeholder="Điểm thpt" />
        <label for="name">Điểm thpt</label>
    </div>
    <div class="form-floating mb-3 mt-3">
        <form:input type="text" class="form-control" 
                        path="diemhocba" id="diemhocba" placeholder="Điểm học bạ" />
        <label for="name">Điểm học bạ</label>
    </div>
   <div class="form-floating mb-3 mt-3">
        <form:input type="text" class="form-control" 
                    path="diemdgnl" id="diemdgnl" placeholder="Điểm DGNL" />
        <label for="name">Điểm DGNL</label>
    </div>
    <div class="form-floating mb-3 mt-3">
        <form:input type="text" class="form-control" 
                        path="year" id="year" placeholder="Năm" />
        <label for="name">Năm</label>
    </div>
    <div class="form-floating mb-3 mt-3">
        <button class="btn btn-info" type="submit">
            <c:choose>
                <c:when test="${benmarks.idbenmarks == null}">Thêm</c:when>
                <c:otherwise>Cập nhật</c:otherwise>
            </c:choose>
        </button>
    </div>

</form:form>