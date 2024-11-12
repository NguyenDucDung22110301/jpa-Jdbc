<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
</head>
<body>
	<a  href = "${pageContext.request.contextPath}/views/book/insert"> Thêm Sách. </a>
    	<div class="container mt-5">
        <table border="1" width="100%" class="table" class="table table-bordered table-hover">
            <thead class="thead-dark">
                <tr>
                	<th scope="col">STT</th>
                    <th scope="col">Tiêu đề</th>
                    <th scope="col">Mã ISBN</th>
                    <th scope="col">Publisher</th>
                    <th scope="col">Price</th>
                     <th scope="col">Description</th>
                    <th scope="col">Publisher Date</th>
                    <th scope="col">Image </th>
   					<th scope="col">Quantity</th>
   					<th scope="col">Chỉnh Sửa sách!</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${listcase}" var="cate" varStatus="STT">
                    <tr>
                    	<td>${STT.index+1}</td>
                        <td>${cate.title}</td>
                        <td>${cate.isbn}</td>
                        <td>${cate.publisher}</td>
                        <td>${cate.price}</td>
                        <td>${cate.description}</td>
                        <td>${cate.publish_date}</td>
                        <td>${cate.cover_image}</td>
                        <td>${cate.quantity}</td>
						<td><a
					href="<c:url value='/views/book/Edit?id=${cate.bookid}'/>"> Sửa Sách</a> 
					|
						<a
					href="<c:url value='/views/book/Delete?id=${cate.bookid}'/>">  Xóa Sách</a> 
					
						</td>	
						</tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>