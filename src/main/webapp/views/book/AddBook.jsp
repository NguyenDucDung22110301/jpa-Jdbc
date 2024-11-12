<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="insert" method="post" enctype="multipart/form-data">
		<div class="mb-3">
			<label class="form-label">categoryName: </label> <input type="text"
				class="form-control" id="exampleInputEmail1" name="categoryName"
				aria-describedby="emailHelp">
		</div>
		<div class="mb-3">
			<label class="form-label">images: </label> <input type="file"
				class="form-control" id="exampleInputEmail1" name="images"
				aria-describedby="emailHelp">
		</div>
		<div class="mb-3">
			<label class="form-label">status: </label> <input type="text"
				class="form-control" id="exampleInputEmail1" name="status"
				aria-describedby="emailHelp">
		</div>
		<button type="submit" class="btn btn-primary">Submit</button>
	</form>
</body>
</html>