<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/common/taglib.jsp"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title><dec:title default="Đăng nhập" /></title>

    <!-- bootstrap & fontawesome -->
    <link href="<c:url value="/template/admin/assets/css/bootstrap.min.css" /> " rel="stylesheet" />
    <link href="<c:url value="/template/admin/assets/font-awesome/4.2.0/css/font-awesome.min.css" /> " rel="stylesheet" />
    <!-- text fonts -->
    <link rel="stylesheet" href="<c:url value="/template/admin/assets/fonts/fonts.googleapis.com.css" />" />
    <!-- ace styles -->
    <link rel="stylesheet" href="<c:url value="/template/admin/assets/css/ace.min.css" />" />
    <link rel="stylesheet" href="<c:url value="/template/admin/assets/css/ace-rtl.min.css" />" />
</head>
<body class="login-layout">

<!-- body -->
<div class="main-container">
    <dec:body />
</div>

<!-- script -->
    <!-- basic scripts -->
    <script src="<c:url value="/template/admin/assets/js/jquery.2.1.1.min.js" />"></script>
    <script type="text/javascript">
        window.jQuery || document.write("<script src='<c:url value="/template/admin/assets/js/jquery.min.js" />'>"+"<"+"/script>");
    </script>
    <script type="text/javascript">
        if('ontouchstart' in document.documentElement) document.write("<script src='<c:url value="/template/admin/assets/js/jquery.mobile.custom.min.js" />'>"+"<"+"/script>");
    </script>
    <!-- inline scripts related to this page -->
    <script type="text/javascript">
        jQuery(function($) {
            $(document).on('click', '.toolbar a[data-target]', function(e) {
                e.preventDefault();
                var target = $(this).data('target');
                $('.widget-box.visible').removeClass('visible');//hide others
                $(target).addClass('visible');//show target
            });
        });



        //you don't need this, just used for changing background
        jQuery(function($) {
            $('#btn-login-dark').on('click', function(e) {
                $('body').attr('class', 'login-layout');
                $('#id-text2').attr('class', 'white');
                $('#id-company-text').attr('class', 'blue');

                e.preventDefault();
            });
            $('#btn-login-light').on('click', function(e) {
                $('body').attr('class', 'login-layout light-login');
                $('#id-text2').attr('class', 'grey');
                $('#id-company-text').attr('class', 'blue');

                e.preventDefault();
            });
            $('#btn-login-blur').on('click', function(e) {
                $('body').attr('class', 'login-layout blur-login');
                $('#id-text2').attr('class', 'white');
                $('#id-company-text').attr('class', 'light-blue');

                e.preventDefault();
            });

        });
    </script>
</body>
</html>
