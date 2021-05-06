<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/common/taglib.jsp"%>

<!DOCTYPE html>
<html>
<head>
    <title><dec:title default="Trang chủ" /></title>

    <link href="<c:url value="/template/web/vendor/bootstrap/css/bootstrap.min.css" /> " rel="stylesheet" type="text/css" media="all">
    <link href="<c:url value="/template/web/css/style.css" /> " rel="stylesheet" type="text/css" media="all">
    <script src="<c:url value="/template/web/vendor/jquery/jquery.min.js" />" type="text/javascript"></script>
    <script src="<c:url value="/template/paging/jquery.twbsPagination.js" />"></script>

</head>
<body>
    <!-- header -->
    <%@ include file="/common/web/header.jsp"%>
    <!-- header -->

    <div class="container">
        <dec:body />
    </div>

    <!-- footer -->
    <%@ include file="/common/web/footer.jsp"%>
    <!-- footer -->

    <!-- js -->
    <script src="<c:url value="/template/web/vendor/bootstrap/js/bootstrap.bundle.min.js" />" type="text/javascript"></script>
    <script src="<c:url value="/template/web/vendor/bootstrap/js/bootstrap.min.js" />"></script>
</body>
</html>