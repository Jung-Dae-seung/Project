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
	<jsp:include page="include/header.jsp"></jsp:include>

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
										<select class="custom_select" id="inlineFormCustomSelect" onchange="subwayStation(this)">
											<option selected>Choose the subway line</option>
											<option value="1">Line 1</option>
											<option value="2">Line 2</option>
											<option value="3">Line 3</option>
											<!-- 여기까지는 적용되어있음 -->
											<option value="4">
												Line 4
											</option>
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
		</div>
	</section>
	
	<div class="container">
		<div class="row align-items-center justify-content-between" id="subway" style="display:none">
			<%-- <%@ include file="subway/subway.jsp" %> --%>
			<jsp:include page="/WEB-INF/views/subway/subway.jsp"></jsp:include>
		</div>
	</div>

		<!--::footer_part start::-->
		
		<jsp:include page="include/footer.jsp"></jsp:include>
		
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