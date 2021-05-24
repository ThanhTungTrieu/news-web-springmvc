<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp"%>
<c:url var="newsAPIUrl" value="/api/bai-viet" />
<c:url var="listUrl" value="/quan-tri/bai-viet/danh-sach" />
<c:url var="editURL" value="/quan-tri/bai-viet/chinh-sua" />
<html>
<head>
    <meta charset="UTF-8">
    <title>Bài viết</title>
</head>
<body>
    <div class="main-content">
        <div class="main-content-inner">
            <div class="breadcrumbs" id="breadcrumbs">
                <script type="text/javascript">
                    try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
                </script>

                <ul class="breadcrumb">
                    <li>
                        <i class="ace-icon fa fa-home home-icon"></i>
                        <a href="#">Home</a>
                    </li>

                    <li>
                        <a href="#">Tables</a>
                    </li>
                    <li class="active">Simple &amp; Dynamic</li>
                </ul><!-- /.breadcrumb -->
            </div>
            <div class="page-content">
                <div class="ace-settings-container" id="ace-settings-container">
                    <div class="btn btn-app btn-xs btn-warning ace-settings-btn" id="ace-settings-btn">
                        <i class="ace-icon fa fa-cog bigger-130"></i>
                    </div>

                    <div class="ace-settings-box clearfix" id="ace-settings-box">
                        <div class="pull-left width-50">
                            <div class="ace-settings-item">
                                <div class="pull-left">
                                    <select id="skin-colorpicker" class="hide">
                                        <option data-skin="no-skin" value="#438EB9">#438EB9</option>
                                        <option data-skin="skin-1" value="#222A2D">#222A2D</option>
                                        <option data-skin="skin-2" value="#C6487E">#C6487E</option>
                                        <option data-skin="skin-3" value="#D0D0D0">#D0D0D0</option>
                                    </select>
                                </div>
                                <span>&nbsp; Choose Skin</span>
                            </div>

                            <div class="ace-settings-item">
                                <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-navbar" />
                                <label class="lbl" for="ace-settings-navbar"> Fixed Navbar</label>
                            </div>

                            <div class="ace-settings-item">
                                <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-sidebar" />
                                <label class="lbl" for="ace-settings-sidebar"> Fixed Sidebar</label>
                            </div>

                            <div class="ace-settings-item">
                                <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-breadcrumbs" />
                                <label class="lbl" for="ace-settings-breadcrumbs"> Fixed Breadcrumbs</label>
                            </div>

                            <div class="ace-settings-item">
                                <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-rtl" />
                                <label class="lbl" for="ace-settings-rtl"> Right To Left (rtl)</label>
                            </div>

                            <div class="ace-settings-item">
                                <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-add-container" />
                                <label class="lbl" for="ace-settings-add-container">
                                    Inside
                                    <b>.container</b>
                                </label>
                            </div>
                        </div><!-- /.pull-left -->

                        <div class="pull-left width-50">
                            <div class="ace-settings-item">
                                <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-hover" />
                                <label class="lbl" for="ace-settings-hover"> Submenu on Hover</label>
                            </div>

                            <div class="ace-settings-item">
                                <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-compact" />
                                <label class="lbl" for="ace-settings-compact"> Compact Sidebar</label>
                            </div>

                            <div class="ace-settings-item">
                                <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-highlight" />
                                <label class="lbl" for="ace-settings-highlight"> Alt. Active Item</label>
                            </div>
                        </div><!-- /.pull-left -->
                    </div><!-- /.ace-settings-box -->
                </div><!-- /.ace-settings-container -->
                <div class="page-header">
                    <h1>
                        Bài viết
                        <small>
                            <i class="ace-icon fa fa-angle-double-right"></i>
                            Chỉnh sửa bài viết
                        </small>
                    </h1>
                </div><!-- /.page-header -->
                <c:if test="${not empty message}" >
                    <div class="alert alert-${alert}">
                        ${message}
                    </div>
                </c:if>
                <div class="row">
                    <div class="col-xs-12">
                        <!-- PAGE CONTENT BEGINS -->
                        <form:form class="form-horizontal" role="form" id="formSubmit" modelAttribute="model">
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="categoryCode">Thể loại</label>
                                <div class="col-sm-6">
                                    <form:select path="categoryCode" cssClass="form-control" id="categoryCode">
                                        <form:option value="" label="-- Chọn thể loại --" />
                                        <form:options items="${categories}" itemValue="code" itemLabel="name" />
                                    </form:select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="title"> Tên bài viết </label>
                                <div class="col-sm-6">
                                    <form:input path="title" cssClass="form-control col-xs-10 col-sm-5" id="title"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="thumbnail"> Hình đại diện </label>
                                <div class="col-sm-9">
                                    <input type="file" id="thumbnail" name="thumbnail" placeholder="Hình đại diện" class="col-xs-10 col-sm-5" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="shortDescription"> Mô tả ngắn </label>
                                <div class="col-sm-6">
                                    <form:textarea path="shortDescription" cssClass="form-control col-xs-10 col-sm-5" id="shortDescription" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="content"> Nội dung </label>
                                <div class="col-sm-6">
                                    <form:textarea path="content" cssClass="form-control col-xs-10 col-sm-5" rows="5" id="content" />
                                </div>
                            </div>
                            <form:hidden path="id" id="newsId" />
                            <div class="clearfix form-actions">
                                <div class="col-md-offset-3 col-md-9">
                                    <c:if test="${not empty model.id}">
                                        <button class="btn btn-info" type="button" id="btnAddOrUpdateNews">
                                            <i class="ace-icon fa fa-check bigger-110"></i>
                                            Cập nhập bài viết
                                        </button>
                                    </c:if>
                                    <c:if test="${empty model.id}" >
                                        <button class="btn btn-info" type="button" id="btnAddOrUpdateNews">
                                            <i class="ace-icon fa fa-check bigger-110"></i>
                                            Thêm bài viết
                                        </button>
                                    </c:if>
                                    &nbsp; &nbsp;
                                    <button class="btn" type="reset">
                                        <i class="ace-icon fa fa-undo bigger-110"></i>
                                        Reset
                                    </button>
                                </div>
                            </div>
                        </form:form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script>
        $('#btnAddOrUpdateNews').click(function (e) {
            e.preventDefault();
            var data = {};
            var formData = $('#formSubmit').serializeArray();
            $.each(formData, function (i, v) {
                data["" + v.name + ""] = v.value;
            });
            var id = $('#newsId').val();
            if (id == "") {
                addNews(data);
            } else {
                updateNews(data);
            }
        });

        function addNews(data) {
            $.ajax({
                url: '${newsAPIUrl}',
                type: 'POST',
                contentType: 'application/json',
                data: JSON.stringify(data),
                dataType: 'json',
                success: function (result) {
                    window.location.href = "${listUrl}?page=1&limit=6&alert=success&message=insert_success";
                },
                error: function (result) {
                    window.location.href = "${editURL}?alert=danger&message=system_error";
                }
            });
        }

        function updateNews(data) {
            $.ajax({
                url: '${newsAPIUrl}',
                type: 'PUT',
                contentType: 'application/json',
                data: JSON.stringify(data),
                dataType: 'json',
                success: function (result) {
                    window.location.href = "${editURL}?id=" + result.id + "&alert=success&message=update_success";
                },
                error: function (result) {
                    window.location.href = "${listUrl}?page=1&limit=6&alert=danger&message=system_error";
                }
            });
        }
    </script>
</body>
</html>
