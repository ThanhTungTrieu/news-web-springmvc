<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/common/taglib.jsp"%>

<!DOCTYPE html>
<html>
<head>
    <title><dec:title default="Trang chủ" /></title>

    <link href="<c:url value="/template/admin/vendor/fontawesome-free/css/all.min.css" />" rel="stylesheet" />
    <link href="<c:url value="/template/admin/css/sb-admin.css" />" rel="stylesheet" />
    <link href="<c:url value="/template/admin/vendor/datatables/dataTables.bootstrap4.css" /> " rel="stylesheet" />
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet" />
</head>
<body id="page-top">

<!-- header -->
<%@ include file="/common/admin/header.jsp"%>
<!-- header -->

<!-- body -->
<div id="wrapper">
    <%@ include file="/common/admin/menu.jsp"%>
    <dec:body />

    <!-- footer -->
    <%@ include file="/common/admin/footer.jsp"%>
    <!-- footer -->
</div>
<!-- body -->

<!-- Scroll to Top Button-->
<a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
</a>
<!-- Scroll to Top Button -->

<!-- Logout Modal -->
<%@include file="/common/admin/logoutModal.jsp"%>
<!-- Logout Modal -->
<!-- script -->
<!-- boostrap core Js -->
<script src="<c:url value="/template/admin/vendor/jquery/jquery.min.js" /> "></script>
<script src="<c:url value="/template/admin/vendor/bootstrap/js/bootstrap.bundle.min.js" /> "></script>

<!-- Core plugin Js -->
<script src="<c:url value="/template/admin/vendor/jquery-easing/jquery.easing.min.js" /> "></script>

<!-- Page level plugin Js -->
<script src="<c:url value="/template/admin/vendor/chart.js/Chart.min.js" /> "></script>
<script src="<c:url value="/template/admin/vendor/datatables/jquery.dataTables.js" /> "></script>
<script src="<c:url value="/template/admin/vendor/datatables/dataTables.bootstrap4.js" /> "></script>

<!-- Custom scripts for all page -->
<script src="<c:url value="/template/admin/js/sb-admin.min.js" /> "></script>

<!-- Demo scripts for this page -->
<script src="<c:url value="/template/admin/js/demo/datatables-demo.js" /> "></script>
<script src="<c:url value="/template/admin/js/demo/chart-area-demo.js" /> "></script>

<!-- script -->
</body>
</html>
