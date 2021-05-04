<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <title>Danh sách</title>
</head>
<body>
<div id="content-wrapper">

    <div class="container-fluid">

        <!-- Breadcrumbs-->
        <ol class="breadcrumb">
            <li class="breadcrumb-item">
                <a href="#">Dashboard</a>
            </li>
            <li class="breadcrumb-item active">Tables</li>
        </ol>

        <!-- DataTables Example -->
        <div class="card mb-3">
            <div class="card-header">
                <i class="fas fa-table"></i>
                Data Table Example
            </div>
            <div class="card-body">
                <div class="widget-box table-filter">
                    <div class="table-btn-controls">
                        <div class="pull-right tableTools-container">
                            <div class="dt-buttons btn-overlap btn-group">
                                <a flag="info"
                                   class="dt-button buttons-colvis btn btn-white btn-primary btn-bold"
                                   data-toggle="tooltip" title='Thêm bài viết'
                                   href='#'>
														<span>
															<i class="fa fa-plus-circle bigger-110 purple"></i>
														</span>
                                </a>
                                <button id="btnDelete" type="button"
                                        class="dt-button buttons-html5 btn btn-white btn-primary btn-bold"
                                        data-toggle="tooltip" title='Xóa bài viết'>
														<span>
															<i class="fa fa-trash-o bigger-110 pink"></i>
														</span>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="table-responsive">
                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                        <thead>
                        <tr>
                            <th><input type="checkbox" id="checkAll"></th>
                            <th>Tên bài viết</th>
                            <th>Mô tả ngắn</th>
                            <th>Người tạo</th>
                            <th>Ngày tạo</th>
                            <th>Người sửa cuối</th>
                            <th>Ngày sửa cuối</th>
                            <th>Thao tác</th>
                        </tr>
                        </thead>
                        <tfoot>
                        <tr>
                            <th>Tên bài viết</th>
                            <th>Mô tả ngắn</th>
                            <th>Người tạo</th>
                            <th>Ngày tạo</th>
                            <th>Người sửa cuối</th>
                            <th>Ngày sửa cuối</th>
                            <th>Thao tác</th>
                        </tr>
                        </tfoot>
                        <tbody>
                        <c:forEach var="item" items="${model}">
                            <tr>
                                <td><input type="checkbox" id="checkbox_${item.id}" value="${item.id}"></td>
                                <td>${item.title}</td>
                                <td>${item.shortDescription}</td>
                                <td>${item.createdBy}</td>
                                <td>${item.createdDate}</td>
                                <td>${item.modifiedBy}</td>
                                <td>${item.modifiedDate}</td>
                                <td>
                                    <a class="btn btn-sm btn-primary btn-edit" data-toggle="tooltip"
                                       title="Cập nhật bài viết" href='#'>
                                        <i class="fa fa-pencil-square-o" aria-hidden="true"></i>
                                    </a>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
        </div>

        <p class="small text-center text-muted my-5">
            <em>More table examples coming soon...</em>
        </p>

    </div>
    <!-- /.container-fluid -->

    <!-- Sticky Footer -->
    <footer class="sticky-footer">
        <div class="container my-auto">
            <div class="copyright text-center my-auto">
                <span>Copyright © Your Website 2019</span>
            </div>
        </div>
    </footer>

</div>
<!-- /.content-wrapper -->
</body>
</html>
