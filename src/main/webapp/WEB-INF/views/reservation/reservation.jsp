<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약하기</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css?v=<%=System.currentTimeMillis() %>" />
<script src="../resources/js/jquery-3.5.1.js"></script>
<script src="../resources/js/angular.min.js"></script>
<script src="../resources/js/angular-route.min.js"></script>
<script src="../resources/js/angular-animate.min.js"></script>
<script>
	
</script>
</head>
<body>
<jsp:include page="../templates/nav.jsp"></jsp:include>
<div class="container">
	<h1 class="text-center">예약하기</h1>
	<div class="form-group row">
		<div class="col-4">
			<label for="dateselect">날짜선택</label>
			<input type="date" id="dateselect" class="form-control" min="2020-09-20" max="2020-10-05" />
		</div>
		<div class="col-4">
			<label for="">지점선택</label>
			<select id="branch" class="form-control">
				<option value="hongdae">홍대</option>
				<option value="">#</option>
				<option value="">#</option>
				<option value="">#</option>
				<option value="">#</option>
				<option value="">#</option>
				<option value="">#</option>
				<option value="">#</option>
			</select>
		</div>
		<div class="col-4">
			<label for="dateselect">테마</label>
			<select id="thema" name="thema" class="form-control">
				<option id="total" value="total">---전체---</option>
				<option value="pa">파라미드의 비밀 ★★★☆☆</option>
				<option value="ha">헨젤과 그레텔 ★★★★☆</option>
				<option value="to">Towering ★★★★☆</option>
				<option value="ge">Gestapo ★★★★☆</option>
				<option value="mo">Monkey House ★★★☆☆</option>
				<option value="ja">장기밀매 ★★★★★</option>
				<option value="de">Deliver ★★★★☆</option>
				<option value="ro">Romeo Point ★★★★☆</option>
			</select>
		</div>
		<table class="table table-striped mt-3">
			<thead>
				<tr class="row">
					<th class="col-3 text-center">시간</th>
					<th class="col-6 text-center">테마</th>
					<th class="col-3 text-center">예약</th>
				</tr>
			</thead>
			<tbody style="background-color: white">
				<tr class="row">
					<td class="col-3">1</td>
					<td class="col-6">2</td>
					<td class="col-3">3</td>
				</tr>
			</tbody>
		</table>
		<script>
			document.getElementById('dateselect').value = new Date().toISOString().substring(0, 10);
			
			$("#thema").change(function(){
				console.log($(this).children('option:selected').val());
			});
		</script>
	</div>
</div>
<jsp:include page="../templates/footer.jsp"></jsp:include>
</body>
</html>