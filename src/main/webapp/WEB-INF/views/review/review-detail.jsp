<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이용후기 자세히 보기</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css?v=<%=System.currentTimeMillis() %>"/>
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.5.1.js"></script>
</head>
<body>
<jsp:include page="../templates/nav.jsp"></jsp:include>
	<div class="">
		<form class="my-2" method="post" id="myForm" action="private/update-form.do">
			<div class="container border-left border-right border-secondary">
				<!--hidden  -->
				<input type="hidden" name="num" id="num" value="${dto.num }"/>
				<div class="row my-2"></div>
				<div class="row my-5 px-4">
					<h4>${dto.title }</h4>
				</div>
				
				<div class="row px-4 d-flex justify-content-between align-items-center">
					<div>
						<label for="">작성자</label> <strong><span>${dto.writer }</span></strong>
						<span>${dto.regdate }</span>
						<label>조회</label> <span>${dto.viewcount }</span>회
					</div>						
					<div>
						<button class="btnList btn btn-outline-primary">
							<a href="list.do">목록보기</a>
						</button>
					</div>
				</div>
				<hr class="w-100 solid">
				<div class="row px-4">
					<input class="form-control"  type="password" name="pwd" id="pwd" placeholder="비밀번호"/>
				</div>
				<hr class="w-100 solid">
				<div class="row px-4">
					<div class="contents">${dto.content }</div>
				</div>
				<div class="form-group" style="text-align:center">
					<c:if test="${dto.prevNum ne 0 }">
					<a href="review-detail.do?num=${dto.prevNum }&condition=${condition}&keyword=${encodedK}">
						<svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-chevron-up" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
			  					<path fill-rule="evenodd" d="M7.646 4.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1-.708.708L8 5.707l-5.646 5.647a.5.5 0 0 1-.708-.708l6-6z"/>
						</svg>
						이전글
					</a>	
					</c:if>
					<c:if test="${dto.nextNum ne 0 }">
						<a href="review-detail.do?num=${dto.nextNum }&condition=${condition}&keyword=${encodedK}">
							<svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-chevron-down" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
				  				<path fill-rule="evenodd" d="M1.646 4.646a.5.5 0 0 1 .708 0L8 10.293l5.646-5.647a.5.5 0 0 1 .708.708l-6 6a.5.5 0 0 1-.708 0l-6-6a.5.5 0 0 1 0-.708z"/>
							</svg>
							다음글
						</a>
					</c:if>
				</div>
				<div class="row px-4 pb-3">
					<a class="btn btn-outline-warning btn-sm mr-2" onClick="doSubmit()">
						<svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-pencil-square" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
			  				<path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456l-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
			  				<path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z"/>
						</svg>
						수정
					</a>					
					<a class="btn btn-outline-danger btn-sm mr-2" href="javascript:deleteConfirm();">
						<svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-trash-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
			  				<path fill-rule="evenodd" d="M2.5 1a1 1 0 0 0-1 1v1a1 1 0 0 0 1 1H3v9a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V4h.5a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H10a1 1 0 0 0-1-1H7a1 1 0 0 0-1 1H2.5zm3 4a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 .5-.5zM8 5a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7A.5.5 0 0 1 8 5zm3 .5a.5.5 0 0 0-1 0v7a.5.5 0 0 0 1 0v-7z"/>
						</svg>
						삭제
					</a>	
				</div>
				<script>
					function doSubmit(){
						const form = document.getElementById("myForm");
						form.submit();
					}
				</script>
			</div>
		</form>	
<!-- 글 삭제 -->
<script src="${pageContext.request.contextPath }/resources/js/jquery-3.5.1.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/jquery.form.min.js"></script>
<script>
	function deleteConfirm(){
		var isDelete=confirm("이 글을 삭제 하시겠습니까?");
		if(isDelete){
			var inputPwd=$("#pwd").val();
			location.href="private/delete.do?num=${dto.num}&pwd="+inputPwd;
		}
	}
</script>
	</div>
<jsp:include page="../templates/footer.jsp"></jsp:include>
</body>
</html>