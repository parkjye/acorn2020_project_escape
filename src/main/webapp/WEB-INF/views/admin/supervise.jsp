<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css?v=<%=System.currentTimeMillis() %>" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css?v=<%=System.currentTimeMillis() %>"/>
<script src="${pageContext.request.contextPath}/resources/js/angular.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.5.1.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-datepicker.css?v=<%=System.currentTimeMillis() %>"/>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap-datepicker.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap-datepicker.ko.min.js"></script>
<style>
ul.tabs{
	margin: 0px;
	padding: 0px;
	list-style: none;
}

ul.tabs li{
  display: inline-block;
	padding: 10px 15px;
	cursor: pointer;
}

ul.tabs li.current{
	color: #f00fff;
}

.tab-content{
  display: none;
	padding: 12px;
}

.tab-content.current{
	display: inherit;
}
</style>

</head>
<body>
<jsp:include page="../templates/nav.jsp"></jsp:include>
	<!-- 시작시 기본 날짜 설정은 value를 이용 -->
	<div class="container">
	<ul class="tabs">
		<li class="tab-link current" data-tab="tab-1">일정 복사</li>
		<li class="tab-link" data-tab="tab-2">일정 수정</li>
	</ul>
	
	<div id="tab-1" class="tab-content current">
		<div class="row">
			<p>기준 데이터</p>
			<input id= "bname"  type="text" />
			<input type="text" id="datePicker" class="form-control" value="">
		</div>
		<div class="row">
			<p>기준 데이터를 붙여 넣을 기간</p>
			<div class="input-group input-daterange">
		    	<input id="startDate" type="text" class="form-control" value="">
		    	<div class="input-group-addon">to</div>
		    	<input id="endDate"  type="text" class="form-control" value="">
			</div>
			<button id="buttonTest" data-ng-click="">붙여넣기</button>
		</div>
	</div>
	<div id="tab-2" class="tab-content">
		<div class="row">
			<div class="col-lg-4">
				<label for="">날짜선택</label>
				<input id="selectDate" type="date"class="form-control" min="2020-09-20" />
			</div>
			<div class="col-lg-4">
				<label for="">지점선택</label>
				<select id="selectBranch" class="form-control">
					<option value="홍대점">홍대점</option>
					<option value="대구점">대구점</option>
					<option value="인천구월점">인천구월점</option>
					<option value="전주점">전주점</option>
					<option value="잠실점">잠실점</option>
					<option value="대전둔산점">대전둔산점</option>
					<option value="천호점">천호점</option>
					<option value="수유점">수유점</option>
				</select>
			</div>
		</div>
		<div class="row">
			<table class="table table-striped mt-3">
				<thead>
					<tr class="row">
						<th class="col-1 text-center">시간</th>
						<th class="col-5 text-center">테마</th>
						<th class="col-1 text-center">예약자성함</th>
						<th class="col-1 text-center">테마</th>
						<th class="col-4 text-center">상태</th>

					</tr>
				</thead>
				<tbody id="tableItems">
					<tr class="row">
						<td class="col-1 text-center"></td>
						<td class="col-5 text-center"></td>
						<td class="col-1 text-center"></td>
						<td class="col-1 text-center"></td>
						<td class="col-2 text-center" ><a><span class="badge badge-danger">매진 처리</span></a></td>
						<td class="col-2 text-center" ><a><span class="badge badge-warning">예약 취소 처리</span></a></td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	</div>
