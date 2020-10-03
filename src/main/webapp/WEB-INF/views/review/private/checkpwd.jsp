<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 확인</title>
</head>
<body>
<div class="container">
	<h1>글 수정 양식 입니다.</h1>
	<form action="#" method="post" name="myForm" novalidate>
		<!-- 글번호, 비밀번호 hidden -->
		<input type="hidden" name="num" id="num" value="${dto.num }"/>
		<input type="hidden" name="pwd" id="pwd" value="${dto.pwd }"/>
		
		<div class="form-group">
			<label for="pwd">비밀번호</label>
			<input class="form-control" type="password" name="pwd" id="pwd" />
		</div>
		
		<div class="btnWrap" style="text-align:center"> <!--onclick="submitContents(this);  -->
			<button class="btn btn-outline-primary" type="submit" href="javascript:deleteConfirm();">확인</button>
			<button class="btn btn-outline-danger" type="reset">취소</button>
		</div>
	</form>
	
<!-- 글 삭제 -->
<script src="${pageContext.request.contextPath }/resources/js/jquery-3.5.1.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/jquery.form.min.js"></script>
<script>
	function deleteConfirm(){
		var isDelete=confirm("이 글을 삭제 하시겠습니까?");
		if(isDelete){
			location.href="private/delete.do?num=${dto.num}";
		}
	}
</script>
</div>
</body>
</html>