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
<!-- food CSS -->
<link rel="stylesheet" href="resources/css/food.css">
</head>

<body>
	<!--::header part start::-->
	<header class="main_menu home_menu">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-lg-12">

					<a class="navbar-brand" href="index.jsp"> <img
						src="resources/img/logo.png" alt="<logo></logo>">
					</a> 
					<a class="btn_1 d-none d-lg-block" href="community.jsp">Community</a>
					<a class="btn_1 d-none d-lg-block" href="login.jsp">Log in</a>

				</div>
			</div>
		</div>
	</header>
	<!-- Header part end-->
	
<!-- banner part start -->
<section class="banner_part4"></section>
<!-- banner part start -->



<!-- Page Content-->
<div class="container px-4 px-lg-5">
  <!-- Heading Row-->
 <div class="row gx-4 gx-lg-5 align-items-center my-5">
   <div class="col-lg-7">
     <img
       class="img-fluid rounded mb-4 mb-lg-0"
       src="resources/img/restaurant2.jpg"
       alt="..."  width="500" height="250"/>
   </div>
   <div class="col-lg-5">
     <h1 class="font-weight-light">음식점 이름</h1>
     <p>주소</p>
     <p>오픈시간</p>
     <a class="btn btn-primary" href="#!">지도 보기</a >
   </div>
 </div>
      

      		
<div class="card text-white bg-secondary2 my-5 py-4 text-center align-items-center">
  <div class="bbs_view" style="margin-top:40px;margin-bottom:30px">
    <table class="view_1">
        <tr>
            <th scope="row">Restaurant Rating</th>
            <td class="name">
                 <input type="radio" name="review_point" id="review_point" value="5" /> Excellent &ensp; &ensp;  
                 <input type="radio" name="review_point" id="review_point" value="4" /> Good &ensp; &ensp; 
                 <input type="radio" name="review_point" id="review_point" value="3" /> Average &ensp; &ensp; 
                 <input type="radio" name="review_point" id="review_point" value="2" /> Poor &ensp; &ensp; 
                 <input type="radio" name="review_point" id="review_point" value="1" /> Terrible &ensp; &ensp; 
            </td>
        </tr>
        
      	 <tr>
        	<td><p><br/></p>
        	</td>
        </tr>
        
        <tr>
            <th scope="row" >Comments</th>
            <td class="name">
                <textarea placeholder="Did you enjoy your meal? (Any comments or suggestions are welcomed)" rows="9" cols="80"></textarea>
            </td>
        </tr>
    </table>
    	<br/>
		<input type = "submit" value = "submit">
	</div>
</div>
  




<!-- 	<section class="feature_part padding_top"> -->
	<div class="container">
		<div class="row align-items-center justify-content-between">
		</div>	
	
	
	<!--::footer_part start::-->
<footer class="footer_top footer_part">
	<div class="container">
		<div class="row">
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