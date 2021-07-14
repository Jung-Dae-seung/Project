<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>Insert title here</title>
<link rel="icon" href="resources/img/favicon.png">
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<!-- animate CSS -->
<link rel="stylesheet" href="resources/css/animate.css">
<!-- owl carousel CSS -->
<link rel="stylesheet" href="resources/css/owl.carousel.min.css">
<!-- font awesome CSS -->
<link rel="stylesheet" href="resources/css/all.css">
<!-- flaticon CSS -->
<link rel="stylesheet" href="resources/css/flaticon.css">
<link rel="stylesheet" href="resources/css/themify-icons.css">
<link rel="stylesheet" href="resources/css/nice-select.css">
<!-- font awesome CSS -->
<link rel="stylesheet" href="resources/css/magnific-popup.css">
<!-- swiper CSS -->
<link rel="stylesheet" href="resources/css/slick.css">
<!-- style CSS -->
<link rel="stylesheet" href="resources/css/style.css">
<!-- signup CSS -->
<link rel="stylesheet" href="resources/css/login.css">

<!-- jquery -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!-- validation -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.js"></script>
<!-- validation 사용자 작성 코드 삽입-->
<script src="/resources/js/register.js"></script>
</head>
<body>
	<!--::header part start::-->
	<header class="main_menu home_menu">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-lg-12">
					<a class="navbar-brand" href="index.jsp"> <img
						src="resources/img/logo.png" alt="<logo></logo>">
					</a> <a class="btn_1 d-none d-lg-block" href="community.jsp">Community</a>
					<a class="btn_1 d-none d-lg-block" href="index.jsp">index</a>
				</div>
			</div>
		</div>
	</header>
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
								value="${login.userid}" readonly="readonly">
						</div>
						<div class="input-group mb-4">
							<div class="input-group-append">
								<span class="input-group-text"><i class="fas fa-key"></i></span>
							</div>
							<input type="password" name="current_password" class="form-control input_pass"
								value="" placeholder="password">
						</div>
						
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
