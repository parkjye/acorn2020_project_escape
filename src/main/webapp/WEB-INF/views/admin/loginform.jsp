<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/admin/loginform.jsp</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.css" />
</head>
<body>
<div class="container">
	<h1>로그인 폼</h1>
	<form action="login.do" method="post">
		<input type="hidden" name="url" value="${url }" />
		<div class="form-group">
			<label for="aid">아이디</label>
			<input class="form-control" type="text" name="aid" id="aid"/>
		</div>
		<div class="form-group">
			<label for="apwd">비밀번호</label>
			<input class="form-control" type="password" name="apwd" id="apwd" />
		</div>
		<button class="btn btn-primary" type="submit">로그인</button>
	</form>
</div>
</body>
</html>