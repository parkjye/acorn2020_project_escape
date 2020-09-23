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
<style>
	th,tr{
		text-align: center; 
	}
	.write{
		position: relative;
		left:1035px;
	}
	#branch{
		position: relative;
		left:220px;
	}
	.btn{
		color:Tomato;
	}
</style>
</head>
<body>
<jsp:include page="../../templates/nav.jsp"></jsp:include>
<div class="container">
	<br/><br/><br/>
	<h4>공지사항 - 홍대점</h4>
	<c:choose>
		<c:when test="${empty aid }">
			<a href="${pageContext.request.contextPath }/admin/loginform.do">로그인</a>
		</c:when>
		<c:otherwise>
			<a href="${pageContext.request.contextPath }/admin/logout.do">로그아웃</a>
		</c:otherwise>
	</c:choose>
	<br/>
	<div class="container" id="branch">
		<button class="btn" onclick="location.href='../hongdae/list.do'">홍대점</button>
		<button class="btn" onclick="location.href='../daegu/list.do'">대구점</button>
		<button class="btn" onclick="location.href='../incheon/list.do'">인천구월점</button>
		<button class="btn" onclick="location.href='../jeonju/list.do'">전주점</button>
		<button class="btn" onclick="location.href='../jamsil/list.do'">잠실점</button>
		<button class="btn" onclick="location.href='../daejeon/list.do'">대전두산점</button>
		<button class="btn" onclick="location.href='../cheonho/list.do'">천호점</button>
		<button class="btn" onclick="location.href='../suyu/list.do'">수유점</button>
	</div>
	<br/><br/>
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
				<c:when test="${tmp.branch eq '홍대점'}">
					<tr>
						<td>${tmp.num }</td>
						<td>${tmp.writer }</td>
						<td><a href="detail.do?num=${tmp.num }&condition=${condition }&keyword=${encodedK }">${tmp.title }</a></td>
						<td>${tmp.viewCount }</td>
						<td>${tmp.regdate }</td>
					</tr>
				</c:when>
				</c:choose>
			</c:forEach>					
		</tbody>
	</table>
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
	</br>
	<div class="write">
		<c:choose>
			<c:when test="${empty aid }">
			</c:when>
			<c:otherwise>
				<button class="btn btn-primary"><a href="insertform.do">글 작성</a></button>
			</c:otherwise>
		</c:choose>
	</div>
	<hr style="clear:left;"/>
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
	</br></br>
</div>
<jsp:include page="../../templates/footer.jsp"></jsp:include>
</body>
</html>






