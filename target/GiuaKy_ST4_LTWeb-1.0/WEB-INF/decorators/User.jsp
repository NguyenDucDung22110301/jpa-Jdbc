<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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


.container {
	width: 20px;
	max-width: 20px;
	background-color: white;
	padding: 18px;
	border-radius: 10px;
	box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.1);
	margin: auto;
}


.text-muted {
	color: #6c757d !important;
	font-size: 1.2rem; /* Tăng cỡ chữ */
}
</style>
</head>
<body>
	<div>
		<%@ include file="/common/User/Header.jsp"%>
	</div>
	<div class="container">
		<sitemesh:write property="body" />
	</div>
	<div>
		<%@ include file="/common/User/Footer.jsp"%>
	</div>
</body>
</html>
