<%@page import="com.mysql.cj.Session"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> Đăng Nhập Vào Hệ Thống</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous">
</script>
<style>
body {
	margin: 0;
	padding: 0;
	font-family: Arial, sans-serif;
	background-color: #f4f4f4;
	display: flex;
	flex-direction: column;
	min-height: 100vh;
}


.myDivP {
	font-family: uniset;
	text-align: center;
	color: #A5A3A3;
	font-size: 30px;
}

.form-group {
	margin-bottom: 15px;
}

.form-group label {
	display: block;
	margin-bottom: 5px;
	color: #333;
}

.form-group input {
	width: 100%;
	padding: 10px;
	border: 1px solid #ccc;
	border-radius: 5px;
	font-size: 16px;
}

.form-group button {
	width: 100%;
	padding: 10px;
	background-color: #007bff;
	border: none;
	color: white;
	font-size: 16px;
	border-radius: 5px;
	cursor: pointer;
	margin-top: 10px;
}

.form-group button:hover {
	background-color: #0056b3;
}

.toggle-link {
	text-align: center;
	margin-top: 20px;
	color: #007bff;
	cursor: pointer;
}

.toggle-link:hover {
	text-decoration: underline;
}

.myDivA {
	color: #929191;
}

::placeholder {
	color: #8A8A8A;
	opacity: 1;
}

.red {
	color: red;
}

.footer {
	margin-top: auto;
	padding: 1rem 0;
	background-color: #f8f9fa;
	text-align: center;
}

.text-muted {
	color: #6c757d !important;
	font-size: 1.2rem; /* Tăng cỡ chữ */
}
</style>
</head>
<body>
		<form action="Login" method="post">
			<div class="row">
				<p class="myDivP">Đăng Nhập Vào Hệ Thống</p>
				<c:if test="${alert != null}">
				    <h3 class="alert" style="text-align: justify; font-size: 12px;">
				        ${alert}
				    </h3>
				</c:if>
				<div class="form-group">
					<input type="text" id="username" name="email"
						class="form-control" placeholder="Tài khoản" required="required">
				</div>
				<div class="form-group">
					<input type="password" id="password" name="password"
						class="form-control" placeholder="Mật Khẩu" required="required">
				</div>
				<div class="row" style="display: flex; align-items: center;">
					<div class="col-lg-3">
						<div class="checkbox-inline">
							<input type="checkbox" id="remember" name="remember" /> <label for="remember">Nhớ tôi</label>
						</div>
					</div>
					<div class="col-lg-5" style="margin-left: auto;">
						<a href="forgetPass.jsp" class="myDivA">Quên mật khẩu?</a>
					</div>
				</div>
				<div class="form-group">
					<button type="submit" class="btn login-register-container">Đăng Nhập</button>
				</div>
			</div>
		</form>
		<div>
			<p align="center">
				Nếu bạn chưa có tài khoản trên hệ thống, thì hãy <a href="Register.jsp" style="color: #6756FA">
					Đăng ký</a>
			</p>
		</div>
	
	
</body>
</html>
