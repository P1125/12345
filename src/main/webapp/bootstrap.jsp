<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>bootstrap.jsp</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
	integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l"
	crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<!-- Content here -->
		<div class="row">
			<div class="col-2 border">
				<a class="btn btn-outline-success">로그인</a> <span
					class="btn btn-info">회원가입</span>
				<button class="btn btn-primary">게시판</button>
			</div>
			<div class="col-8 border">second</div>
			<div class="col-2 border">third</div>
		</div>
		<div class="row">
			<div class="col-lg-6 col-md-12 colborder">
				<table class="table table-striped">
					<thead>
						<tr>
							<td>번호</td>
							<td>이름</td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>1</td>
							<td>a</td>
						</tr>
						<tr>
							<td>2</td>
							<td>b</td>
						</tr>
						<tr>
							<td>3</td>
							<td>c</td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="col-lg-6 col-md-12 colborder">
				<form>
					<div class="form-group row">
						<label for="staticEmail" class="col-sm-2 col-form-label">Email</label>
						<div class="col-sm-10">
							<input type="text" readonly class="form-control-plaintext"
								id="staticEmail" value="email@example.com">
						</div>
					</div>
					<div class="form-group row">
						<label for="inputPassword" class="col-sm-2 col-form-label">Password</label>
						<div class="col-sm-10">
							<input type="password" class="form-control" id="inputPassword">
						</div>
						<div class="form-group row">
							<button class="btn btn-info">등록</button>
						</div>
					</div>
				</form>
			</div>
		</div>
		<div class="alert alert-info" role="alert">
			A simple secondary alert with <a href="#" class="alert-link">an
				example link</a>. Give it a click if you like.
		</div>
		<div class="row">
			<div class="card" style="width: 18rem;">
				<img src="..." class="card-img-top" alt="...">
				<div class="card-body">
					<h5 class="card-title">Card title</h5>
					<p class="card-text">Some quick example text to build on the
						card title and make up the bulk of the card's content.</p>
					<a href="#" class="btn btn-primary">Go somewhere</a>
				</div>
			</div>
			<div class="card" style="width: 18rem;">
				<img src="..." class="card-img-top" alt="...">
				<div class="card-body">
					<h5 class="card-title">Card title</h5>
					<p class="card-text">Some quick example text to build on the
						card title and make up the bulk of the card's content.</p>
					<a href="#" class="btn btn-primary">Go somewhere</a>
				</div>
			</div>
		</div>
		<!-- end of row -->
	</div>
	<!-- end of content -->
</body>
</html>