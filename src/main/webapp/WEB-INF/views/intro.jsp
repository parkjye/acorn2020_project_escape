<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>        
<html>
<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
 	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css?v=<%=System.currentTimeMillis() %>" />
 	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css?v=<%=System.currentTimeMillis() %>"/>
 	<script src="${pageContext.request.contextPath}/resources/js/jquery.min.js" ></script>
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js" /></script>
	<title>Cube Escape 설명</title>
</head>
<body id="bootstrap-overrides">
	<jsp:include page="templates/nav.jsp"></jsp:include>
	<main role="main" class="bg-white">
		<!-- 메인 설명 -->
		<section>
			<div class="container pt-5">
				<h4 class="text-center text-primary">도전하세요!</h4>
				<h4 class="text-center text-primary">당신의 상상력,판단력,추리 능력으로...</h4>
				<div class="row">
					<div class="col-lg-3 col-md-6 col my-5 d-flex flex-column justify-content-center align-items-center">
						<img src="/escape/resources/img/notice01.jpg" alt="" />
						<span class="text-primary mt-5">사진촬영금지</span>
					</div>
					<div class="col-lg-3 col-md-6 col my-5 d-flex flex-column justify-content-center align-items-center">
						<img src="/escape/resources/img/notice02.jpg" alt="" />
						<span class="text-primary mt-5">위험물질 반입금지</span>
					</div>
					<div class="col-lg-3 col-md-6 col my-5 d-flex flex-column justify-content-center align-items-center">
						<img src="/escape/resources/img/notice03.jpg" alt="" />
						<span class="text-primary mt-5">안전주의</span>
					</div>
					<div class="col-lg-3 col-md-6 col my-5 d-flex flex-column justify-content-center align-items-center">
						<img src="/escape/resources/img/notice04.jpg" alt="" />
						<span class="text-primary mt-5">물질파손주의</span>
					</div>
				</div>
			
			</div>
		</section>
	
	 </main>
	<jsp:include page="templates/footer.jsp"></jsp:include>
</body>
</html>