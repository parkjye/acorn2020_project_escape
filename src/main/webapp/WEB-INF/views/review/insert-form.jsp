<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html ng-app="myApp">
<head>
<meta charset="UTF-8">
<title>글쓰기</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.css" />
<script src="${pageContext.request.contextPath }/resources/js/angular.min.js"></script>
<script>
	var myApp = angular.module("myApp",[]);
	myApp.controller("formCtrl", function($scope, $http){});
</script>
</head>
<body>
<div ng-controller="formCtrl">
	<br/>
	<h1>글쓰기</h1>
	<form action="insert.do" method="post" name="myForm" novalidate>
		<div class="form-group">
			<label for="writer">이름</label>
			<input class="form-control" type="text" name="writer" id="writer" 
				ng-model="writer"
				ng-required="true"
				ng-class="{'is-invalid':(myForm.writer.$invalid) && myForm.writer.$dirty,'is-valid': myForm.writer.$valid}" />
			<div class="invalid-feedback">필수항목 입니다.</div>
		</div>
		
		<div class="form-group">
			<label for="pwd">비밀번호</label>
			<input class="form-control" type="password" name="pwd" id="pwd" 
				ng-model="pwd"
				ng-required="true"
				ng-class="{'is-invalid': (myForm.pwd.$invalid) && myForm.pwd.$dirty , 'is-valid': myForm.pwd.$valid}" />
			<div class="invalid-feedback">필수항목 입니다.</div>
		</div>
		
		<div class="form-group">
			<label for="title">제목</label>
			<input class="form-control" type="text" name="title" id="title"
				ng-model="title" 
				ng-required="true" 
				ng-class="{'is-invalid': (myForm.title.$invalid) && myForm.title.$dirty , 'is-valid': myForm.title.$valid}" />
			<div class="invalid-feedback">필수항목 입니다.</div>
		</div>
		
		<div class="form-group">
			<label for="content">내용</label>
			<textarea class="form-control" name="content" id="content" cols="30" rows="10"></textarea>
		</div>
		
		<div class="btnWrap" style="text-align:center">
			<button ng-disabled="myForm.$invalid" class="btn btn-outline-primary" type="submit" onclick="submitContents(this);">작성완료</button>
			<button class="btn btn-outline-danger" type="reset">취소</button>
		</div>
	</form>
</div>
<!-- Smart Editor -->
<script src="${pageContext.request.contextPath }/SmartEditor/js/HuskyEZCreator.js"></script>
<script>
	var oEditors = [];
	
	nhn.husky.EZCreator.createInIFrame({
		oAppRef: oEditors,
		elPlaceHolder: "content",
		sSkinURI: "${pageContext.request.contextPath}/SmartEditor/SmartEditor2Skin.html",	
		htParams : {
			bUseToolbar : true,				// 툴바 사용 여부
			bUseVerticalResizer : true,		// 입력창 크기 조절바 사용 여부
			bUseModeChanger : true,			// 모드 탭(Editor | HTML | TEXT) 사용 여부
			//aAdditionalFontList : aAdditionalFontSet,		// 추가 글꼴 목록
			fOnBeforeUnload : function(){
				//alert("성공");
			}
		}, //boolean
		fOnAppLoad : function(){
			//예제 코드
			//oEditors.getById["ir1"].exec("PASTE_HTML", ["로딩이 완료된 후에 본문에 삽입되는 text입니다."]);
		},
		fCreator: "createSEditor2"
	});
	
	function pasteHTML() {
		var sHTML = "<span style='color:#FF0000;'>이미지도 같은 방식으로 삽입합니다.<\/span>";
		oEditors.getById["content"].exec("PASTE_HTML", [sHTML]);
	}
	
	function showHTML() {
		var sHTML = oEditors.getById["content"].getIR();
		alert(sHTML);
	}
		
	function submitContents(elClickedObj) {
		oEditors.getById["content"].exec("UPDATE_CONTENTS_FIELD", []);	// 에디터의 내용이 textarea에 적용됩니다.
		
		// 에디터의 내용에 대한 값 검증은 이곳에서 document.getElementById("content").value를 이용해서 처리하면 됩니다.
		
		try {
			elClickedObj.form.submit();
		} catch(e) {}
	}
	
	function setDefaultFont() {
		var sDefaultFont = '궁서';
		var nFontSize = 24;
		oEditors.getById["content"].setDefaultFont(sDefaultFont, nFontSize);
	}
</script>
</body>
</html>