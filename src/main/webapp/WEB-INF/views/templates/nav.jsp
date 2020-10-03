<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark navbar-padding">
<div class="container">
  <a class="navbar-brand" href="${pageContext.request.contextPath }/home.do">Acorn Escape</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor02" aria-controls="navbarColor02" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarColor02">
    <ul class="navbar-nav ml-auto mr-auto">
      <li class="nav-item ml-3 mr-3">
        <a class="nav-link" href="${pageContext.request.contextPath}/intro.do">Escape</a>
      </li>
      <li class="nav-item ml-3 mr-3">
        <a class="nav-link" href="${pageContext.request.contextPath}/thema/thema.do">테마</a>
      </li>
      <li class="nav-item ml-3 mr-3">
        <a class="nav-link" href="${pageContext.request.contextPath}/reservation/reservation.do">예약하기</a>
      </li>
      <li class="nav-item ml-3 mr-3">
        <a class="nav-link" href="${pageContext.request.contextPath}/confirm/list.do">예약확인/취소</a>
      </li>
      <li class="nav-item ml-3 mr-3">
        <a class="nav-link" href="${pageContext.request.contextPath}/notice/hongdae/list.do">공지/이벤트</a>
      </li>
      <li class="nav-item ml-3 mr-3">
        <a class="nav-link" id="mapInfo" href="${pageContext.request.contextPath}/mapinfo/mapinfo.do">오시는길</a>
      </li>            
      <li class="nav-item ml-3 mr-3">
        <a class="nav-link" href="${pageContext.request.contextPath}/review/list.do">후기게시판</a>
      </li>      
    </ul>
  </div>
</div>
</nav>

<script>
$(".nav a").on("click", function(){
	   $(".nav").find(".active").removeClass("active");
	});
$(document).ready(function() {
	  $('li.active').removeClass('active');
	  $('a[href="' + location.pathname + '"]').closest('li').addClass('active'); 
});
</script>