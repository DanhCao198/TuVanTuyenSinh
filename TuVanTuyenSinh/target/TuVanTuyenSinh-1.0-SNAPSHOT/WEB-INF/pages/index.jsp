<%-- 
    Document   : index
    Created on : Jul 29, 2023, 7:47:55 AM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div id="bannerCarousel" class="carousel slide" data-bs-ride="carousel">
                <div class="carousel-inner">
                    <c:forEach items="${banner}" var="dsb" varStatus="status">
                        <div class="carousel-item ${status.index == 0 ? 'active' : ''}">
                            <img src="${dsb.image}" alt="Banner Image" width="1000px" height="500px" class="d-block w-100" >
                        </div>
                    </c:forEach>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#bannerCarousel" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#bannerCarousel" data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>
        </div>
    </div>
</div>
<c:forEach items="${admission}" var="ds">
    <c:set var="trainingDisplayed" value="false" />
    <div class="container my-5">
        <h3 class="text-primary"id=${ds.idadmission} >${ds.typeoftraining}</h3>
        <div class="row">
            <c:forEach items="${posts}" var="dsp">
                <c:if test="${ds.typeoftraining==dsp.admissionIdadmission.typeoftraining}">
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
    </div>
</c:forEach>

<!-- Add JavaScript to handle banner navigation -->
  <script src="<c:url value="/assets/js/banner.js" />"></script>
