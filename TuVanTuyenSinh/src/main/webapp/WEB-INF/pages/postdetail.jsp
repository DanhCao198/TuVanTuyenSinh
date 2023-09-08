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
                                            <c:if test="${post.idpost==ds.postIdpost.idpost}">
                                                <div class="d-flex flex-start mt-4">

                                                    <img class="rounded-circle shadow-1-strong me-3"
                                                         src="${ds.usersIdusers.avatar}" alt="avatar" width="65"
                                                         height="65" />
                                                    <div class="flex-grow-1 flex-shrink-1">
                                                        <div>
                                                            <div class="d-flex justify-content-between align-items-center">
                                                                <p class="mb-1">
                                                                    ${ds.usersIdusers.username} <span class="small">_${ds.createdDate}</span>
                                                                </p>
                                                                <a id="repbtn" href="#"><i class="fa fa-reply fa-xs"></i><span class="small"> reply</span></a>
                                                            </div>

                                                            <p class="small mb-0">
                                                                ${ds.commentinformation}
                                                            </p>
                                                            <div id="cmt">
                                                                <c:url value="/comment/${ds.idcomment}/reply/${post.idpost}/post" var="action" />
                                                                <form:form method="post" action="${action}" modelAttribute="addreply" enctype="multipart/form-data">
                                                                    <form:errors path="*" element="div" cssClass="alert alert-danger" />
                                                                    <form:hidden path="idreply" />

                                                                    <div class="form-floating mb-3 mt-3">
                                                                        <form:textarea  rows="3" cols="50"
                                                                                        path="replyinfomation" id="noidung"  />
                                                                    </div>
                                                                    <button class="btn btn-info" type="submit">Trả lời</button>
                                                                </form:form>
                                                            </div>
                                                        </div>

                                                        <c:forEach items="${reply}" var="dsrep">
                                                            <c:if test="${ds.idcomment==dsrep.fkreplyCommentid.idcomment}">
                                                                <div class="d-flex flex-start mt-4">
                                                                    <a class="me-3" href="#">
                                                                        <img class="rounded-circle shadow-1-strong"
                                                                             src="${dsrep.fkreplyUserid.avatar}" alt="avatar"
                                                                             width="65" height="65" />
                                                                    </a>
                                                                    <div class="flex-grow-1 flex-shrink-1">
                                                                        <div>
                                                                            <div class="d-flex justify-content-between align-items-center">
                                                                                <p class="mb-1">
                                                                                    ${dsrep.fkreplyUserid.username}<span class="small">_${dsrep.createdDate}</span>
                                                                                </p>
                                                                            </div>
                                                                            <p class="small mb-0">
                                                                                ${dsrep.replyinfomation}
                                                                            </p>
                                                                        </div>
                                                                    </div>
                                                                </div>

                                                            </c:if>
                                                        </c:forEach> 
                                                    </div>
                                                </div>
                                            </c:if>
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