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

	<header class="main_menu home_menu">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-lg-12">
					<nav class="navbar navbar-expand-lg navbar-light">
						<a class="navbar-brand" href="index.html"> <img
							src="resources/img/logo.png" alt="<logo></logo>">
						</a>
						<button class="navbar-toggler" type="button"
							data-toggle="collapse" data-target="#navbarSupportedContent"
							aria-controls="navbarSupportedContent" aria-expanded="false"
							aria-label="Toggle navigation">
							<span class="menu_icon"><i class="fas fa-bars"></i></span>
						</button>
						<div class="collapse navbar-collapse main-menu-item"
							id="navbarSupportedContent">
							<ul class="navbar-nav">
								<li class="nav-item"><a class="nav-link" href="index.html">Home</a>
								</li>
								<li class="nav-item"><a class="nav-link" href="about.html">about</a>
								</li>
								<li class="nav-item"><a class="nav-link"
									href="packages.html">packages</a></li>
								<li class="nav-item dropdown"><a
									class="nav-link dropdown-toggle" href="blog.html"
									id="navbarDropdown" role="button" data-toggle="dropdown"
									aria-haspopup="true" aria-expanded="false"> Blog </a>
									<div class="dropdown-menu" aria-labelledby="navbarDropdown">
										<a class="dropdown-item" href="blog.html"> blog</a> <a
											class="dropdown-item" href="single-blog.html">Single blog</a>
									</div></li>
								<li class="nav-item dropdown"><a
									class="nav-link dropdown-toggle" href="blog.html"
									id="navbarDropdown1" role="button" data-toggle="dropdown"
									aria-haspopup="true" aria-expanded="false"> pages </a>
									<div class="dropdown-menu" aria-labelledby="navbarDropdown1">
										<a class="dropdown-item" href="elements.html">Elements</a>
									</div></li>
								<li class="nav-item"><a class="nav-link"
									href="contact.html">Contact</a></li>
							</ul>
						</div>
						<a class="btn_1 d-none d-lg-block" href="#">Log in</a> <a
							class="btn_1 d-none d-lg-block" href="#">Community</a>
					</nav>
				</div>
			</div>
		</div>
	</header>


	<form class="form-signin" name="#" action="/login"
		method="post">
		<section class="cta_part section_padding">
			<div class="container">
				<div class="row justify-content-center align-items-center">
					<div class="col-lg-8 col-xl-7">
						<div class="cta_text text-center">
							<h2>로그인</h2>
						</div>
						<div class="col py-3 px-lg-5">
							<label for="userid" class="sr-only">로그인 아이디</label> <input
								type="text" id="username" name="username" class="form-control"
								placeholder="아이디를 입력해 주세요" required autofocus>
						</div>
						<div class="col py-3 px-lg-5">
							<label for="password" class="sr-only">비밀번호</label> <input
								type="password" id="password" name="password"
								class="form-control" placeholder="비밀번호를 입력해 주세요" required>
						</div>
						<div class="col py-3 px-lg-5">
							<button type="submit" class="btn btn-warning btn-lg btn-block">로그인</button>
						</div>
						<div class="col py-3 px-lg-5">
							<button type="button" class="btn btn-primary btn-lg btn-block">아이디 / 비밀번호 찾기</button>
						</div>

					</div>
				</div>
			</div>
		</section>
	</form>
</body>
</html>