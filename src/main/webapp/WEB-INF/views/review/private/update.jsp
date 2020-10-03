<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 수정</title>
</head>
<body>
<script>
	alert("글 수정 완료");
	location.href="${pageContext.request.contextPath }/review/review-detail.do?num=${param.num}";
</script>
</body>
</html>