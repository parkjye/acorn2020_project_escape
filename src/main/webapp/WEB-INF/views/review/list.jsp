<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이용후기</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css?v=<%=System.currentTimeMillis() %>"/>
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.5.1.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js" /></script>
</head>
<body>
<jsp:include page="../templates/nav.jsp"></jsp:include>
	<div class="container">
		<div class="row mt-5">
			<h1>이용후기</h1>
		</div>
		<div class="row">
			<div>
				<span>Total <strong>${totalRow }</strong> 건 <strong>${pageNum }</strong> 페이지</span>
			</div>
		</div>
		<div class="row d-flex justify-content-between align-items-center mb-2">
			<div>
				<!--검색  -->
				<form action="list.do" method="get">
					<label for="condition">검색조건</label>
					<select name="condition" id="condition">
						<option value="title_content" <c:if test="${condition eq 'title_content' }">selected</c:if>>제목+내용</option>
						<option value="title" <c:if test="${condition eq 'title' }">selected</c:if>>제목</option>
						<option value="writer" <c:if test="${condition eq 'writer' }">selected</c:if>>작성자</option>
					</select>
					<input value="${keyword }" type="text" name="keyword" placeholder="검색어..." />
					<button type="submit">검색</button>
				</form>	
			</div>
			<div>
				<button class="btnList btn btn-outline-primary">
						<a href="insert-form.do">글작성</a>
				</button>
			</div>			
		</div>
		<div class="row mt-5">
			<table class="table">
				<thead>
					<tr>
						<th style="width:10.0%">번호</th>
						<th style="width:50.0%">제목</th>
						<th style="width:10.0%">작성자</th>
						<th style="width:10.0%">날짜</th>
						<th style="width:10.0%">조회</th>
					</tr>
				</thead>
				<tbody>
				<c:forEach var="tmp" items="${list }">
					<tr>
						<td style="width:10.0%">${tmp.num }</td>
						<td style="width:50.0%"><a href="review-detail.do?num=${tmp.num }">${tmp.title }</a></td>
						<td style="width:10.0%">${tmp.writer }</td>
						<td style="width:10.0%">${tmp.regdate }</td>
						<td style="width:10.0%">${tmp.viewcount }</td>
					</tr>
				</c:forEach>		
				</tbody>
			</table>
		</div>
	<div class="row">
		<!--페이지 번호 -->
		<div class="page-display">
			<ul class="pagination pagination-sm">
			<c:if test="${startPageNum ne 1 }">
				<li class="page-item"><a class="page-link" href="list.do?pageNum=${startPageNum-1 }&condition=${condition }&keyword=${encodedK }">이전</a></li>
			</c:if>
			<c:forEach var="i" begin="${startPageNum }" end="${endPageNum }">
				<c:choose>
					<c:when test="${i eq pageNum }">
						<li class="page-item active"><a class="page-link" href="list.do?pageNum=${i }&condition=${condition }&keyword=${encodedK }">${i }</a></li>
					</c:when>
					<c:otherwise>
						<li class="page-item"><a class="page-link" href="list.do?pageNum=${i }&condition=${condition }&keyword=${encodedK }">${i }</a></li>
					</c:otherwise>
				</c:choose>
			</c:forEach>
			<c:if test="${endPageNum lt totalPageCount }">
				<li class="page-item"><a class="page-link" href="list.do?pageNum=${endPageNum+1 }&condition=${condition }&keyword=${encodedK }">다음</a></li>
			</c:if>
			</ul>
		</div>
	</div>
	<div class="row">

		</div>
	</div>
<jsp:include page="../templates/footer.jsp"></jsp:include>
</body>
</html>