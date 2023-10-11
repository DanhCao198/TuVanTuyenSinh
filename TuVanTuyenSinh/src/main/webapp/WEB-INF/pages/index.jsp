<%-- 
    Document   : index
    Created on : Jul 29, 2023, 7:47:55 AM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<style>
    .section_subs {
        background-color: black;
        padding: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
    }

    .section_subs * {
        color: white;
    }
    select.browser-default.custom-select{
        color: black;
    }
    select.browser-default.custom-select option {
        color: black;
    }
</style>
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div id="bannerCarousel" class="carousel slide" data-bs-ride="carousel">
                <div class="carousel-inner">
                    <c:forEach items="${banner}" var="dsb" varStatus="status">
                        <div class="carousel-item ${status.index == 0 ? 'active' : ''}">
                            <img src="${dsb.image}" alt="Banner Image" class="d-block w-100 border-light">
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


<c:forEach items="${admission}" var="ds" >  
    <div class="container my-5">
        <h2 class="card-title text-primary text-center fw-bold mb-4" id="${ds.idadmission}">THÔNG TIN TUYỂN SINH ĐẠI HỌC ${ds.typeoftraining}</h2>
        <div class="row">
            <c:set var="postCount" value="0" />
            <c:forEach items="${posts}" var="dsp" varStatus="loopStatus">
                <c:if test="${ds.typeoftraining eq dsp.admissionIdadmission.typeoftraining && postCount lt 5}">
                    <div class="col-md-6">
                        <div class="card mb-4">
                            <div class="card-body">
                                <img src="${dsp.postImg}" width="120px" height="90px" class="rounded-4 float-left display-inline-block mr-3"/>
                                <a class="nav-item mt-3 " href="<c:url value='/postdetail/${dsp.idpost}'/>" style="text-decoration: none; ">
                                    <h3 class="nav-link mt-3 text-danger fw-bold"><img src="https://tuyensinh.ou.edu.vn/theme/ts2020/assets/images/icon-new.gif" style="width:48px;height:24px;"> ${dsp.postName}</h3>
                                </a>
                            </div>
                        </div>
                    </div>
                    <c:set var="postCount" value="${postCount + 1}" />
                </c:if>
            </c:forEach>
            <a class="float-right"href="<c:url value='/postlist/${ds.idadmission}/'/>">
                <h6 class="float-right">Xem thêm >></h6>
            </a>
        </div>
    </div>
</c:forEach>
<section class="p-5 align-self-center section_subs bg-primary">
    <div class="container">
        <div class="col-md-12 m-pad-subs">
            <div id="w-4_container">
                <div id="w-4">
                    <div class="rendered-form ">
                        <div class="">
                            <h1 class="text-center section_subs_title fw-bold" id="control-849089">
                                CÂU HỎI TUYỂN SINH<br>
                            </h1>
                        </div>
                        <div class="fb-text form-group field-hoten">
                            <label for="hoten" class="fb-text-label">Họ tên:<br></label>
                            <input type="text" class="form-control" name="hoten" maxlength="100" id="hoten">
                        </div>
                        <div class="fb-text form-group field-email">
                            <label for="email" class="fb-text-label">Email:</label>
                            <input type="text" class="form-control" name="email" id="email">
                        </div>
                        <div class="fb-text form-group field-dienthoai">
                            <label for="dienthoai" class="fb-text-label">Số điện thoại:<br></label>
                            <input type="text" class="form-control" name="dienthoai" id="dienthoai">
                        </div>
                        <div class="fb-textarea form-group field-textarea-1581500170575">
                            <label for="textarea-1581500170575" class="fb-textarea-label">Câu hỏi<br> </label>
                            <textarea type="textarea" class="form-control" name="textarea-1581500170575" id="textarea-1581500170575"></textarea>
                        </div>
                        <div class="fb-select form-group field-hedt">
                            <label class="fb-select-label">Hệ đào tạo:<br></label>
                            <select class="browser-default custom-select" id="hedtSelect" name="hedt">
                                <c:forEach items="${admission}" var="ds">
                                    <option value="${ds.typeoftraining}">${ds.typeoftraining}</option>
                                </c:forEach>
                            </select>
                        </div>
                    </div>
                </div>
                <div id="w-4_footer">
                    <button type="button" class=" btn btn-danger m-btn-regsubs waves-effect waves-light"  onclick="do_submit_widget_form_4();return false;">
                        Đăng ký nhận thông tin
                    </button>
                </div>
            </div>
        </div>
    </div>
</section>
<script src="<c:url value="/assets/js/banner.js" />"></script>
