<%-- 
    Document   : postlist
    Created on : Sep 5, 2023, 8:18:59 PM
    Author     : HP
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<section class="container">
    <h1 class="text-center text-info mt-1">${admissions.typeoftraining}</h1>
    <div class="row">
        <c:forEach items="${posts}" var="dsp">
            <c:if test="${admissions.typeoftraining==dsp.admissionIdadmission.typeoftraining}">
                <div class="col-md-6">
                    <div class="card mb-4">
                        <div class="card-body">
                            <a href="<c:url value='/postdetail/${dsp.idpost}'/>">
                                <h4 class="card-title fw-bold">${dsp.postName}</h4>
                            </a>
                        </div>
                    </div>
                </div>
            </c:if>
        </c:forEach>
    </div>
</section>
<script src="<c:url value="/assets/js/main1.js" />"></script>