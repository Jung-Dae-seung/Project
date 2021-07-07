<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
					<a class="btn_1 d-none d-lg-block" href="login.jsp">Log in</a>

				</div>
			</div>
		</div>
	</header>
	<!-- Header part end-->


	<form class="form-signin" name="#" action="/login" method="post">
		<section class="cta_part section_padding">
			<div class="container">
				<div class="row justify-content-center align-items-center">
					<div class="col-lg-8 col-xl-5">
						<div class="cta_text text-center">
							<h2>로그인</h2>
						</div>
						<div class="col py-2 px-lg-5">
							<label for="userid" class="sr-only">로그인 아이디</label> <input
								type="text" id="username" name="username" class="form-control"
								placeholder="아이디를 입력해 주세요" required autofocus>
						</div>
						<div class="col py-2 px-lg-5">
							<label for="password" class="sr-only">비밀번호</label> <input
								type="password" id="password" name="password"
								class="form-control" placeholder="비밀번호를 입력해 주세요" required>
						</div>
						<div class="checkbox px-lg-5">
							<label> <input type="checkbox" value="remember-me">
								<strong style="color:white;font-style: italic;" >로그인 정보 기억하기</strong>
							</label>
						</div>
						<div class="col py-2 px-lg-5">
							<button type="button" class="btn btn-danger btn-lg btn-block">회원가입</button>
						</div>
						<div class="row justify-content-center">
							<div class="col-5">
								<button type="submit" class="btn btn-warning btn-lg btn-block">로그인</button>
							</div>
							<div class="col-5">
								<button type="button" class="btn btn-primary btn-lg btn-block">ID/PW
									찾기</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</form>
</body>
</html>