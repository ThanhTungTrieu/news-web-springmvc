<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>

<html>

<head>

    <meta charset="UTF-8">

    <title>Đăng nhập</title>

</head>
<body>
<div class="card card-login mx-auto mt-5">
    <div class="card-header">Login</div>
    <div class="card-body">
        <c:if test="${param.incorrectAccount != null}" >
            <div class="alert alert-danger">
                <strong>Lỗi!</strong> Sai tài khoản hoặc mật khẩu.
            </div>
        </c:if>
        <c:if test="${param.access_denied != null}" >
            <div class="alert alert-danger">
                <strong>Lỗi!</strong> Không có quyền.
            </div>
        </c:if>
        <c:if test="${param.sessionTimeout != null}" >
            <div class="alert alert-danger">
                <strong>Lỗi!</strong> Phiên đăng nhập hết hạn.
            </div>
        </c:if>
        <form action="j_spring_security_check" id="formLogin" method="post">
            <div class="form-group">
                <div class="form-label-group">
                    <input type="text" id="username" name="j_username" class="form-control" placeholder="Tên đăng nhập" required="required" autofocus="autofocus">
                    <label for="username">Tên đăng nhập</label>
                </div>
            </div>
            <div class="form-group">
                <div class="form-label-group">
                    <input type="password" id="inputPassword" name="j_password" class="form-control" placeholder="Mật khẩu" required="required">
                    <label for="inputPassword">Password</label>
                </div>
            </div>
            <div class="form-group">
                <div class="checkbox">
                    <label>
                        <input type="checkbox" value="remember-me">
                        Remember Password
                    </label>
                </div>
            </div>
            <button type="submit" class="btn btn-primary btn-block">Login</button>
        </form>
        <div class="text-center">
            <a class="d-block small mt-3" href="register.html">Register an Account</a>
            <a class="d-block small" href="forgot-password.html">Forgot Password?</a>
        </div>
    </div>
</div>
</body>