<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thông tin sách</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .book-info {
            display: flex;
            align-items: flex-start;
        }
        .book-info img {
            max-width: 200px;
            margin-right: 20px;
        }
        .reviews {
            margin-top: 20px;
        }
        .review-form {
            margin-top: 20px;
        }
    </style>
</head>
<body>
   <form action="read" method="get">
		<div class="container">
			<h1 class="my-4">Thông tin sách</h1>
			<div class="book-info">
				<img src="path_to_book_cover_image.jpg" alt="Book Cover">
				<div>
					<p>
						<strong>Tiêu đề:</strong> <span>${book.title}</span>
					</p>
					<p>
						<strong>Mã ISBN:</strong> <span>${book.isbn}</span>
					</p>
					<p>
						<strong>Tác giả:</strong> <span>${book.author}</span>
					</p>
					<p>
						<strong>Publisher:</strong> <span>${book.publisher}</span>
					</p>
					<p>
						<strong>Publisher date:</strong> <span>${book.publishDate}</span>
					</p>
					<p>
						<strong>Quantity:</strong> <span>${book.quantity}</span>
					</p>
				</div>
			</div>
			<div class="reviews">
				<c:forEach var="review" items="${reviews}">
					<div class="card mb-3">
						<div class="card-body">
							<h5 class="card-title">${review.user}</h5>
							<p class="card-text">${review.reviewText}</p>
						</div>
					</div>
				</c:forEach>
			</div>
			<h3 class="my-4">Thêm Review về sách:</h3>
			<form action="submitReview" method="post" class="review-form">
				<div class="form-group">
					<label for="reviewText">Review:</label>
					<textarea id="reviewText" name="reviewText" class="form-control"
						rows="4"></textarea>
				</div>
				<button type="submit" class="btn btn-primary">Submit</button>
			</form>
		</div>
		<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
		<script
			src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
		<script
			src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	</form>
</body>
</html>
