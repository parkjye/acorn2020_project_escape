<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html data-ng-app="myApp">
<head>
<meta charset="UTF-8">
<title>Thema</title>
<link rel="stylesheet" href="../resources/css/bootstrap.css" />
<style>
	ul{
		list-style: none;
		margin: 0px;
		margin-bottom: 30px;
		float: left;
	}
	.thema-info{
		border: 2px solid black;
		padding: 10px;
	}
	.thema-image img{
		width: 100%;
	}
	.thema-image{
		display: flex;
	}
	.image{
		order: 1;
	}
	.note{
		order: 2;
	}
</style>
<script src="${pageContext.request.contextPath}/resources/js/jquery.min.js" ></script>
<script src="${pageContext.request.contextPath}/resources/js/angular.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/angular-route.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/angular-animate.min.js"></script>
<script>
	var myApp=angular.module("myApp", ["ngRoute","ngAnimate"]);
	//싱글 페이지 라우터를 사용하기 위한 설정 
	myApp.config(function($routeProvider){
		$routeProvider
		.when("/all_thema",{templateUrl:"all_thema.do"})
		.when("/hongdae_thema",{templateUrl:"hongdae_thema.do"})
		.when("/daegu_thema",{templateUrl:"daegu_thema.do"})
		.when("/incheon_thema",{templateUrl:"incheon_thema.do"})
		.when("/jeonju_thema",{templateUrl:"jeonju_thema.do"})
		.when("/jamsil_thema",{templateUrl:"jamsil_thema.do"})
		.when("/daejeon_thema",{templateUrl:"daejeon_thema.do"})
		.when("/cheonho_thema",{templateUrl:"cheonho_thema.do"})
		.when("/suyu_thema",{templateUrl:"suyu_thema.do"})
		.otherwise({redirectTo:"/all_thema"});
	});
</script>
</head>
<body>
<!-- body -->
<jsp:include page="../templates/nav.jsp"></jsp:include>
<div class="container" style="margin-top: 1.7%; ">
	<!-- 테마 페이지 인트로 글  -->
	<div class="text-center">
		<h1 class="head-text">당신의 상상력,판단력,추리 능력은?</h1>
		<p class="head-text">
			CUBE Escape Game은 참가자가 실제 상황을 방불케 하는 특별한 테마 룸에 갇힌 채 60분 이내에<br/>
			주어진 미션을 해결하여 탈출해야하는 신개념 문화/여가 시설입니다.<br/>
			테마 룸 입장 후 주어진 시나리오에 따라 출입구는 봉쇄하며, 여러분의 명석한 두뇌로 주어진 퀴즈를 해결해 탈출하세요.<br/>
		</p>
	</div>
	<!-- 지점별 버튼 -->
	<div class="text-center" style="margin-bottom: 2%">
		<h5>원하시는 지점을 눌러주세요.</h5>
		<a class="preview btn btn-warning" title="모든 테마" href="#all_thema">모든 테마</a>
		<a class="preview btn btn-warning" title="홍대점 테마" href="#hongdae_thema">홍대점</a>
		<a class="preview btn btn-warning" title="대구점 테마" href="#daegu_thema">대구점</a>
		<a class="preview btn btn-warning" title="인천구월점 테마" href="#incheon_thema">인천구월점</a>
		<a class="preview btn btn-warning" title="전주점 테마" href="#jeonju_thema">전주점</a>
		<a class="preview btn btn-warning" title="잠실점 테마" href="#jamsil_thema">잠실점</a>
		<a class="preview btn btn-warning" title="대전둔산점 테마" href="#daejeon_thema">대전둔산점</a>
		<a class="preview btn btn-warning" title="천호점 테마" href="#cheonho_thema">천호점</a>
		<a class="preview btn btn-warning" title="수유점 테마" href="#suyu_thema">수유점</a>
	</div>	
	<div data-ng-view class="page-change-animation"></div>
</div>
</body>
</html>