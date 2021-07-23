<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
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
	<jsp:include page="include/header.jsp"></jsp:include>
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
	<section class="search_your_country" style="padding:0px">
		<div class="container-fluid">
			<div class="row justify-content-md-center" style="top:0">
				<form action="#">
					<div class="form-row align-items-center">
							<div class="subway_select" style="width:500px;height:300px">
								<select class="form-select bg-light text-dark" id="inlineFormCustomSelect" onchange="subwayStation(this)" aria-label=".form-select-lg example" style="height:50px">
									<option selected>Choose the subway line</option>
									<option value="1">1호선</option>
									<option value="2">2호선</option>
									<option value="3">3호선</option>
									<option value="4">4호선</option>
									<option value="5">5호선</option>
							</select>
						</div>
					</div>
				</form>
			</div>
		</div>
	</section>
	
	<div class="container">
		<div class="row align-items-center justify-content-between" id="subway" style="display:none">
			<%-- <%@ include file="subway/subway.jsp" %> --%>
			<jsp:include page="/WEB-INF/views/subway.jsp"></jsp:include>
		</div>
	</div>

		<!--::footer_part start::-->
		<footer class="footer_part" id="footerPart">
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
					
					<div class="col-md-4 col-lg-3-4">
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
		</footer>
		<!--::footer_part end::-->

		<!-- jquery plugins here-->
		<!-- jquery 
		<script src="resources/js/waypoints.min.js"></script>
		<script src="resources/js/jquery-1.12.1.min.js"></script>		
		-->
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
		<script src="resources/js/contact.js"></script>
		<script src="resources/js/jquery.ajaxchimp.min.js"></script>
		<script src="resources/js/jquery.form.js"></script>
		<script src="resources/js/jquery.validate.min.js"></script>
		<script src="resources/js/mail-script.js"></script>
		<!-- custom js -->
		<script src="resources/js/custom.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script>
	function subwayStation(e){
		console.log(e.options);
		for(let i = 0; i < e.options.length; i++){
			const option = e.options[i];
			if(option.selected){
				if(option.value == 4){
					location.href = "subway";
				}
				else{
					$("#subway").hide();
				}
			}
		}
	}
</script>
</body>
</html>