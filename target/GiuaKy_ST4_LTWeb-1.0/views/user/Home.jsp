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
   
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${listcase}" var="cate" varStatus="STT">
                	${cate.title}
                    <tr>
                    	<td>${STT.index+1}</td>
                        <td>${cate.title}</td>
                        <td>${cate.isbn}</td>
                        <td>${cate.author}</td>
                        <td>${cate.publisher}</td>
                        <td>${cate.publisherDate}</td>
                        <td>${cate.quantity}</td>
                        <td>${cate.review}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
    </form>

</body>
</html>