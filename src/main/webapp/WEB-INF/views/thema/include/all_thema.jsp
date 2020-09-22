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
						<img src="http://cubeescape.co.kr/theme/basic_room2/img/rain/room06.jpg" alt="테마: Towering" />
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
				<div class="text-center title">Towering</div>
				<div class="text-center">재난</div>
				<div class="text-center">
					<a class="preview btn btn-warning" title="Towering" href="">온라인 예약하기</a>
				</div>
			</div>
		</li>
	</ul>
	<ul class="thema-list col-md-4">
		<li class="thema">
			<div class="thema-info">
				<div class="thema-image">
					<div class="image">
						<img src="http://cubeescape.co.kr/theme/basic_room2/img/rain/room05.jpg" alt="테마: Gestapo" />
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
				<div class="text-center title">Gestapo</div>
				<div class="text-center">첩보</div>
				<div class="text-center">
					<a class="preview btn btn-warning" title="Gestapo" href="">온라인 예약하기</a>
				</div>
			</div>
		</li>
	</ul>
	<ul class="thema-list col-md-4">
		<li class="thema">
			<div class="thema-info">
				<div class="thema-image">
					<div class="image">
						<img src="http://cubeescape.co.kr/theme/basic_room2/img/rain/room02.jpg" alt="테마: Monkey House" />
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
				<div class="text-center title">Monkey House</div>
				<div class="text-center">호러/스릴러</div>
				<div class="text-center">
					<a class="preview btn btn-warning" title="Monkey House" href="">온라인 예약하기</a>
				</div>
			</div>
		</li>
	</ul>
	<ul class="thema-list col-md-4">
		<li class="thema">
			<div class="thema-info">
				<div class="thema-image">
					<div class="image">
						<img src="http://cubeescape.co.kr/theme/basic_room2/img/rain/room03.jpg" alt="테마: 장기밀매" />
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
				<div class="text-center title">장기밀매</div>
				<div class="text-center">스릴러/19세미만불가</div>
				<div class="text-center">
					<a class="preview btn btn-warning" title="장기밀매" href="">온라인 예약하기</a>
				</div>
			</div>
		</li>
	</ul>
	<ul class="thema-list col-md-4">
		<li class="thema">
			<div class="thema-info">
				<div class="thema-image">
					<div class="image">
						<img src="http://cheonho.cubeescape.co.kr/theme/basic_room2/img/rain/room21.jpg" alt="테마: 장기밀매 PART2" />
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
				<div class="text-center title">장기밀매 PART2</div>
				<div class="text-center">호러</div>
				<div class="text-center">
					<a class="preview btn btn-warning" title="장기밀매 PART2" href="">온라인 예약하기</a>
				</div>
			</div>
		</li>
	</ul>
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
				<<div class="thema-image">
					<div class="image">
						<img src="http://cubeescape.co.kr/theme/basic_room2/img/rain/room08.jpg" alt="테마: RomeoPoint" />
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
				<div class="text-center title">RomeoPoint</div>
				<div class="text-center">스릴러</div>
				<div class="text-center">
					<a class="preview btn btn-warning" title="RomeoPoint" href="">온라인 예약하기</a>
				</div>
			</div>
		</li>
	</ul>
	<ul class="thema-list col-md-4">
		<li class="thema">
			<div class="thema-info">
				<div class="thema-image">
					<div class="image">
						<img src="http://daegu.cubeescape.co.kr/theme/basic_room2/img/rain/room09.jpg" alt="테마: 폼페이최후의날" />
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
				<div class="text-center title">폼페이최후의날</div>
				<div class="text-center">어드벤쳐</div>
				<div class="text-center">
					<a class="preview btn btn-warning" title="폼페이최후의날" href="">온라인 예약하기</a>
				</div>
			</div>
		</li>
	</ul>
	<ul class="thema-list col-md-4">
		<li class="thema">
			<div class="thema-info">
				<div class="thema-image">
					<div class="image">
						<img src="http://daegu.cubeescape.co.kr/theme/basic_room2/img/rain/room10.jpg" alt="테마: 집행" />
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
				<div class="text-center title">집행</div>
				<div class="text-center">추리/스릴러</div>
				<div class="text-center">
					<a class="preview btn btn-warning" title="집행" href="">온라인 예약하기</a>
				</div>
			</div>
		</li>
	</ul>
	<ul class="thema-list col-md-4">
		<li class="thema">
			<div class="thema-info">
				<div class="thema-image">
					<div class="image">
						<img src="http://daegu.cubeescape.co.kr/theme/basic_room2/img/rain/room11.jpg" alt="테마: 카타콤" />
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
				<div class="text-center title">카타콤</div>
				<div class="text-center">추리/스릴러</div>
				<div class="text-center">
					<a class="preview btn btn-warning" title="카타콤" href="">온라인 예약하기</a>
				</div>
			</div>
		</li>
	</ul>
	<ul class="thema-list col-md-4">
		<li class="thema">
			<div class="thema-info">
				<div class="thema-image">
					<div class="image">
						<img src="http://incheon.cubeescape.co.kr/theme/basic_room2/img/rain/room14.jpg" alt="테마: 타이타닉" />
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
				<div class="text-center title">타이타닉</div>
				<div class="text-center">어드벤처</div>
				<div class="text-center">
					<a class="preview btn btn-warning" title="타이타닉" href="">온라인 예약하기</a>
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
						<img src="http://jamsil.cubeescape.co.kr/theme/basic_room2/img/rain/room15.jpg" alt="테마: 마션" />
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
				<div class="text-center title">마션</div>
				<div class="text-center">추리/어드벤처</div>
				<div class="text-center">
					<a class="preview btn btn-warning" title="마션" href="">온라인 예약하기</a>
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
						<img src="http://cheonho.cubeescape.co.kr/theme/basic_room2/img/rain/room20.jpg" alt="테마: The Maze" />
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
				<div class="text-center title">The Maze</div>
				<div class="text-center">어드벤처/스릴러</div>
				<div class="text-center">
					<a class="preview btn btn-warning" title="The Maze" href="">온라인 예약하기</a>
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
						<img src="http://cheonho.cubeescape.co.kr/theme/basic_room2/img/rain/room24.jpg" alt="테마: 장미의 비밀" />
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
				<div class="text-center title">장미의 비밀</div>
				<div class="text-center">추리/스릴러</div>
				<div class="text-center">
					<a class="preview btn btn-warning" title="장미의 비밀" href="">온라인 예약하기</a>
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