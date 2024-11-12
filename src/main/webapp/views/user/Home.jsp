<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a  href = "${pageContext.request.contextPath}/views/book/listBook"> Trang Tổng hợp, Chỉnh sửa tất cả sách!!! </a>
    <form action="books" method="get">
    	<div class="container mt-5">
        <table class="table table-bordered table-hover">
            <thead class="thead-dark">
                <tr>
                	<th scope="col">STT</th>
                    <th scope="col">Tiêu đề</th>
                    <th scope="col">Mã ISBN</th>
                    <th scope="col">Tác giả</th>
                    <th scope="col">Publisher</th>
                    <th scope="col">Publisher Date</th>
                    <th scope="col">Quantity</th>
                    <th scope="col">Review (10)</th>
   					<th scope="col">Đọc chi tiết về sách</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${listcase}" var="cate" varStatus="STT">
                    <tr>
                    	<td>${STT.index+1}</td>
                        <td>${cate.title}</td>
                        <td>${cate.isbn}</td>
                        <td>${cate.author_name}</td>
                        <td>${cate.publisher}</td>
                        <td>${cate.publish_date}</td>
                        <td>${cate.quantity}</td>
                        <td>${cate.publisher}</td>
						<td><a
					href="<c:url value='/views/book/readOnly?id=${cate.bookid}'/>"> Chi tiết về sách</a>
						</td>	
						</tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
    </form>

</body>
</html>