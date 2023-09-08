<%-- 
    Document   : postlist
    Created on : Sep 5, 2023, 8:18:59 PM
    Author     : HP
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<section class="container">

    <c:if test="${counter > 1}">
        <ul class="pagination mt-1">
            <li class="page-item"><a class="page-link" href="<c:url value="/postlist/${admissions.idadmission}/" />">Tất cả</a></li>
                <c:forEach begin="1" end="${counter}" var="i">
                    <c:url value="/postlist/${admissions.idadmission}/" var="pageUrl">
                        <c:param name="page" value="${i}"></c:param>
                    </c:url>
                <li class="page-item"><a class="page-link" href="${pageUrl}">${i}</a></li>
                </c:forEach>
        </ul>
    </c:if>
    <h1 class="text-center text-info mt-1">${admissions.typeoftraining}</h1>
    <div class="row">
        <c:forEach items="${posts}" var="dsp">
            <c:if test="${admissions.typeoftraining==dsp.admissionIdadmission.typeoftraining}">
                <div class="col-md-6">
                    <div class="card mb-4">
                        <div class="card-body">
                                <h5 class="nav-link text-sm-left" style="text-decoration: none; color: black;">${dsp.posttype}</h5>
                                <a class="nav-item" href="<c:url value='/postdetail/${dsp.idpost}'/>">
                                    <h2 class="nav-link">${dsp.postName}</h2>
                                </a>
                            </div>
                    </div>
                </div>
            </c:if>
        </c:forEach>
    </div>
</section>

<script src="<c:url value="/assets/js/main1.js" />"></script>