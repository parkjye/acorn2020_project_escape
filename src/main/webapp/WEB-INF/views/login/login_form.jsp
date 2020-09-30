<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login_form</title>
<link rel="stylesheet" href="../resources/css/bootstrap.css" />
<style>
	footer{
		position: fixed;
		bottom: 0;
		width: 100%;
	}
</style>
</head>
<body>
<jsp:include page="../templates/nav.jsp"></jsp:include>
<main role="main">
<div class="container text-center" >
	<div class="login_form" style="padding:30px;  margin-top: 5%;">
		<h1>Admin Login Page</h1>
		<form action="login.do" method="post">
			<div class="form-group text-center" style="margin-top: 2%">
				<label for="aid">아이디</label>
				<input type="text" class="form-control mx-auto col-3" id="aid" name="aid"/>
			</div>
			<div class="form-group text-center">	
				<label for="apwd">비밀번호</label>
				<input type="password"  class="form-control mx-auto col-3" id="apwd" name="apwd"/>
			</div>
			<button type="submit" class="btn btn-primary btn-lg btn-block mx-auto col-5">로그인</button>
		</form>
	</div>
</div>
</main>
<jsp:include page="../templates/footer.jsp"></jsp:include>
</body>
</html>