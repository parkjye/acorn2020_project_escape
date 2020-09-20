<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html data-ng-app="myApp">
<head>
<meta charset="UTF-8">
<title>오시는 길</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.css" />
<link rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.0.0/animate.min.css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css?v=<%=System.currentTimeMillis() %>"/>
<script src="..//resources/js/angular.min.js"></script>
<script src="../resources/js/angular-route.min.js"></script>
<script src="../resources/js/angular-animate.min.js"></script>
<script src="../resources/js/jquery-3.5.1.js"></script>
<script>
	var myApp=angular.module("myApp", ["ngRoute","ngAnimate"]);
	//싱글 페이지 라우터를 사용하기 위한 설정 
	myApp.config(function($routeProvider){
		$routeProvider
		.when("/hongdae",{templateUrl:"hongdae.do"})
		.when("/daegu",{templateUrl:"daegu.do"})
		.when("/incheon",{templateUrl:"incheon.do"})
		.when("/jeonju",{templateUrl:"jeonju.do"})
		.when("/jamsil",{templateUrl:"jamsil.do"})
		.when("/daejeon",{templateUrl:"daejeon.do"})
		.when("/cheonho",{templateUrl:"cheonho.do"})
		.when("/suyu",{templateUrl:"suyu.do"})
		.otherwise({redirectTo:"/hongdae"});
	});
</script>
</head>
<body >
<jsp:include page="../templates/nav.jsp"></jsp:include>
	<div id=info class="container circle_padding">
		<h1 class="text-center">오시는 길</h1>	
		<div id="branch">
			<a href="#hongdae" id="hongdae">홍대점</a>
			<a href="#daegu" id="daegu">대구점</a>
			<a href="#incheon" id="incheon">인천구월점</a>
			<a href="#jeonju" id="jeonju">전주점</a>
			<a href="#jamsil" >잠실점</a>
			<a href="#daejeon">대전두산점</a>
			<a href="#cheonho">천호점</a>
			<a href="#suyu">수유점</a>
		</div>
		<div class="row" style="margin-top:7%">
			<div class="col-sm-6 col-md-6 col-xs-12 circle_padding">
				<div id="map" style="width:100%; height:500px;">
				</div>
			</div>
			<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=1cb94d4b68f05ba9f51920ea80f18b9b&libraries=services"></script>
			<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/map.js?v=<%=System.currentTimeMillis() %>"></script>
			<script>
				mapinfo();
				$("#branch a").click(function(){
					var path=$(this).attr('href');
					var x=0;
					var y=0;
					var context=null; 
					if(path == "#hongdae"){
						x=37.553419;
						y=126.920605;
						context= '<div style="padding:5px;"><h1><span class="badge badge-info">ACORN 이스케이프 홍대점</span></h1><br/><img class="avatar" src="../resources/images/unnamed.png" /><br/><h5 class="text-center" style="color:black;">지금 바로 탈출해 보세요!</h5> </div>';
					}else if(path == "#daegu"){
						x=35.869640;
						y=128.596974;
						context= '<div style="padding:5px;"><h1><span class="badge badge-info">ACORN 이스케이프 대구점</span></h1><br/><img class="avatar" src="../resources/images/unnamed.png" /><br/><h5 class="text-center" style="color:black;">지금 바로 탈출해 보세요!</h5> </div>';
					}else if(path == "#incheon"){
						x=37.444135;
						y=126.702761;
						context= '<div style="padding:5px;"><h1><span class="badge badge-info">ACORN 이스케이프 인천구월점</span></h1><br/><img class="avatar" src="../resources/images/unnamed.png" /><br/><h5 class="text-center" style="color:black;">지금 바로 탈출해 보세요!</h5> </div>';
					}else if(path == "#jeonju"){
						x=35.815600;
						y=127.110433;
						context= '<div style="padding:5px;"><h1><span class="badge badge-info">ACORN 이스케이프 전주점</span></h1><br/><img class="avatar"src="../resources/images/unnamed.png" /><br/><h5 class="text-center" style="color:black;">지금 바로 탈출해 보세요!</h5> </div>';
					}else if(path == "#jamsil"){
						x=37.510770;
						y=127.079955;
						context= '<div style="padding:5px;"><h1><span class="badge badge-info">ACORN 이스케이프 잠실점</span></h1><br/><img class="avatar" src="../resources/images/unnamed.png" /><br/><h5 class="text-center" style="color:black;">지금 바로 탈출해 보세요!</h5> </div>';
					}else if(path == "#daejeon"){
						x=36.350690;
						y=127.374909;
						context= '<div style="padding:5px;"><h1><span class="badge badge-info">ACORN 이스케이프 대전 두산점</span></h1><br/><img class="avatar" src="../resources/images/unnamed.png" /><br/><h5 class="text-center" style="color:black;">지금 바로 탈출해 보세요!</h5> </div>';
					}else if(path == "#cheonho"){
						x=37.538620;
						y=127.127454;
						context= '<div style="padding:5px;"><h1><span class="badge badge-info">ACORN 이스케이프 천호점</span></h1><br/><img class="avatar" src="../resources/images/unnamed.png" /><br/><h5 class="text-center" style="color:black;">지금 바로 탈출해 보세요!</h5> </div>';
					}else if(path == "#suyu"){
						x=37.638344;
						y=127.024850;
						context= '<div style="padding:5px;"><h1><span class="badge badge-info">ACORN 이스케이프  수유점</span></h1><br/><img class="avatar" src="../resources/images/unnamed.png" /><br/><h5 class="text-center" style="color:black;">지금 바로 탈출해 보세요!</h5> </div>';
					}else{
						x=37.553419;
						y=126.920605;
					}

					var container = document.getElementById('map');
					var options = {
						center: new kakao.maps.LatLng(x, y),
						draggable: false,
						level: 3
					};
					var map = new kakao.maps.Map(container, options);

					var zoomControl = new kakao.maps.ZoomControl();
					map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);

					var markerPosition = new kakao.maps.LatLng(x, y);

					var marker = new kakao.maps.Marker({
					    position: markerPosition
					});

					marker.setMap(map);

					var iwContent = context, // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
					    iwPosition = new kakao.maps.LatLng(x, y); //인포윈도우 표시 위치입니다

					var infowindow = new kakao.maps.InfoWindow({
					    position : iwPosition, 
					    content : iwContent 
					});

					infowindow.open(map, marker);
				});
			</script>
			<div class="col-sm-6 col-md-6 col-xs-12">
			<div data-ng-view class="page-change-animation"></div>
		</div>
	</div>	
</div>
<jsp:include page="../templates/footer.jsp"></jsp:include>
</body>
</html>