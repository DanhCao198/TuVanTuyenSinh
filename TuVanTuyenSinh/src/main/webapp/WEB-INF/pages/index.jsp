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

</style>
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
<a href="bannersetting.jsp"></a>


<c:forEach items="${admission}" var="ds" >  
    <div class="container my-5">
        <a href="<c:url value='/postlist/${ds.idadmission}/'/>">
            <h3 class="card-title text-dark fw-bold" id="${ds.idadmission}">${ds.typeoftraining}</h3>
        </a>
        <div class="row">
            <c:set var="postCount" value="0" />
            <c:forEach items="${posts}" var="dsp" varStatus="loopStatus">
                <c:if test="${ds.typeoftraining eq dsp.admissionIdadmission.typeoftraining && postCount lt 5}">
                    <div class="col-md-6">
                        <div class="card mb-4">
                            <div class="card-body">
                                <h5 class="nav-link text-sm-left" style="text-decoration: none; color: black;">${dsp.posttype}</h5>
                                <a class="nav-item" href="<c:url value='/postdetail/${dsp.idpost}'/>">
                                    <h2 class="nav-link">${dsp.postName}</h2>
                                </a>
                            </div>
                        </div>
                    </div>
                    <c:set var="postCount" value="${postCount + 1}" />
                </c:if>
            </c:forEach>
        </div>
    </div>
</c:forEach>
<section class="p-5 align-self-center section_subs">
    <div class="container">
        <div class="col-md-12 m-pad-subs">
            <script src="https://tuyensinh.ou.edu.vn/core/plugins/formbuilder/form-render.min.js"></script>
            <div id="w-4_container">
                <div id="w-4">
                    <div class="rendered-form">
                        <div class="">
                            <h1 class="text-center section_subs_title" id="control-849089">
                                Câu hỏi Tuyển Sinh<br>
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
                            <label for="hedt" class="fb-select-label">Hệ đào tạo:<br></label>
                            <select class="browser-default custom-select" name="hedt" id="hedt">
                                <option value="daihoc_cq_daitra" selected="true" id="hedt-0">Đại học chính quy (Hệ đại trà)</option>
                                <option value="daihoc_cq_dacbiet" id="hedt-1">Đại học chính quy (Chất lượng cao)</option>
                                <option value="b2lt" id="hedt-2">Bằng 2 - Liên thông</option>
                            </select>
                        </div>
                    </div>
                </div>
                <div id="w-4_footer">
                    <button type="button" class=" btn btn-primary m-btn-regsubs waves-effect waves-light"  onclick="do_submit_widget_form_4();return false;">
                        Đăng ký nhận thông tin
                    </button>
                </div>
            </div>
        </div>
    </div>
</section>


<script src="<c:url value="/assets/js/banner.js" />"></script>
<script>
                        /*$(function() {
                         $('.mdb-select').materialSelect();
                         });*/

                        var formRenderOptions_4 = {
                            formData: '[  {    "type": "header",    "subtype": "h1",    "label": "Câu hỏi Tuyển Sinh<br>",    "className": "text-center section_subs_title"  },  {    "type": "text",    "label": "Họ tên:<br>",    "className": "form-control",    "name": "hoten",    "subtype": "text",    "maxlength": "100"  },  {    "type": "text",    "label": "Email:",    "className": "form-control",    "name": "email",    "subtype": "text"  },  {    "type": "text",    "label": "Số điện thoại:<br>",    "className": "form-control",    "name": "dienthoai",    "subtype": "text"  },  {    "type": "textarea",    "label": "Câu hỏi<br>",    "className": "form-control",    "name": "textarea-1581500170575",    "subtype": "textarea"  },  {    "type": "select",    "label": "Hệ đào tạo:<br>",    "className": "form-control",    "name": "hedt",    "values": [      {        "label": "Đại học chính quy (Hệ đại trà)",        "value": "daihoc_cq_daitra",        "selected": true      },      {        "label": "Đại học chính quy (Chất lượng cao)",        "value": "daihoc_cq_dacbiet"      },      {        "label": "Bằng 2 - Liên thông",        "value": "b2lt"      }    ]  }]'
                        };

                        var formRenderInstance_4 = $('#w-4').formRender(formRenderOptions_4);

                        /* add marerial */
                        var _controls = formRenderInstance_4.userData;
                        for (i = 0; i < _controls.length; i++) {
                            /*console.log(_controls[i].type);
                             if ( _controls[i].type == 'textarea' ) {
                             $('#'+_controls[i].name).addClass('md-textarea');
                             }
                             else if ( _controls[i].type == 'select' ) {
                             $('#'+_controls[i].name).addClass('mdb-select'); 
                             $('#'+_controls[i].name).removeClass('form-control');            
                             }
                             $('.field-'+_controls[i].name).addClass('md-form');*/
                            if (_controls[i].type == 'select') {
                                $('#' + _controls[i].name).removeClass('form-control');
                                $('#' + _controls[i].name).addClass('browser-default');
                                $('#' + _controls[i].name).addClass('custom-select');
                            }
                        }

                        do_submit_widget_form_4 = function () {
                            var _formData = formRenderInstance_4.userData;
                            var _submitData = [];
                            for (i = 0; i < _formData.length; i++) {
                                if (_formData[i].userData != null) {
                                    _submitData.push({
                                        id: _formData[i].name,
                                        value: _formData[i].userData,
                                        title: _formData[i].label
                                    });
                                }
                            }
                            $.ajax({
                                type: 'POST',
                                url: 'https://tuyensinh.ou.edu.vn/widget/form/submitform?form_id=4',
                                data: '_token=UGNxQrDhTrGmgxtcEa6Kd1b6qqn6ELVbjQEqh2K2&userdata=' + JSON.stringify(_submitData),
                                beforeSend: function () {
                                    $('#w-4_container').LoadingOverlay('show');
                                },
                                error: function () {
                                    $('#w-4_container').LoadingOverlay('hide');
                                    bootbox.alert('[AJAX] get URL to modal error !');
                                },
                                success: function (response) {
                                    $('#w-4_container').LoadingOverlay('hide');
                                    if (response.status == 0) {
                                        toastr.success(response.message);

                                        /* clear data input */
                                        for (i = 0; i < _formData.length; i++) {
                                            if (_formData[i].userData != null) {
                                                $('#' + _formData[i].name).val('').trigger('change');
                                            }
                                        }
                                    } else {
                                        toastr.error(response.message);
                                    }
                                },
                                dataType: 'json'
                            });
                        };
</script>