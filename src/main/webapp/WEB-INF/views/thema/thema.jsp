<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thema</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.0.0/animate.min.css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css?v=<%=System.currentTimeMillis() %>" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.0.0/animate.min.css"/>
<script src="${pageContext.request.contextPath}/resources/js/jquery.min.js" ></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js" /></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css?v=<%=System.currentTimeMillis() %>"/>
<script src="${pageContext.request.contextPath}/resources/js/thema_image_change.js"></script>
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
		<a class="preview btn btn-warning" title="모든 테마" data-branch="all" >모든 테마</a>
		<a class="preview btn btn-warning" title="홍대점 테마" data-branch="hongdae"  >홍대점</a>
		<a class="preview btn btn-warning" title="대구점 테마" data-branch="daegu"  >대구점</a>
		<a class="preview btn btn-warning" title="인천구월점 테마" data-branch="incheon"  >인천구월점</a>
		<a class="preview btn btn-warning" title="전주점 테마" data-branch="jeonju"  >전주점</a>
		<a class="preview btn btn-warning" title="잠실점 테마" data-branch="jamsil"  >잠실점</a>
		<a class="preview btn btn-warning" title="대전둔산점 테마" data-branch="daejeon"  >대전둔산점</a>
		<a class="preview btn btn-warning" title="천호점 테마" data-branch="cheonho"  >천호점</a>
		<a class="preview btn btn-warning" title="수유점 테마" data-branch="suyu"  >수유점</a>
	</div>	
	<div class="thema container">
	</div>    
	<script>
	let thema = "";
	const box =document.querySelectorAll(".preview"); 
	const themaele = document.querySelector(".thema");
	for(let i=0; i<box.length; i++)
	{
		box[i].addEventListener("click",function(){
			themaele.style.opacity = 0;
			render(this.dataset.branch);
			setTimeout(() => {
				themaele.style.opacity = 1;
			}, 100);
		});
	}

	function clone(obj){
		var output = {};
		for(var i in obj){
			output[i] = obj[i];
		}
		return output;
	}
	
		const render = function(branch){
			themaele.innerHTML = " ";
			switch (branch) {
			case "all":
					thema =  allThema.slice();
				break;
			case "incheon":
					thema =  incheonThema.slice();
				break;
			case "jeonju":
					thema =  jeonjuThema.slice();
				break;
			case "daejeon":
					thema =  daejeonThema.slice();
				break;
			case "cheonho":
					thema = cheonhoThema.slice();
				break;
			case "daegu":
					thema =  daeguThema.slice();
				break;
			case "hongdae":
				thema =  hongdaeThema.slice();
				break;
			case "suyu":
				thema =  suyuThema.slice();
				break;
			case "jamsil":
				thema =  jamsilThema.slice();
				break;
			default:
				break;
			}
			
			for(let item of thema){
				document.querySelector(".thema").innerHTML += `
			    <ul class="col-md-4">
			        <li>
			            <div class="thema__border">
			                <div class="thema__border__picture">
			                    <div>
			                        <div class="wrap__box">
			                            <img src="\${themaes[item].img}" alt="\${themaes[item].alt}" />
			                            <div class="note">
			                                \${themaes[item].contentsText}
			                            </div>
			                        </div>
			                    </div>
			                </div>
			                <div class="text-center">\${themaes[item].level}</div>
			                <div class="text-center title">\${themaes[item].title}</div>
			                <div class="text-center">\${themaes[item].type}</div>
			                <div class="text-center">
			                    <a class="preview btn btn-warning" title="\${themaes[item].title}" href="">온라인 예약하기</a>
			                </div>
			            </div>
			        </li>
			    </ul>
			`};
		};
		
		//최초실행
		{
			themaele.style.opacity = 0;
			render("all");
			setTimeout(() => {
				themaele.style.opacity = 1;
			}, 250);
			
		}
	</script>
</div>
</body>
</html>