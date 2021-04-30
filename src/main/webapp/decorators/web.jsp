<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/common/taglib.jsp"%>

<!DOCTYPE html>
<html>
<head>
    <title><dec:title default="Trang chủ" /></title>

    <link href="<c:url value="/template/web/vendor/bootstrap/css/bootstrap.min.css" />" rel="stylesheet" />
    <link href="<c:url value="/template/web/css/small-business.css" /> " rel="stylesheet" />
</head>
<body>

    <!-- header -->
    <%@ include file="/common/web/header.jsp"%>
    <!-- header -->

    <!-- body -->
    <div class="container">
        <dec:body />
    </div>
    <!-- body -->

    <!-- header -->
    <%@ include file="/common/web/footer.jsp"%>
    <!-- header -->

    <!-- script -->
    <script src="<c:url value="/template/web/vendor/jquery/jquery.min.js" /> "></script>
    <script src="<c:url value="/template/web/vendor/bootstrap/js/bootstrap.bundle.min.js" /> "></script>
    <!-- script -->
</body>
</html>
