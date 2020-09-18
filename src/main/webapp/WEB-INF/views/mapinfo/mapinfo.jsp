<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html data-ng-app="myApp">
<head>
<meta charset="UTF-8">
<title>오시는 길</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.css" />
<script src="..//resources/js/angular.min.js"></script>
<script src="../resources/js/angular-route.min.js"></script>
<style>
	@font-face {
    		font-family: 'HeirofLightBold';
    		src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-07@1.0/HeirofLightBold.woff') format('woff');
    		font-weight: normal;
    		font-style: normal;
		}
        body{
        	font-family: 'HeirofLightBold';
        }
        #branch {
        	margin-top: 5%;
        	text-align: center;
        }
        #branch a{
        	padding-left: 3%;
        	padding-right: 3%;
        }
        img{
        	height: 100px;
        	width: 100px;
        	text-align: center;
        }
</style>
<script>
	var myApp=angular.module("myApp", ["ngRoute"]);
	//싱글 페이지 라우터를 사용하기 위한 설정 
	myApp.config(function($routeProvider){
		$routeProvider
		.when("/hongdae",{templateUrl:"hongdae.do"})
		.when("/daegu",{templateUrl:"daegu.do"})
		.otherwise({redirectTo:"/hongdae"});
	});
</script>
</head>
<body>
<jsp:include page="../templates/nav.jsp"></jsp:include>
	<div id=info class="container circle_padding">
		<h1 class="text-center">오시는 길</h1>	
		<div id="branch">
			<a href="#hongdae">홍대점</a>
			<a href="#daegu">대구점</a>
			<a href="#">인천구월점</a>
			<a href="#">전주점</a>
			<a href="#">잠실점</a>
			<a href="#">대전두산점</a>
			<a href="#">천호점</a>
			<a href="#">수유점</a>
		</div>
		<div class="row" style="margin-top:7%">
			<div class="col-sm-6 col-md-6 col-xs-12 circle_padding">
				<div id="map" style="width:100%; height:500px;">
				</div>
			</div>
			<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=1cb94d4b68f05ba9f51920ea80f18b9b&libraries=services"></script>
			<script type="text/javascript" src="../resources/js/map.js?v=<%=System.currentTimeMillis() %>"></script>
			<div class="col-sm-6 col-md-6 col-xs-12">
			<div data-ng-view></div>
		</div>
	</div>	
</div>
<jsp:include page="../templates/footer.jsp"></jsp:include>
</body>
</html>