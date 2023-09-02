<%-- 
    Document   : AdminSettings
    Created on : Sep 1, 2023, 4:46:45 PM
    Author     : HP
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<a href="<c:url value='/admin/posts' />" class="nav-link">Đăng bài</a>

<table class="table table-bordered">
    <thead>
        <tr>
            <th>id</th>
            <th>Tiêu đề</th>
            <th>Loại Bài Đăng</th>
            <th>Nội dung</th>
            <th>Tác Giả</th>
            <th>Hình ảnh</th>
            <th>Tên Khoa</th>
            <th>Loại đào tạo</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach items="${posts}" var="ds">
            <tr>
                <td>${ds.idpost}</td>
                <td>${ds.postName}</td>
                <td>${ds.posttype}</td>
                <td>${ds.postinformation}</td>
                <td>${ds.usersIdusers.firstName} ${ds.usersIdusers.lastName}</td>
                <td> <img src="${ds.postImg}" width="30px" height="20px"/></td>
                <td>${ds.facultyIdfaculty.facultyname}</td>
                <td>${ds.admissionIdadmission.typeoftraining}</td>
               
            </tr>   
        </c:forEach>
    </tbody>
</table>
