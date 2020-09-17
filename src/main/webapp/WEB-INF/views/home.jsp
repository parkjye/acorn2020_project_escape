<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>        
<html>
<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	
	<title>Home(Angular)</title>

 	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css?v=<%=System.currentTimeMillis() %>" />
 	
 	
 	<script src="${pageContext.request.contextPath}/resources/js/jquery.min.js" ></script>
	<script src="${pageContext.request.contextPath}/resources/js/popper.min.js" /></script>
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js" /></script>
	<script src="${pageContext.request.contextPath}/resources/js/angular.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery-3.5.1.slim.min.js"></script>
 	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css?v=<%=System.currentTimeMillis() %>"/>
	
<!-- <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script> -->
</head>
<body id="bootstrap-overrides">
<jsp:include page="templates/nav.jsp"></jsp:include>

<main role="main">
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
	    <ol class="carousel-indicators">
	      <li data-target="#myCarousel" data-slide-to="0" class=""></li>
	      <li data-target="#myCarousel" data-slide-to="1" class=""></li>
	      <li data-target="#myCarousel" data-slide-to="2" class="active"></li>
	    </ol>
	    <div class="carousel-inner">
	      <div class="carousel-item">
	        <svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img"><rect width="100%" height="100%" fill="#777"></rect></svg>
			<div class="carousel-caption">
			  <h1>방안에 모든것이 단서다! 지금 이 순간! 큐브에 도전하세요!</h1>
			</div>
	      </div>
	      <div class="carousel-item">
	        <svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img"><rect width="100%" height="100%" fill="#777"></rect></svg>
			<div class="carousel-caption">
			  <h1>주어진 시간은 단 60분!</h1>
			</div>
	      </div>
	      <div class="carousel-item active">
	        <svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img"><rect width="100%" height="100%" fill="#777"></rect></svg>
			<div class="carousel-caption">
			  <h1>전국 최대 100평 규모의 미스터리 방탈출 카페</h1>
			</div>
	      </div>
	    </div>
	    <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
	      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
	      <span class="sr-only">Previous</span>
	    </a>
	    <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
	      <span class="carousel-control-next-icon" aria-hidden="true"></span>
	      <span class="sr-only">Next</span>
	    </a>
	</div>
	
	<section class="bg-dark">
		<div class="container">
			<div class="row d-flex">
				<div class="col-lg-2"></div>
				<div class="col-lg-2 col-md-4 col-sm-5 myBox d-flex justify-content-center align-items-center  my-4 mx-2">
					<div class="container d-flex flex-column justify-content-center align-items-center">
						<h4 class="text-secondary">홍대점</h4>
						<hr class="w-50 solid">
						<a href="">예약하기</a><br />
						<a href="">테마소개</a><br />
						<a href="">오시는길</a><br />
					</div>
				</div>
				<div class="col-lg-2 col-md-4 col-sm-5 myBox d-flex justify-content-center align-items-center  my-4 mx-2">
					<div class="container d-flex flex-column justify-content-center align-items-center">
						<h4 class="text-secondary">대구점</h4>
						<hr class="w-50 solid">
						<a href="">예약하기</a><br />
						<a href="">테마소개</a><br />
						<a href="">오시는길</a><br />
					</div>
				</div>
				<div class="col-lg-2 col-md-4 col-sm-5 myBox d-flex justify-content-center align-items-center  my-4 mx-2">
					<div class="container d-flex flex-column justify-content-center align-items-center">
						<h4 class="text-secondary">인천구월점</h4>
						<hr class="w-50 solid">
						<a href="">예약하기</a><br />
						<a href="">테마소개</a><br />
						<a href="">오시는길</a><br />
					</div>				
				</div>
				<div class="col-lg-2 col-md-4 col-sm-5 myBox d-flex justify-content-center align-items-center  my-4 mx-2">
					<div class="container d-flex flex-column justify-content-center align-items-center">
						<h4 class="text-secondary">전주점</h4>
						<hr class="w-50 solid">
						<a href="">예약하기</a><br />
						<a href="">테마소개</a><br />
						<a href="">오시는길</a><br />
					</div>				
				</div>
				<div class="col-lg-2"></div>
			</div>
			<div class="row d-flex">
				<div class="col-lg-2"></div>
				<div class="col-lg-2 col-md-4 col-sm-5 myBox d-flex justify-content-center align-items-center  my-4 mx-2">
					<div class="container d-flex flex-column justify-content-center align-items-center">
						<h4 class="text-secondary">잠실점</h4>
						<hr class="w-50 solid">
						<a href="">예약하기</a><br />
						<a href="">테마소개</a><br />
						<a href="">오시는길</a><br />
					</div>					
				</div>
				<div class="col-lg-2 col-md-4 col-sm-5 myBox d-flex justify-content-center align-items-center  my-4 mx-2">
					<div class="container d-flex flex-column justify-content-center align-items-center">
						<h4 class="text-secondary">대전둔산점</h4>
						<hr class="w-50 solid">
						<a href="">예약하기</a><br />
						<a href="">테마소개</a><br />
						<a href="">오시는길</a><br />
					</div>					
				</div>
				<div class="col-lg-2 col-md-4 col-sm-5 myBox d-flex justify-content-center align-items-center  my-4 mx-2">
					<div class="container d-flex flex-column justify-content-center align-items-center">
						<h4 class="text-secondary">천호점</h4>
						<hr class="w-50 solid">
						<a href="">예약하기</a><br />
						<a href="">테마소개</a><br />
						<a href="">오시는길</a><br />
					</div>					
				</div>
				<div class="col-lg-2 col-md-4 col-sm-5 myBox d-flex justify-content-center align-items-center  my-4 mx-2">
					<div class="container d-flex flex-column justify-content-center align-items-center">
						<h4 class="text-secondary">수유점</h4>
						<hr class="w-50 solid">
						<a href="">예약하기</a><br />
						<a href="">테마소개</a><br />
						<a href="">오시는길</a><br />
					</div>					
				</div>
				<div class="col-lg-2"></div>
			</div>
		</div>
		
	
	</section>
	
</main>
<jsp:include page="templates/footer.jsp"></jsp:include>

</body>
</html>
