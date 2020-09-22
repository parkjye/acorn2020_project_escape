<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script>
//테마 설명 나타나도록 하는 script
$(document).ready(function(){
	$(".image").show();
	$(".note").hide();
	$(".image").click(function(){
		$(".image").hide();
		$(".note").show();
		$(".note").click(function(){
			$(".note").hide();
			$(".image").show();
		});
	});
	//div 사이즈 맞추기
	var imageWidth=$(".image").width();
	var imageHeight=$(".image").height();
	$(".note").width(imageWidth);
	$(".note").height(imageHeight);
});
</script>
<div class="container">
	<ul class="thema-list col-md-4">
		<li class="thema">
			<div class="thema-info">
				<div class="thema-image">
					<div class="image">
						<img src="http://cubeescape.co.kr/theme/basic_room2/img/rain/room07.jpg" alt="테마: Deliver" />
					</div>
					<div class="note">
						<span>
							<p>설명칸입니다.</p>
							<p>설명칸입니다.</p>
							<p>설명칸입니다.</p>
							<p>설명칸입니다.</p>
							<p>설명칸입니다.</p>	
						</span>
					</div>
				</div>
				<div class="text-center">난이도: 4/5</div>
				<div class="text-center title">Deliver</div>
				<div class="text-center">스릴러/19세미만불가</div>
				<div class="text-center">
					<a class="preview btn btn-warning" title="Deliver" href="">온라인 예약하기</a>
				</div>
			</div>
		</li>
	</ul>
	<ul class="thema-list col-md-4">
		<li class="thema">
			<div class="thema-info">
				<div class="thema-image">
					<div class="image">
						<img src="http://junju.cubeescape.co.kr/theme/basic_room2/img/rain/room16.jpg" alt="테마: 좀비스쿨" />
					</div>
					<div class="note">
						<span>
							<p>설명칸입니다.</p>
							<p>설명칸입니다.</p>
							<p>설명칸입니다.</p>
							<p>설명칸입니다.</p>
							<p>설명칸입니다.</p>	
						</span>
					</div>
				</div>
				<div class="text-center">난이도: 5/5</div>
				<div class="text-center title">좀비스쿨</div>
				<div class="text-center">호러/스릴러</div>
				<div class="text-center">
					<a class="preview btn btn-warning" title="좀비스쿨" href="">온라인 예약하기</a>
				</div>
			</div>
		</li>
	</ul>
	<ul class="thema-list col-md-4">
		<li class="thema">
			<div class="thema-info">
				<div class="thema-image">
					<div class="image">
						<img src="http://junju.cubeescape.co.kr/theme/basic_room2/img/rain/room17.jpg" alt="테마: 피고인" />
					</div>
					<div class="note">
						<span>
							<p>설명칸입니다.</p>
							<p>설명칸입니다.</p>
							<p>설명칸입니다.</p>
							<p>설명칸입니다.</p>
							<p>설명칸입니다.</p>	
						</span>
					</div>
				</div>
				<div class="text-center">난이도: 4/5</div>
				<div class="text-center title">피고인 </div>
				<div class="text-center">추리/스릴러</div>
				<div class="text-center">
					<a class="preview btn btn-warning" title="피고인 " href="">온라인 예약하기</a>
				</div>
			</div>
		</li>
	</ul>
	<ul class="thema-list col-md-4">
		<li class="thema">
			<div class="thema-info">
				<div class="thema-image">
					<div class="image">
						<img src="http://junju.cubeescape.co.kr/theme/basic_room2/img/rain/room18.jpg" alt="테마: 제시의 시크릿" />
					</div>
					<div class="note">
						<span>
							<p>설명칸입니다.</p>
							<p>설명칸입니다.</p>
							<p>설명칸입니다.</p>
							<p>설명칸입니다.</p>
							<p>설명칸입니다.</p>	
						</span>
					</div>
				</div>
				<div class="text-center">난이도: 4/5</div>
				<div class="text-center title">제시의 시크릿</div>
				<div class="text-center">섹시/19세미만불가</div>
				<div class="text-center">
					<a class="preview btn btn-warning" title="제시의 시크릿" href="">온라인 예약하기</a>
				</div>
			</div>
		</li>
	</ul>
	<ul class="thema-list col-md-4">
		<li class="thema">
			<div class="thema-info">
				<div class="thema-image">
					<div class="image">
						<img src="http://incheon.cubeescape.co.kr/theme/basic_room2/img/rain/room12.jpg" alt="테마: 신데렐라" />
					</div>
					<div class="note">
						<span>
							<p>설명칸입니다.</p>
							<p>설명칸입니다.</p>
							<p>설명칸입니다.</p>
							<p>설명칸입니다.</p>
							<p>설명칸입니다.</p>	
						</span>
					</div>
				</div>
				<div class="text-center">난이도: 4/5</div>
				<div class="text-center title">신데렐라</div>
				<div class="text-center">동화/어드벤처</div>
				<div class="text-center">
					<a class="preview btn btn-warning" title="신데렐라" href="">온라인 예약하기</a>
				</div>
			</div>
		</li>
	</ul>
	<ul class="thema-list col-md-4">
		<li class="thema">
			<div class="thema-info">
				<div class="thema-image">
					<div class="image">
						<img src="http://incheon.cubeescape.co.kr/theme/basic_room2/img/rain/room13.jpg" alt="테마: 집착" />
					</div>
					<div class="note">
						<span>
							<p>설명칸입니다.</p>
							<p>설명칸입니다.</p>
							<p>설명칸입니다.</p>
							<p>설명칸입니다.</p>
							<p>설명칸입니다.</p>	
						</span>
					</div>
				</div>
				<div class="text-center">난이도: 4/5</div>
				<div class="text-center title">집착</div>
				<div class="text-center">추리/스릴러</div>
				<div class="text-center">
					<a class="preview btn btn-warning" title="집착" href="">온라인 예약하기</a>
				</div>
			</div>
		</li>
	</ul>
	<ul class="thema-list col-md-4">
		<li class="thema">
			<div class="thema-info">
				<div class="thema-image">
					<div class="image">
						<img src="http://cubeescape.co.kr/theme/basic_room2/img/rain/room04.jpg" alt="테마: 헨젤과 그레텔" />
					</div>
					<div class="note">
						<span>
							<p>설명칸입니다.</p>
							<p>설명칸입니다.</p>
							<p>설명칸입니다.</p>
							<p>설명칸입니다.</p>
							<p>설명칸입니다.</p>	
						</span>
					</div>
				</div>
				<div class="text-center">난이도: 4/5</div>
				<div class="text-center title">헨젤과 그레텔</div>
				<div class="text-center">동화 어드벤처</div>
				<div class="text-center">
					<a class="preview btn btn-warning" title="헨젤과 그레텔" href="">온라인 예약하기</a>
				</div>
			</div>
		</li>
	</ul>
	<ul class="thema-list col-md-4">
		<li class="thema">
			<div class="thema-info">
				<div class="thema-image">
					<div class="image">
						<img src="http://cubeescape.co.kr/theme/basic_room2/img/rain/room01.jpg" alt="테마: 피라미드의 비밀" />
					</div>
					<div class="note">
						<span>
							<p>설명칸입니다.</p>
							<p>설명칸입니다.</p>
							<p>설명칸입니다.</p>
							<p>설명칸입니다.</p>
							<p>설명칸입니다.</p>	
						</span>
					</div>
				</div>
				<div class="text-center">난이도: 3/5</div>
				<div class="text-center title">피라미드</div>
				<div class="text-center">어드벤처</div>
				<div class="text-center">
					<a class="preview btn btn-warning" title="피라미드" href="">온라인 예약하기</a>
				</div>
			</div>
		</li>
	</ul>
</div>
