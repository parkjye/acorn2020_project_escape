<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>views/error/info.jsp</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.css" />
</head>
<body>
	<div class="container">
		<p class="alert alert-danger">
			<strong>${exception.message }</strong>
			<a class="alert-link" href="${pageContext.request.contextPath }/review/list.do">이용후기로 이동</a>
		</p>
	</div>
</body>
</html>