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
						<img src="http://cheonho.cubeescape.co.kr/theme/basic_room2/img/rain/room19.jpg" alt="테마: The Cube" />
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
				<div class="text-center title">The Cube</div>
				<div class="text-center">추리/스릴러</div>
				<div class="text-center">
					<a class="preview btn btn-warning" title="The Cube" href="">온라인 예약하기</a>
				</div>
			</div>
		</li>
	</ul>
	<ul class="thema-list col-md-4">
		<li class="thema">
			<div class="thema-info">
				<div class="thema-image">
					<div class="image">
						<img src="http://cheonho.cubeescape.co.kr/theme/basic_room2/img/rain/room22.jpg" alt="테마: 사라진 천사들" />
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
				<div class="text-center title">사라진 천사들</div>
				<div class="text-center">추리/스릴러/호러</div>
				<div class="text-center">
					<a class="preview btn btn-warning" title="사라진 천사들" href="">온라인 예약하기</a>
				</div>
			</div>
		</li>
	</ul>
	<ul class="thema-list col-md-4">
		<li class="thema">
			<div class="thema-info">
				<div class="thema-image">
					<div class="image">
						<img src="http://suyu.cubeescape.co.kr/theme/basic_room2/img/rain/sroom7.jpg" alt="테마: 마녀의 꿈" />
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
				<div class="text-center title">마녀의 꿈</div>
				<div class="text-center">판타지/어드벤처</div>
				<div class="text-center">
					<a class="preview btn btn-warning" title="마녀의 꿈" href="">온라인 예약하기</a>
				</div>
			</div>
		</li>
	</ul>
	<ul class="thema-list col-md-4">
		<li class="thema">
			<div class="thema-info">
				<div class="thema-image">
					<div class="image">
						<img src="http://suyu.cubeescape.co.kr/theme/basic_room2/img/rain/sroom1.jpg" alt="테마: Treasure Hunters(1):우든펍의 비밀" />
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
				<div class="text-center title">Treasure Hunters(1):우든펍의 비밀</div>
				<div class="text-center">추리/어드벤처</div>
				<div class="text-center">
					<a class="preview btn btn-warning" title="Treasure Hunters(1):우든펍의 비밀" href="">온라인 예약하기</a>
				</div>
			</div>
		</li>
	</ul>
	<ul class="thema-list col-md-4">
		<li class="thema">
			<div class="thema-info">
				<div class="thema-image">
					<div class="image">
						<img src="http://suyu.cubeescape.co.kr/theme/basic_room2/img/rain/sroom2.jpg" alt="테마: Treasure Hunters(2):빅토리아호의 침몰" />
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
				<div class="text-center title">Treasure Hunters(2):빅토리아호의 침몰</div>
				<div class="text-center">추리/어드벤처</div>
				<div class="text-center">
					<a class="preview btn btn-warning" title="Treasure Hunters(2):빅토리아호의 침몰" href="">온라인 예약하기</a>
				</div>
			</div>
		</li>
	</ul>
	<ul class="thema-list col-md-4">
		<li class="thema">
			<div class="thema-info">
				<div class="thema-image">
					<div class="image">
						<img src="http://suyu.cubeescape.co.kr/theme/basic_room2/img/rain/sroom3.jpg" alt="테마: Treasure Hunters(3):거미의 둥지" />
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
				<div class="text-center title">Treasure Hunters(3):거미의 둥지</div>
				<div class="text-center">스릴러/어드벤처</div>
				<div class="text-center">
					<a class="preview btn btn-warning" title="Treasure Hunters(3):거미의 둥지" href="">온라인 예약하기</a>
				</div>
			</div>
		</li>
	</ul>
	<ul class="thema-list col-md-4">
		<li class="thema">
			<div class="thema-info">
				<div class="thema-image">
					<div class="image">
						<img src="http://suyu.cubeescape.co.kr/theme/basic_room2/img/rain/sroom4.jpg" alt="테마: Treasure Hunters(4):골든 아이" />
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
				<div class="text-center title">Treasure Hunters(4):골든 아이</div>
				<div class="text-center">판타지/어드벤처</div>
				<div class="text-center">
					<a class="preview btn btn-warning" title="Treasure Hunters(4):골든 아이" href="">온라인 예약하기</a>
				</div>
			</div>
		</li>
	</ul>	
</div>