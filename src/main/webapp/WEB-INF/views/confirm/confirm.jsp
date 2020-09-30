<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css?v=<%=System.currentTimeMillis() %>"/>
<script src="${pageContext.request.contextPath}/resources/js/angular.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.5.1.js"></script>
<style>
.line{
	color:red;
}
</style>
</head>
<body>
<jsp:include page="../templates/nav.jsp"></jsp:include>
<div class="container">
</br>
<h3 class="page-header" >예약 확인 및 취소</h3>
</br>
	<c:choose>
 		<c:when test="${empty list}">
 			<div class="row">
				<div class="table-responsive">
					<table class="table  table-bordered table-hover text-center">
						<colgroup>
							<col width="250">
							<col width="*">
						</colgroup>
					<tbody>
						<tr>
							<td colspan="3" style="height:300px; padding-top:150px;">입력하신 정보는 존재하지 않습니다.</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>		
 	</c:when>
	<c:otherwise>
		<c:forEach var="tmp" items="${list }">
			<div class="row">
				<div class="table-responsive">
					<table class="table  table-bordered table-hover text-center">
							<colgroup>
								<col width="250">
								<col width="*">
							</colgroup>
							
							<tbody>

								<tr>
									<th class="text-center">지점</th>
									<td class="text-left">${tmp.bname }</td>
								</tr>
								<tr>
									<th class="text-center">테마</th>
									<td class="text-left">${tmp.thema }</td>
								</tr>
								<tr>
									<th class="text-center">예약일시</th>
									<td class="text-left">${tmp.resdate } ${tmp.time }</td>
								</tr>
								<tr>
									<th class="text-center">인원</th>
									<td class="text-left">${tmp.personal }</td>
								</tr>
								<tr>
									<th class="text-center">참가요금</th>
									<td class="text-left">${tmp.cost }</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>



				<div class="row">
					<div class="table-responsive">
						<table class="table  table-bordered table-hover text-center">
							<colgroup>
								<col width="250">
								<col width="*">
							</colgroup>
							<tbody>
								<tr>
									<th class="text-center">예약자</th>
									<td class="text-left">${tmp.res_name }</td>
								</tr>
								<tr>
									<th class="text-center">연락처</th>
									<td class="text-left">${tmp.phone }</td>
								</tr>
								<tr>
									<th class="text-center">문의사항</th>
									<td class="text-left"></td>
								</tr>
								<tr>
									<th class="text-center">예약확인번호</th>
									<td class="text-left">${tmp.res_no } <p class="line">(예약확인 및 취소시 필요합니다)</p></td>
								</tr>
							</tbody>
						</table>
						
					</div>
				</div>	
			</c:forEach>
		</c:otherwise>
	</c:choose>
</div>
				<div class="row" style="padding-top: 30px;">
					<div class="col-sm-12 col-md-12 text-center " >
						<button type="button" class="btn btn-primary btn-lg" onClick="location.href='list.do'">처음으로</button>				
					</div>
				</div>
				</br></br>
<jsp:include page="../templates/footer.jsp"></jsp:include>
</body>
</html>