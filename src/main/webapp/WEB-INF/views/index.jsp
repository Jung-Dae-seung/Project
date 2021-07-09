<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>travel</title>
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

	<!-- banner part start-->
	<section class="banner_part">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-lg-7">
					<div class="banner_text">
						<div class="banner_text_iner">
							<h5>Must-go restaurants</h5>
							<h2>Find out the best-rated restaurants near subway station</h2>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- banner part start-->

	<!-- banner part start-->
	<section class="search_your_country">
		<div class="container-fluid">
			<div class="row align-items-center">
				<div class="col-lg-12">
					<div class="search_form">
						<form action="#">
							<div class="form-row">
								<div class="col-lg-9">
									<div class="search_form_iner">
										<select class="custom_select" id="inlineFormCustomSelect">
											<option selected>Choose the subway line</option>
											<option value="1">Line 1</option>
											<option value="2">Line 2</option>
											<option value="3">Line 3</option>
											<!-- 여기까지는 적용되어있음 -->
											<option value="4" selected>Line 4</option>
											<option value="5">Line 5</option>

										</select> <select class="custom_select" id="inlineFormCustomSelect1">
											<option selected>Station</option>
											<option value="1">One</option>
											<option value="2">Two</option>
											<option value="3">Three</option>
										</select>
									</div>
								</div>
								<div class="col-lg-3">
									<a href="#" class="search_btn">search</a>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
	</section>
	

	<!-- feature_part start-->
<!-- 	<section class="feature_part padding_top"> -->
	<div class="container">
		<div class="row align-items-center justify-content-between">
			<div class="col-6">
				<div class="feature_img">
					<img src="resources/img/salad.png" alt="">
				</div>
			</div>
			<div class="col-6">
				<h2>Top Restaurants to go</h2>		
				<p>
					Life is short! Don't waste your time looking for Restaurants outside. <br /> We do that job for you! Feel free to explore our website and take a look at the reviews other diners have given. You're welcome to share your dining experiences to recommend places for other food enthusiasts.  
				</p>
			</div> 
		</div>	


		<!--::footer_part start::-->
		<footer class="footer_part">
			<div class="container">
				<div class="row">
					<div class="col-md-4">
						<div class="single_footer_part">
							<h4>About us</h4>
							<p>  EatAtLine4 is a social networking site that lets users post reviews and rate restaurants near subway line 4.
							  Share your experiences with our community and receive the best recommendations for restaurants.
							</p>
						</div>
					</div>

					<div class="col-md-4">
						<div class="single_footer_part">
							<h4>Community</h4>
							<p>Are you a food lover? <br /> Our community is a place where everyone has a voice to share, create, 
							and connect with other  food lovers. It's easy to find and share what to eat and where to eat. </p>
						</div>
					</div>
					
					<div class="col-md-4 col-lg-3-2">
						<img src="resources/img/couple.png" alt="" class="" />
					</div>
					
					
					<div class="col-sm-6 col-lg-3">
						<div class="footer_img">
							<a href="#"><img src="img/footer_img/footer_1.png" alt=""></a>
							<a href="#"><img src="img/footer_img/footer_2.png" alt=""></a>
							<a href="#"><img src="img/footer_img/footer_3.png" alt=""></a>
							<a href="#"><img src="img/footer_img/footer_4.png" alt=""></a>
							<a href="#"><img src="img/footer_img/footer_5.png" alt=""></a>
							<a href="#"><img src="img/footer_img/footer_6.png" alt=""></a>
							<a href="#"><img src="img/footer_img/footer_7.png" alt=""></a>
							<a href="#"><img src="img/footer_img/footer_8.png" alt=""></a>
						</div>
					</div>
				</div>
			</div>
			<hr>
			<div class="row">
				<div class="col-lg-8">
					<div class="copyright_text">
						<P>
							<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
							Copyright &copy;
							<script>
								document.write(new Date().getFullYear());
							</script>
							All rights reserved | <a
								href="https://colorlib.com" target="_blank">EatAtLine4</a>
							<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						</P>
					</div>
				</div>
				<div class="col-lg-4">
					<div class="footer_icon social_icon">
						<ul class="list-unstyled">
							<li><a href="#" class="single_social_icon"><i
									class="fab fa-facebook-f"></i></a></li>
							<li><a href="#" class="single_social_icon"><i
									class="fab fa-twitter"></i></a></li>
							<li><a href="#" class="single_social_icon"><i
									class="fas fa-globe"></i></a></li>
							<!--                             <li><a href="#" class="single_social_icon"><i class="fab fa-behance"></i></a></li> -->
						</ul>
					</div>
				</div>
			</div>
			</div>
		</footer>
		<!--::footer_part end::-->

		<!-- jquery plugins here-->
		<!-- jquery -->
		<script src="resources/js/jquery-1.12.1.min.js"></script>
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
		<script src="resources/js/contact.js"></script>
		<script src="resources/js/jquery.ajaxchimp.min.js"></script>
		<script src="resources/js/jquery.form.js"></script>
		<script src="resources/js/jquery.validate.min.js"></script>
		<script src="resources/js/mail-script.js"></script>
		<!-- custom js -->
		<script src="resources/js/custom.js"></script>
</body>
</html>