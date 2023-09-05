<%-- 
    Document   : AdminSettings
    Created on : Sep 1, 2023, 4:46:45 PM
    Author     : HP
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<section class="container">
    <h1 class="text-center text-info mt-1">${post.postName}</h1>
    <div>    
        <p>${post.postinformation}</p>
        <img src="${post.postImg}" width="500px" height="300px"/>
    </div>
    <form action="comments.jsp" method="post">
        <textarea name="commentText" rows="4" cols="50"></textarea><br>
        <input type="submit" value="Add Comment">
    </form>

    <!-- Danh sách bình luận -->
    <h2>Comments</h2>
    <ul>
        <c:forEach var="comment" items="${comments}">
            <li>${comment.commentText}</li>
            </c:forEach>
    </ul>
</section>
<script src="<c:url value="/assets/js/main1.js" />"></script>
