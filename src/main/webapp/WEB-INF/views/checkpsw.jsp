<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>EatAtLine4</title>
<link rel="icon" href="resources/img/favicon.png">
<!-- login CSS -->
<link rel="stylesheet" href="resources/css/login.css">
</head>
<body>
	<!--::header part start::-->
	<jsp:include page="include/header.jsp"></jsp:include>
	<!-- Header part end-->

	<div class="container h-100">
		<div class="d-flex justify-content-center h-100">
			<div class="user_card">
				<div class="d-flex justify-content-center">
					<div class="brand_logo_container">
						<img src="resources/img/logo.png" class="brand_logo" alt="Logo">
					</div>
				</div>
				<div class="d-flex justify-content-center form_container">
					<form id="changeuserinfoform" method="post" action="" class="">
						<div class="input-group mb-4">
							<div class="input-group-append">
								<span class="input-group-text"><i class="fas fa-user"></i></span>
							</div>
							<input type="text" name="userid" class="form-control input_user"
								value="${userid}" readonly="readonly">
						</div>
						<div class="input-group mb-4">
							<div class="input-group-append">
								<span class="input-group-text"><i class="fas fa-key"></i></span>
							</div>
							<input type="password" name="password" class="form-control input_pass"
								value="" placeholder="password">
						</div>
							<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
						<div class="mt-5">
							<div class="d-flex justify-content-center mt-4 login_container">
								<div class="col">
									<button type="submit" name="button" class="btn login_btn">confirm</button>
								</div>
								<div class="col">
									<button type="reset" name="button" class="btn login_btn">cancel</button>
								</div>
							</div>
						</div>
					</form>
				</div>
				<div class="mt-4">
					<div class="d-flex justify-content-center links">
						<a href="#">Forgot your password?</a>
					</div>
				</div>				
			</div>
		</div>
	</div>
	<!-- validation -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.js"></script>
	<!-- validation 사용자 작성 코드 삽입-->
	<script src="/resources/js/register.js"></script>
	<script>
	$(function () {
		let error = '${error}';
		
		if(error){
			alert(error);
		}
	})
	</script>
</body>
</html>
