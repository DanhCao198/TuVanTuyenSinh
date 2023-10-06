<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="card mb-4">
    <div class="text-right mb-3">
        <a href="<c:url value='/questionlist/${post.idpost}/' />" class="btn btn-info">Danh sách câu hỏi</a>
    </div>
    <section class="container">
        <h1 class="row d-flex justify-content-center">${post.postName}</h1>
        <h5 class="text-sm-right" style="text-decoration: none; color: black;">${post.posttype}</h5>
        <p class="text-justify">${post.postinformation}</p>
        <div class="d-flex justify-content-center">
            <img src="${post.postImg}" width="500px" height="300px" />
        </div>
        <h5 class="text-sm-right" style="text-decoration: none; color: black;">Tác giả: ${post.usersIdusers.username}</h5>
        <section class="gradient-custom">
            <div class="container my-5 py-5">
                <div class="row d-flex justify-content-center">
                    <div class="col-md-12 col-lg-10 col-xl-8">
                        <div class="card">
                            <div class="card-body p-4">
                                <div class="row">
                                    <div class="col">
                                        <c:url value="/postdetail/${post.idpost}/comment/" var="action" />
                                        <form:form method="post" action="${action}" modelAttribute="comments" enctype="multipart/form-data">
                                            <form:errors path="*" element="div" cssClass="alert alert-danger" />
                                            <form:hidden path="idcomment" />

                                            <div class="form-floating mb-3 mt-3">
                                                <form:textarea  rows="3" cols="85"
                                                                path="commentinformation" id="noidung" placeholder="Nhập bình luận" />
                                            </div>
                                            <button class="btn btn-info" type="submit">Submit</button>
                                        </form:form>
                                        <c:forEach items="${comment}" var="ds">

                                            <c:if test="${ds.commentIdcomment == null && ds.postIdpost.idpost == post.idpost}">
                                                <div class="d-flex flex-start mt-4">

                                                    <img class="rounded-circle shadow-1-strong me-3"
                                                         src="${ds.usersIdusers.avatar}" alt="avatar" width="65"
                                                         height="65" />
                                                    <div class="flex-grow-1 flex-shrink-1">
                                                        <div>
                                                            <div class="d-flex justify-content-between align-items-center">
                                                                <p class="mb-1" class ="commentDate">
                                                                    ${ds.usersIdusers.username} <span class="small">_${ds.createdDate}</span>
                                                                </p>
                                                                <a id="repbtn" href="#"><i class="fa fa-reply fa-xs"></i><span class="small"> reply</span></a>
                                                            </div>

                                                            <p class="small mb-0">
                                                                ${ds.commentinformation}
                                                            </p>
                                                            <div id="cmt">
                                                                <c:url value="/postdetail/${post.idpost}/comment/${ds.idcomment}/reply/${ds.idcomment}/" var="action" />
                                                                <form:form method="post" action="${action}" modelAttribute="comments" enctype="multipart/form-data">
                                                                    <form:errors path="*" element="div" cssClass="alert alert-danger" />
                                                                    <form:hidden path="idcomment" />

                                                                    <div class="form-floating mb-3 mt-3">
                                                                        <form:textarea  rows="3" cols="50"
                                                                                        path="commentinformation" id="noidung"  />
                                                                    </div>
                                                                    <button class="btn btn-info" type="submit">Trả lời:${ds.usersIdusers.username}</button>
                                                                </form:form>
                                                            </div> 
                                                        </div>
                                                    </div>
                                                </div>
                                            </c:if>
                                            <c:forEach items="${comment}" var="ds1">

                                                <c:if test="${ds1.commentIdcomment.idcomment != null && ds1.commentIdcomment.idcomment == ds.idcomment}">
                                                    <div class="d-flex flex-start mt-4 ml-5" >
                                                        <img class="rounded-circle shadow-1-strong me-3"
                                                             src="${ds1.usersIdusers.avatar}" alt="avatar" width="65"
                                                             height="65" />
                                                        <div class="flex-grow-1 flex-shrink-1">
                                                            <div>
                                                                <div class="d-flex justify-content-between align-items-center">
                                                                    <p class="mb-1" class ="commentDate">
                                                                        ${ds1.usersIdusers.username} <span class="small">_${ds1.createdDate}</span>
                                                                    </p>
                                                                    <a id="repbtn" href="#"><i class="fa fa-reply fa-xs"></i><span class="small"> reply</span></a>
                                                                </div>

                                                                <p class="small mb-0">
                                                                    ${ds1.commentinformation} - Trả lời bình luận của ${ds1.commentidcommentReply.usersIdusers.username}
                                                                </p>
                                                                <div id="cmt">
                                                                    <c:url value="/postdetail/${post.idpost}/comment/${ds.idcomment}/reply/${ds1.idcomment}/" var="action" />
                                                                    <form:form method="post" action="${action}" modelAttribute="comments" enctype="multipart/form-data">
                                                                        <form:errors path="*" element="div" cssClass="alert alert-danger" />
                                                                        <form:hidden path="idcomment" />

                                                                        <div class="form-floating mb-3 mt-3">
                                                                            <form:textarea  rows="3" cols="50"
                                                                                            path="commentinformation" id="noidung"  />
                                                                        </div>
                                                                        <button class="btn btn-info" type="submit">Trả lời:${ds1.usersIdusers.username}</button>
                                                                    </form:form>
                                                                </div> 
                                                            </div>
                                                        </div>
                                                    </div>
                                                </c:if>
                                            </c:forEach> 
                                        </c:forEach>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </section>
</div>
<script src="<c:url value="/assets/js/main1.js" />"></script>
<script>
    var x = true;
    function myFunction() {
        if (x === true) {
            document.getElementById("repbtn").style.display = "block";
            x = false;
        } else if (x === false) {
            document.getElementById("repbtn").style.display = "none";
            x = true;
        }
    }
</script>
<script>
    window.onload = function () {
        let dates = document.getElementsByClassName("commentDate")
        for (let i = 0; i < dates.length; i++)
            dates[i].innerText = moment(dates[i].innerText).fromNow()
    }
</script>
