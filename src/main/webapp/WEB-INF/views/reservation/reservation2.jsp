<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html data-ng-app="App">
<head>
<meta charset="UTF-8">
<title>예약하기</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css?v=<%=System.currentTimeMillis() %>" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css?v=<%=System.currentTimeMillis() %>"/>
<script src="${pageContext.request.contextPath}/resources/js/angular.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.5.1.js"></script>
<script>
	var App=angular.module("App", []);
	App.controller("resCtrl", function($scope, $http){
		$scope.thema='<c:out value="${param.thema}"/>';
		$scope.time='<c:out value="${param.time}"/>';
		$scope.date='<c:out value="${param.date}"/>';
		$scope.bname='<c:out value="${param.bname}"/>';
		$scope.send=function() {
			$http({
			url:"/escape/reservation/res_process.do",
			method:"get",
			params:{resname:$scope.resname,resdate:$scope.date,time:$scope.time,bname:$scope.bname,thema:$scope.thema,phone:$scope.phone,cost:$scope.cost,personal:$scope.personal}
		}).success(function(data){
			resname=$scope.resname;
			phone=$scope.phone;
			alert("예약되었습니다.");
			location.href="/escape/reservation/res_detail.do?bname="+$scope.bname+"&&thema="+$scope.thema+"&&personal="+$scope.personal+"&&cost="+$scope.cost+"&&resname="+$scope.resname+"&&phone="+$scope.phone;
		});
		};
		
		$scope.change=function(){
			if($scope.personal=='2p'){
				$scope.cost='45,000원';
			}else if($scope.personal=='3p'){
				$scope.cost='60,000원';
			}else if($scope.personal=='4p'){
				$scope.cost='76,000원';
			}else if($scope.personal=='5p'){
				$scope.cost='90,000원';
			}else{
				$scope.cost='102,000원';
			}
		}
	});
</script>
<style>
	.container{
		zoom: 0.8;
	}
</style>
</head>
<body>
<jsp:include page="../templates/nav.jsp"></jsp:include>
	<div data-ng-controller="resCtrl" class="container mb-5 mt-5">
		<h1 class="text-center">정보입력</h1>
		<div class="form-group row">
			<div class="col-6">
				<label for="date">날짜</label>
				<input type="text" name="date"  class="form-control" value="${param.date } ${param.time}" readonly/>
			</div>
			<div class="col-6">
				<label for="branch">지점</label>
				<input type="text" name="branch" data-ng-model="bname" class="form-control" readonly/>
			</div>
		</div>
		<div class="form-group row">
			<div class="col-6">
				<label for="">테마</label>
				<input class="form-control" data-ng-model="thema" type="text" readonly />
			</div>
			<div class="col-6">
				<label for="people">인원선택</label>
				<select data-ng-model="personal" data-ng-change="change()" class="form-control">
					<option value="2p">2명</option>
					<option value="3p">3명</option>
					<option value="4p">4명</option>
					<option value="5p">5명</option>
					<option value="6p">6명</option>
				</select>
			</div>
		</div>
		<div class="form-group row">
			<div class="col-6">
				<label for="cost">금액</label>
				<input data-ng-model="cost" type="text" class="form-control" value="45,000원" readonly/>
			</div>
		</div>
		<div class="form-group row">
			<div class="col-6">
				<label for="resname">예약자 성함</label>
				<input data-ng-model="resname" type="text" class="form-control" />
			</div>
			<div class="col-6">
				<label for="">연락처</label>
				<input data-ng-model="phone" type="text" class="form-control" placeholder="'-'없이 숫자만 압력해주세요." />
			</div>
		</div>
		<button data-ng-click="send()" style="margin-left:45%" class="btn btn-outline-info">온라인 예약하기</button>
	</div>
<jsp:include page="../templates/footer.jsp"></jsp:include>
</body>
</html>