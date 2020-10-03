<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약 확인</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css?v=<%=System.currentTimeMillis() %>" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css?v=<%=System.currentTimeMillis() %>"/>
<script src="${pageContext.request.contextPath}/resources/js/angular.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.5.1.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js" /></script>
<style>
	table,th,td{
		border: 1px solid #424242;
		border-collapse: collapse;
	}
	th{
		width: 20%;
	}
</style>
</head>
<body>
<jsp:include page="../templates/nav.jsp"></jsp:include>
<div class="container">
	<h1>예약완료</h1>
	<hr style="border: 2px solid gray;"/>
	<c:forEach items="${list }" var="res">
	<div class="table1">
		<table class="table">
				<tr>
					<th>지점</th>
					<td>${res.bname }</td>
				</tr>
				<tr>
					<th>테마</th>
					<td>${res.thema }</td>
				</tr>
				<tr>
					<th>인원</th>
					<td>${res.personal }</td>
				</tr>
				<tr>
					<th>참가요금</th>
					<td>${res.cost }</td>
				</tr>
		</table>
	</div>
	<div class="table2" style="margin-top: 5%;">
		<table class="table">
				<tr>
					<th>예약자</th>
					<td>${res.res_name }</td>
				</tr>
				<tr>
					<th>연락처</th>
					<td>${res.phone }</td>
				</tr>
				<tr>
					<th>예약확인번호</th>
					<td>
						${res.res_no }
						<span style="margin-left: 5%; color: red;" >(예약확인 및 취소 때 필요한 정보 입니다.)</span>
					</td>
				</tr>	
		</table>
	</div>
	</c:forEach>
	<a href="../home.do">메인 페이지로 돌아가기</a>
</div>
<jsp:include page="../templates/footer.jsp"></jsp:include>
</body>
</html>