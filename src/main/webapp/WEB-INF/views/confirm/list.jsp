<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.css" />
</head>
<body>
<jsp:include page="../templates/nav.jsp"></jsp:include>
<div class="container">
<form name="form" method="post" id="confirmForm">
	</br></br>
	<h3>예약 확인 / 취소</h3>
	</br></br>
	<div class="row">
		<div class="table-responsive">
			<table class="table  table-bordered table-hover text-center">
				<tbody>
					<tr>
						<th class="text-center">예약자</th>
						<td class="text-left"><input type="text" name="res_name" id="res_name" class="form-control"  ></td>
					</tr>
					<tr>
						<th class="text-center">연락처 </th>
						<td class="text-left"><input  type="text" name="phone" id="phone" class="form-control" placeholder=" '-' 없이 숫자만 입력해주세요. "></td>
					</tr>
					<tr>
						<th class="text-center">예약확인번호 </th>
						<td class="text-left"><input type="text" name="res_no" id="res_no" class="form-control"  ></td>
					</tr>
				</tbody>
			</table>	
		</div>
	</div>
	</br>
	<div class="row" style="padding-top: 30px; padding-right: 45px;">
		<div class="col-sm-12 col-md-12 text-center " >
			<input type="submit" class="btn btn-primary btn-lg" value="예약 확인" onclick="javascript: form.action='/escape/confirm/confirm.do';"/>
			<input type="submit" class="btn btn-danger btn-lg" value="예약 취소" onclick="javascript: form.action='/escape/confirm/delete.do';"/>
		</div>
	</div>
	</form>
	</br></br>
	</br></br>
</div>
<script src="${pageContext.request.contextPath }/resources/js/jquery-3.5.1.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/jquery.form.min.js"></script>

<script>
	$("#confirmForm").on("submit", function(){	
		var inputRes_name=$("#res_name").val();
		if(inputRes_name==""){
			alert("예약자 성함를(을) 입력하세요");
			$("#res_name");
			return false; 
		}
		
		var inputPhone=$("#phone").val();
		if(inputPhone==""){
			alert("연락처를(을) 입력하세요");
			$("#phone");
			return false; 
		}	
		
		var inputRes_no=$("#res_no").val();
		if(inputRes_no==""){
			alert("예약확인번호를(을) 입력하세요");
			$("#res_no");
			return false;
		}
	
	});
	
</script>
<jsp:include page="../templates/footer.jsp"></jsp:include>
</body>
</html>