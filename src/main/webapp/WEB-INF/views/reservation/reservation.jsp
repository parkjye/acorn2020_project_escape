<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약하기</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css?v=<%=System.currentTimeMillis() %>" />
<script src="../resources/js/jquery-3.5.1.js"></script>
</head>
<body>
<jsp:include page="../templates/nav.jsp"></jsp:include>
<div class="container">
	<h1 class="text-center">예약하기</h1>
	<div class="form-group row">
		<div class="col-4">
			<label for="dateselect">날짜선택</label>
			<input type="date" id="dateselect" class="form-control" min="2020-09-20" max="2020-10-05" />
		</div>
		<div class="col-4">
			<label for="">지점선택</label>
			<select name="branch" class="form-control">
				<option value="">홍대</option>
				<option value="">#</option>
				<option value="">#</option>
				<option value="">#</option>
				<option value="">#</option>
				<option value="">#</option>
				<option value="">#</option>
				<option value="">#</option>
			</select>
		</div>
		<div class="col-4">
			<label for="dateselect">테마</label>
			<select id="thema" name="thema" class="form-control">
				<option value="h">헨젤과 그레텔</option>
				<option value="e">#</option>
				<option value="r">#</option>
				<option value="w">#</option>
				<option value="q">#</option>
				<option value="r">#</option>
				<option value="t">#</option>
				<option value="w">#</option>
			</select>
		</div>
		<script>
			document.getElementById('dateselect').value = new Date().toISOString().substring(0, 10);
		</script>
	</div>
</div>
<jsp:include page="../templates/footer.jsp"></jsp:include>
</body>
</html>