<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
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
<title>EatAtLine4</title>
</head>
<body>
<!--::header part start::-->
	<header class="main_menu home_menu">
		<div class="container">
			<div class="row">
				<div class="col">
					<ul>
						<li>
							<a class="navbar-brand" href="/"> <img src="resources/img/logo.png" alt="<logo></logo>"></a> 
						</li>
					</ul>
				</div>
				<div class="col">
					<ul class="nav justify-content-end">
						<li>
							<a class="btn_1 d-none d-lg-block" href="/community">Community</a>
						</li>
						<li>
							<a class="btn_1 d-none d-lg-block" href="/signup">sign up</a>
						</li>
						<li class="nav-item dropdown">
							<a class="btn_1 d-none d-lg-block" href="#">
							members
							</a>
							<ul class="dropdown-menu" style="background: none;" aria-labelledby="navbarScrollingDropdown">
					          <li>
					          	<sec:authorize access="isAnonymous()"> <!-- 비 로그인 사용자만 볼수 있음 -->
					          		<a class="btn_1 d-none d-lg-block" href="/login">log in</a>
					          	</sec:authorize>
					          </li>
					          <li>
					          	<sec:authorize access="isAuthenticated()"> <!-- 로그인 사용자만 볼수 있음 -->
					          		<a class="btn_1 d-none d-lg-block" href="/checkpsw" style="margin-bottom: 10px">profile</a>
					          	</sec:authorize>
					          </li>
					          <li>
								<sec:authentication property="principal" var="info"/>
				                <sec:authorize access="isAuthenticated()"> <!-- 로그인 사용자만 볼수 있음 -->
							          	<form action="/logout" method="post" id="logoutForm">
							          		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" id="token"/>
							          		<a class="btn_1 d-none d-lg-block" href="#" id="logoutTag">log out</a>
							          	</form>
								</sec:authorize>
					          </li>
					        </ul>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</header>
<!-- Header part end-->

<!-- jquery plugins here-->
		<!-- jquery plugins here-->
		<!-- jquery -->
		<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
		<!-- <script src="resources/js/jquery-1.12.1.min.js"></script> -->
		<!-- popper js -->
		<script src="resources/js/popper.min.js"></script>
		<!-- bootstrap js -->
		<script src="resources/js/bootstrap.min.js"></script>
		<!-- easing js -->
		<script src="resources/js/jquery.magnific-popup.js"></script>
		<!-- particles js -->
		<script src="resources/js/owl.carousel.min.js"></script>
		<script src="resources/js/jquery.nice-select.min.js"></script>
		<!-- slick js -->
		<script src="resources/js/slick.min.js"></script>
		<script src="resources/js/jquery.counterup.min.js"></script>
		<script src="resources/js/waypoints.min.js"></script>
		<!-- <script src="resources/js/contact.js"></script> -->
		<script src="resources/js/jquery.ajaxchimp.min.js"></script>
		<script src="resources/js/jquery.form.js"></script>
		<script src="resources/js/jquery.validate.min.js"></script>
		<script src="resources/js/mail-script.js"></script>
		<!-- custom js -->
		<script src="resources/js/custom.js"></script>
	<script>
		$(function(){	
			var actionForm = $("#logoutForm");		
			$("#logoutTag").click(function(e){
				e.preventDefault(); // 속성 중지
	
				//actionForm 보내기
				actionForm.submit();
			})
		})
	</script>
</body>
</html>