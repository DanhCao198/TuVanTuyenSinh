<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<c:url value="/gpt/" var="action" />
<form:form modelAttribute="gptModel" action="${action}" method="post"  enctype="multipart/form-data">
    <form:textarea required="true" path="cauHoi" class="form-control" id="textAreaExample" rows="4"
                   style="background: #fff;"/>
    <button type="submit" class="btn btn-primary btn-block">Send</button>
</form:form>
<div class="row mt-5 text-dark">
    <hr>
    <c:forEach items="${gptRespone}" var="p">
        <div class="col-12 font-weight-bold"><p>Question</p></div>
        <details><div class="col-12 text-justify">${p.cauHoi}</div></details>

        <div class="col-12 font-weight-bold"><p>Answer</p></div>
        <div class="col-12 text-justify">${p.cauTraLoi}</div>
        <hr>
    </c:forEach>
</div>
