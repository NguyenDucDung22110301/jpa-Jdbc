
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
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item">
						<button class="btn custom-btn nav-link active" aria-current="page">Trang
							chủ</button>
					</li>
					<li class="nav-item">
						<button class="btn custom-btn nav-link active" aria-current="page">Trang
							Quản Trị</button>
					</li>

					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" role="button"
						data-bs-toggle="dropdown" aria-expanded="false"> Sản phẩm </a>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item" href="#"> Sách ngôn tình </a></li>
							<li><a class="dropdown-item" href="#"> Sách self-help</a></li>
							<li><hr class="dropdown-divider"></li>
							<li><a class="dropdown-item" href="#">Sách nội trợ</a></li>
						</ul></li>
				</ul>
				<form class="d-flex" role="search"
					style="position: relative; display: block; float: right;">
					<input class="form-control me-2" type="search"
						placeholder="Nội dung tìm kiếm" aria-label="Search">
					<button class="btn btn-outline-success" type="submit">Tìm</button>

					<a class="btn btn-primary" style="white-space: nowrap;"
						href="khachhang/dangnhap.jsp"> Đăng nhập </a>
					<ul class="navbar-nav me-auto mb-2 mb-lg-0 bg-infor ">
						<li class="nav-item dropdown dropstart"><a
							class="nav-link dropdown-toggle" href="#" role="button"
							data-bs-toggle="dropdown" aria-expanded="false"> Tài khoản</a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="#">Đơn hàng của tôi</a></li>
								<li><a class="dropdown-item" href="#">Thông báo</a></li>
								<li><a class="dropdown-item"
									href="khachhang/thaydoithongtin.jsp">Thay đổi thông tin</a></li>
								<li><a class="dropdown-item"
									href="/khachhang/doimatkhau.jsp">Đổi mật khẩu</a></li>
								<li><hr class="dropdown-divider"></li>
								<li><a class="dropdown-item"
									href="/khach-hang?hanhDong=dang-xuat">Thoát tài khoản</a></li>
							</ul></li>
					</ul>
				</form>
			</div>
		</div>
	</nav>
</body>
</html>
