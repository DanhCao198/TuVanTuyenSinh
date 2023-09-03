<%-- 
    Document   : index
    Created on : Jul 29, 2023, 7:47:55 AM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<div class="banner">
    <img src="path_to_your_banner_image.jpg" alt="Banner Image" class="img-fluid">
</div>
<c:forEach items="${admission}" var="ds">      
    <section class="container my-5">
        <div class="row">
            <div class="col-md-4">
                <h3>${ds.typeoftraining}</h3>
            </div>
        </div>
    </section>
</c:forEach>
