<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/views/cafe/list.jsp</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css?v=<%=System.currentTimeMillis() %>" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css?v=<%=System.currentTimeMillis() %>"/>
<script src="${pageContext.request.contextPath}/resources/js/jquery.min.js" ></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js" /></script>
</head>
<body>
<jsp:include page="../../templates/nav.jsp"></jsp:include>
<div class="container">
	<!-- 공지사항 -->
	<div class="row mt-5">
		<h4>공지사항 - 잠실점</h4>
	</div>
	<c:choose>
		<c:when test="${empty aid }">
			<div class="row my-3">
				<a href="${pageContext.request.contextPath }/login/login_form.do">로그인</a>
			</div>
		</c:when>
		<c:otherwise>
			<div class="row my-3">
				<a href="${pageContext.request.contextPath }/login/logout.do">로그아웃</a>
			</div>
		</c:otherwise>
	</c:choose>
	<!-- 지점 -->
	<div class="row d-flex justify-content-end mb-2">
		<button class="btn" onclick="location.href='../hongdae/list.do'">홍대점</button>
		<button class="btn" onclick="location.href='../daegu/list.do'">대구점</button>
		<button class="btn" onclick="location.href='../incheon/list.do'">인천구월점</button>
		<button class="btn" onclick="location.href='../jeonju/list.do'">전주점</button>
		<button class="btn" onclick="location.href='../jamsil/list.do'">잠실점</button>
		<button class="btn" onclick="location.href='../daejeon/list.do'">대전두산점</button>
		<button class="btn" onclick="location.href='../cheonho/list.do'">천호점</button>
		<button class="btn" onclick="location.href='../suyu/list.do'">수유점</button>
	</div>

	<div class="row d-flex justify-content-between align-items-center mb-2">
		<!-- 검색 -->
		<div>
			<form action="list.do" method="get">
				<label for="condition">검색조건</label>
				<select name="condition" id="condition">
					<option value="title_content" <c:if test="${condition eq 'title_content' }">selected</c:if>>제목+내용</option>
					<option value="title" <c:if test="${condition eq 'title' }">selected</c:if>>제목</option>
					<option value="writer" <c:if test="${condition eq 'writer' }">selected</c:if>>작성자</option>
				</select>
				<input value="${keyword }" type="text" name="keyword" placeholder="검색어..."/>
				<button type="submit">검색</button>
			</form>	
		</div>	
		<!-- 쓰기 -->
		<c:choose>
			<c:when test="${empty aid }">
			</c:when>
			<c:otherwise>
				<div>
					<div class="write">
						<button class="btn btn-primary"><a href="insertform.do">글 작성</a></button>
					</div>
				</div>
			</c:otherwise>
		</c:choose>
	</div>
	<!-- 게시글 -->
	<div class="row">
		<table class="table table-sm table-hover table-secondary">
			<thead class="thead-light">
				<tr>
					<th scope="col">번호</th>
					<th scope="col">작성자</th>
					<th scope="col">제목</th>
					<th scope="col">조회수</th>
					<th scope="col">등록일</th>
				</tr>
			</thead>
			<tbody>	
				<c:forEach var="tmp" items="${list }">
					<c:choose>
					<c:when test="${tmp.branch eq '잠실점'}">
						<tr>
							<td style="width:10.0%">${tmp.num }</td>
							<td style="width:10.0%">${tmp.writer }</td>
							<td style="width:50.0%"><a href="detail.do?num=${tmp.num }&condition=${condition }&keyword=${encodedK }">${tmp.title }</a></td>
							<td style="width:10.0%">${tmp.viewCount }</td>
							<td style="width:10.0%">${tmp.regdate }</td>
						</tr>
					</c:when>
					</c:choose>
				</c:forEach>					
			</tbody>
		</table>
	</div>
	
	<!-- 페이징 -->
	<div class="row d-flex justify-content-center my-5">
		<div class="page-display">
			<ul class="pagination pagination-sm">
			<c:if test="${startPageNum ne 1 }">
				<li class="page-item"><a class="page-link" href="list.do?pageNum=${startPageNum-1 }&condition=${condition }&keyword=${encodedK }">Prev</a></li>
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
				<li class="page-item"><a class="page-link" href="list.do?pageNum=${endPageNum+1 }&condition=${condition }&keyword=${encodedK }">Next</a></li>
			</c:if>
			</ul>
		</div>
	</div>
</div>
<jsp:include page="../../templates/footer.jsp"></jsp:include>
</body>
</html>






