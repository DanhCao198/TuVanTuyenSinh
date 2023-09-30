<%-- 
    Document   : livestreamlist
    Created on : Sep 29, 2023, 6:09:05 PM
    Author     : HP
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<section class="container">
    <div class="row">
        <c:forEach items="${livestreams}" var="ds">
            <div class="col-md-6">
                <div class="card mb-4">
                    <div class="card-body">
                        <h5 class="nav-link text-sm-left" style="text-decoration: none; color: black;">Thông báo livestream</h5>
                        <a class="nav-item" href="<c:url value='/livestreamlist/${ds.idlivestreams}'/>">
                            <h2 class="nav-link">${ds.title}</h2>
                        </a>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</section>
<script src="<c:url value="/assets/js/main1.js" />"></script>
