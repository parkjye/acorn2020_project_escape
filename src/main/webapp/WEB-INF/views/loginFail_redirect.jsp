<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script>
	alert("아이디와 비밀번호가 다릅니다. 다시 시도해 주세요.")
	location.href="${pageContext.request.contextPath}/login/login_form.do";
</script>
</body>
</html>