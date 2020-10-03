<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	String bname=request.getParameter("bname");
	String thema=request.getParameter("thema");
	String personal=request.getParameter("personal");
	String cost=request.getParameter("cost");
	String resname=request.getParameter("resname");
	String phone=request.getParameter("phone");
	String resnum=phone.substring(7);
%>
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
	<div class="table1">
		<table class="table">
				<tr>
					<th>지점</th>
					<td><%=bname %></td>
				</tr>
				<tr>
					<th>테마</th>
					<td><%=thema %></td>
				</tr>
				<tr>
					<th>인원</th>
					<td><%=personal %></td>
				</tr>
				<tr>
					<th>참가요금</th>
					<td><%=cost %></td>
				</tr>
		</table>
	</div>
	<div class="table2" style="margin-top: 5%;">
		<table class="table">
				<tr>
					<th>예약자</th>
					<td><%=resname %></td>
				</tr>
				<tr>
					<th>연락처</th>
					<td><%=phone %></td>
				</tr>
				<tr>
					<th>예약확인번호</th>
					<td>
						<%=resnum %>
						<span style="margin-left: 5%; color: red;" >(예약확인 및 취소 때 필요한 정보 입니다.)</span>
					</td>
				</tr>	
		</table>
	</div>
	<a href="../home.do">메인 페이지로 돌아가기</a>
</div>
<jsp:include page="../templates/footer.jsp"></jsp:include>
</body>
</html>