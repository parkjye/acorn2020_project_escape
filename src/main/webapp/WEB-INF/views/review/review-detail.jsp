<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이용후기 자세히 보기</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.css" />
</head>
<body>
	<div>
		<form method="post" id="myForm" action="private/update-form.do">
			<!--hidden  -->
			<input type="hidden" name="num" id="num" value="${dto.num }"/>
			
			<h1>${dto.title }</h1>
			
			<div class="form-group">
				<label for="">작성자</label> <strong><span>${dto.writer }</span></strong>
				<span>${dto.regdate }</span>
				<label>조회</label> <span>${dto.viewcount }</span>회
			</div>
			
			<div class="form-group">
				<input class="form-control" type="password" name="pwd" id="pwd" placeholder="비밀번호"/>
				<hr />
				<div>${dto.content }</div>
				<hr />
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
			
			<div class="btnWrap" style="text-align:center">
				<input type="button" value="목록보기" onclick="location.href='list.do'"/>
				
				<input type="submit" value="수정" />
				<input type="button" value="삭제" onclick="deleteConfirm();" />
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
</body>
</html>