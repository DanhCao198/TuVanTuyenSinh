<%-- 
    Document   : AdminSettings
    Created on : Sep 1, 2023, 4:46:45 PM
    Author     : HP
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>

<section class="container">
    <h1 class="text-center text-info mt-1">DANH SÁCH KHOA</h1>
    <c:if test="${user.roleUserIdRoleuser.name == 'ROLE_ADMIN'}">
        <section class="container">
            <div class="text-right mb-3">
                <a href="<c:url value='/admin/faculty' />" class="btn btn-info">Thêm Khoa</a>
            </div>
        </section>
    </c:if>
    <table class="table table-bordered">
        <thead>
            <tr>
                <th>id</th>
                <th>Tên Khoa</th>
                <th>Website</th>
                <th>Video</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${faculty}" var="ds">
                <tr>
                    <td>${ds.idfaculty}</td>
                    <td>${ds.facultyname}</td>
                     <td>${ds.website}</td>
                      <td>${ds.introvideo}</td>
                    <td>  
                        <c:url value="/api/faculty/${ds.idfaculty}" var="apiDel" />
                        <a href="<c:url value="/admin/faculty/${ds.idfaculty}" />" class="btn btn-success">Cập nhật</a>
                        <button class="btn btn-danger" onclick="delPost('${apiDel}', ${ds.idfaculty})">Xóa</button>
                    </td>
                </tr>   
            </c:forEach>
        </tbody>
    </table>
</section>
