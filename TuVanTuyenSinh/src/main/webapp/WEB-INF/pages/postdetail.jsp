<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<section class="container">
    <h1 class="text-center text-info mt-1">${post.postName}</h1>
    <div>    
        <p>${post.postinformation}</p>
        <img src="${post.postImg}" width="500px" height="300px"/>
    </div>

</section>
<script src="<c:url value="/assets/js/main1.js" />"></script>