<jsp:include page="../templates/footer.jsp"></jsp:include>
	<script>
	$(function() {
		$('#datePicker').datepicker({
		    format: "yyyy-mm-dd",	//데이터 포맷 형식(yyyy : 년 mm : 월 dd : 일 )
		    startDate: '-10d',	//달력에서 선택 할 수 있는 가장 빠른 날짜. 이전으로는 선택 불가능 ( d : 일 m : 달 y : 년 w : 주)
		    endDate: '+5m',	//달력에서 선택 할 수 있는 가장 느린 날짜. 이후로 선택 불가 ( d : 일 m : 달 y : 년 w : 주)
		    autoclose : true,	//사용자가 날짜를 클릭하면 자동 캘린더가 닫히는 옵션
		    calendarWeeks : false, //캘린더 옆에 몇 주차인지 보여주는 옵션 기본값 false 보여주려면 true
		    clearBtn : false, //날짜 선택한 값 초기화 해주는 버튼 보여주는 옵션 기본값 false 보여주려면 true
		    //datesDisabled : ['2019-06-24','2019-06-26'],//선택 불가능한 일 설정 하는 배열 위에 있는 format 과 형식이 같아야함.
		    //daysOfWeekDisabled : [0,6],	//선택 불가능한 요일 설정 0 : 일요일 ~ 6 : 토요일
		    //daysOfWeekHighlighted : [3], //강조 되어야 하는 요일 설정
		    disableTouchKeyboard : false,	//모바일에서 플러그인 작동 여부 기본값 false 가 작동 true가 작동 안함.
		    immediateUpdates: false,	//사용자가 보는 화면으로 바로바로 날짜를 변경할지 여부 기본값 :false 
		    multidate : false, //여러 날짜 선택할 수 있게 하는 옵션 기본값 :false 
		    multidateSeparator :",", //여러 날짜를 선택했을 때 사이에 나타나는 글짜 2019-05-01,2019-06-01
		    templates : {
		        leftArrow: '&laquo;',
		        rightArrow: '&raquo;'
		    }, //다음달 이전달로 넘어가는 화살표 모양 커스텀 마이징 
		    showWeekDays : true ,// 위에 요일 보여주는 옵션 기본값 : true
		    title: "테스트",	//캘린더 상단에 보여주는 타이틀
		    todayHighlight : true ,	//오늘 날짜에 하이라이팅 기능 기본값 :false 
		    toggleActive : true,	//이미 선택된 날짜 선택하면 기본값 : false인경우 그대로 유지 true인 경우 날짜 삭제
		    weekStart : 0 ,//달력 시작 요일 선택하는 것 기본값은 0인 일요일 
		    language : "ko",	//달력의 언어 선택, 그에 맞는 js로 교체해줘야한다.
		});//datepicker end
	});//ready end
	$('.input-daterange').datepicker({
	    format: "yyyy-mm-dd",	//데이터 포맷 형식(yyyy : 년 mm : 월 dd : 일 )
	    startDate: '-10d',	//달력에서 선택 할 수 있는 가장 빠른 날짜. 이전으로는 선택 불가능 ( d : 일 m : 달 y : 년 w : 주)
	    endDate: '+5m',	//달력에서 선택 할 수 있는 가장 느린 날짜. 이후로 선택 불가 ( d : 일 m : 달 y : 년 w : 주)
	    autoclose : true,	//사용자가 날짜를 클릭하면 자동 캘린더가 닫히는 옵션
	    calendarWeeks : false, //캘린더 옆에 몇 주차인지 보여주는 옵션 기본값 false 보여주려면 true
	    clearBtn : false, //날짜 선택한 값 초기화 해주는 버튼 보여주는 옵션 기본값 false 보여주려면 true
	    //datesDisabled : ['2019-06-24','2019-06-26'],//선택 불가능한 일 설정 하는 배열 위에 있는 format 과 형식이 같아야함.
	    //daysOfWeekDisabled : [0,6],	//선택 불가능한 요일 설정 0 : 일요일 ~ 6 : 토요일
	    //daysOfWeekHighlighted : [3], //강조 되어야 하는 요일 설정
	    disableTouchKeyboard : false,	//모바일에서 플러그인 작동 여부 기본값 false 가 작동 true가 작동 안함.
	    immediateUpdates: false,	//사용자가 보는 화면으로 바로바로 날짜를 변경할지 여부 기본값 :false 
	    multidate : false, //여러 날짜 선택할 수 있게 하는 옵션 기본값 :false 
	    multidateSeparator :",", //여러 날짜를 선택했을 때 사이에 나타나는 글짜 2019-05-01,2019-06-01
	    templates : {
	        leftArrow: '&laquo;',
	        rightArrow: '&raquo;'
	    }, //다음달 이전달로 넘어가는 화살표 모양 커스텀 마이징 
	    showWeekDays : true ,// 위에 요일 보여주는 옵션 기본값 : true
	    title: "테스트",	//캘린더 상단에 보여주는 타이틀
	    todayHighlight : true ,	//오늘 날짜에 하이라이팅 기능 기본값 :false 
	    toggleActive : true,	//이미 선택된 날짜 선택하면 기본값 : false인경우 그대로 유지 true인 경우 날짜 삭제
	    weekStart : 0 ,//달력 시작 요일 선택하는 것 기본값은 0인 일요일 
	    language : "ko",	//달력의 언어 선택, 그에 맞는 js로 교체해줘야한다.
	});

	$('.input-daterange input').each(function() {
	    $(this).datepicker('clearDates');
	});	
	
	async function copyDate(data,dateList){
		await data;
		standardData = data;
		for(let date in dateList){
			//각 요일마다 복사한 값들을 전송한다.
			setTimeout( () => {
				for(let copyData of standardData){
					let Params = new URLSearchParams();					
					Params.append("name",copyData.bname);
					Params.append("date",dateList[date]);
					Params.append("thema",copyData.thema);
					Params.append("time",copyData.time);
					Params.append("state","예약하기");
					fetch("/escape/supervise/setlist.do",{
						method: 'POST',
						body:Params
					})
				}				
			},date * 300);
		}
		alert("?");
		
	}
	const myBtn = document.getElementById("buttonTest");
	myBtn.addEventListener("click",function(){
		
		const startDate = document.getElementById("startDate");
		const endDate = document.getElementById("endDate");
		let dateList = getDateRangeData(startDate.value,endDate.value);
		console.log(dateList);
		
		const standardDate = document.getElementById("datePicker");
		const bname =  document.getElementById("bname");
		let standardData = [];

		const searchParams = new URLSearchParams();
		searchParams.append("name",bname.value);
		searchParams.append("date",standardDate.value);
		fetch("/escape/supervise/getlist.do",{
			method: 'POST',
			body:searchParams
		})
		.then(res=>res.json())
		.then(data=>{
			//기준일로부터 받은 데이터를 기반으로 설정한 요일만큼 데이터를 복사한다.
			copyDate(data,dateList);
		});
	});
	
	function getDateRangeData(param1, param2){  //param1은 시작일, param2는 종료일이다.
		var res_day = [];
	 	var ss_day = new Date(param1);
	   	var ee_day = new Date(param2);    	
	  		while(ss_day.getTime() <= ee_day.getTime()){
	  			var _mon_ = (ss_day.getMonth()+1);
	  			_mon_ = _mon_ < 10 ? '0'+_mon_ : _mon_;
	  			var _day_ = ss_day.getDate();
	  			_day_ = _day_ < 10 ? '0'+_day_ : _day_;
	   			res_day.push(ss_day.getFullYear() + '-' + _mon_ + '-' +  _day_);
	   			ss_day.setDate(ss_day.getDate() + 1);
	   	}
	   	return res_day;
	}	
	
	
	$(document).ready(function(){
		$('ul.tabs li').click(function(){
			var tab_id = $(this).attr('data-tab');

			$('ul.tabs li').removeClass('current');
			$('.tab-content').removeClass('current');

			$(this).addClass('current');
			$("#"+tab_id).addClass('current');
		})
	});
	
	
	function initDateUI(){
		var today = new Date();
		var dd = today.getDate();
		var mm = today.getMonth()+2; //January is 0!
		//오늘로부터 2개월뒤까지만 달력에 표시함 
		var yyyy = today.getFullYear();
		 if(dd<10){
		        dd='0'+dd
		    } 
		    if(mm<10){
		        mm='0'+mm
		    } 
		    if(mm>12){
		    	mm = mm%12;
		    	yyyy+=1;
		        if(mm<10){
		            mm='0'+mm
		        }
		    }
		today = yyyy+'-'+mm+'-'+dd;
		document.getElementById("selectDate").setAttribute("max", today);
	};

	async function getOneDaySchedule(day,branch)
	{
		const params = new URLSearchParams();
		params.append("day",day.value);
		params.append("branch",branch.value);
		let response = await fetch("/escape/supervise/getScheduleOne.do",{
			method: 'POST',
			body:params
		});
		const result = await response.json(); 
		console.log(result);
		return result;
	}
	const tableTd = document.getElementById("tableItems");
	function renderTable(item){
		tableTd.innerHTML +=`
			<tr class="row">
				<td class="col-1 text-center">\${item.time}</td>
				<td class="col-5 text-center">\${item.thema}</td>
				<td class="col-1 text-center">\${item.res_name}</td>
				<td class="col-1 text-center">\${item.state}</td>
				<td class="col-2 text-center" ><a><span class="badge badge-danger">매진 처리</span></a></td>
				<td class="col-2 text-center" ><a><span class="badge badge-warning">예약 취소 처리</span></a></td>
			</tr>
		`;
	}
	function addHandlerSchedule(){
		const day = document.getElementById("selectDate");
		const branch = document.getElementById("selectBranch");
		
		day.addEventListener("change",async function(){
			renderReset();
			const items = await getOneDaySchedule(day,branch);
			console.log('음'+items);
			render(items);
		});
		
		branch.addEventListener("change",async function(){
			renderReset();
			const items = await getOneDaySchedule(day,branch);
			console.log('음'+items);
			render(items);
		});
	}
	function renderReset(){
		tableTd.innerHTML = "";
	}
	function render(items){
		for(let i =0; i < items.length; i++){
			renderTable(items[i]);
		}
	}
	
	initDateUI();
	addHandlerSchedule();
</script>
</body>
</html>