
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
	integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js"
	integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz"
	crossorigin="anonymous"></script>
<style>
.nav-item {
    display: inline-block;
    margin-right: 10px; /* Khoảng cách giữa các nút */
}

.custom-btn {
    background-color: #a2af00; /* Màu nền nhẹ nhàng hơn */
    color: #0f5132; /* Màu chữ */
    border: 2px solid #a3cfbb; /* Màu viền nhẹ hơn */
    padding: 10px 20px; /* Tăng kích thước nút */
    font-size: 16px; /* Tăng kích thước chữ nếu cần */
    border-radius: 8px; /* Bo tròn góc nút */
    transition: background-color 0.3s ease, color 0.3s ease;
}

.custom-btn:hover {
    background-color: #a2af00; /* Màu nền khi hover */
    color: #0c4026; /* Màu chữ khi hover */
}
</style>
</head>
<body>

	<!-- Navbar -->
	<nav class="navbar navbar-expand-lg bg-light">
		<div class="container-fluid">
			<a class="navbar-brand" href="#"> <img
				src="../../img/logoBookStore.png" alt="Bootstrap" width="170"
				height="120">
			</a>
					<li class="nav-item">
						<button class="btn custom-btn nav-link active" aria-current="page">Trang
							chủ</button>
					</li>

		
			</div>
	</nav>
</body>
</html>
