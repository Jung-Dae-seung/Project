<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
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
	<style type="text/css">
    /* The main DIV for the map */
    .subway-map
    {
        margin: 0;
        width: 500px;
        height:410px;
        background-color: white;
    }
    
    #legend span
    {
        margin: 5px 5px 5px 0;
    }
    .subway-map span
    {
        margin: 5px 5px 5px 0;
    }
    </style>
</head>
<body id="subwayBody">
	<!--::header part start::-->
	<jsp:include page="include/header.jsp"></jsp:include>
	<!-- Header part end-->
	
	<!-- banner part start-->
	<section class="banner_part3"></section>
	<!-- banner part start-->
	
    <div class="subway-map" data-columns="20" data-rows="10" data-cellSize="60" 
    	data-legendId="legend" data-textClass="textSubway" 
    	data-gridNumbers="true" data-grid="false" data-lineWidth="15">
        <ul data-color="#50bcdf">          
            <li data-coords="1,1" data-marker="@station"><a href="#">당고개</a></li>
            <li data-coords="1.5,1"></li>   
            <li data-coords="2,1 " data-marker="@station"><a href="#">상계</a></li>
            <li data-coords="2.5,1"></li>
            <li data-coords="3,1 " data-marker="@station"><a href="#">노원</a></li>
            <li data-coords="3.5,1"></li> 
            <li data-coords="4,1 " data-marker="@station"><a href="#">창동</a></li>
            <li data-coords="4.5,1"></li> 
            <li data-coords="5,1 " data-marker="@station"><a href="#">쌍문</a></li>
            <li data-coords="5.5,1"></li> 
            <li data-coords="6,1 " data-marker="@station"><a href="#">수유</a></li>
            <li data-coords="6.5,1"></li> 
            <li data-coords="7,1 " data-marker="@station"><a href="#">미아</a></li>
            <li data-coords="7.5,1"></li> 
            <li data-coords="8,1 " data-marker="@station" data-labelpos="N"><a href="#">미아사거리</a></li>
            <li data-coords="8.5,1"></li>
            <li data-coords="9,1 " data-marker="@station"><a href="#">길음</a></li>
            <li data-coords="9.5,1"></li>
            <li data-coords="10,1 " data-marker="@station" data-labelpos="N"><a href="#">성신여대입구</a></li>
            <li data-coords="10.5,1"></li>
            <li data-coords="11,1 " data-marker="@station"><a href="#">한성대입구</a></li>
            <li data-coords="12,1"></li>
            <li data-coords="12,3" data-dir="E"></li>
            
            <li data-coords="12,3" ></li>
            <li data-coords="12,3" data-marker="@station"><a href="#">혜화</a></li>
            <li data-coords="11.5,3" ></li>
            <li data-coords="11.2,3" data-marker="@station" data-labelpos="N"><a href="#">동대문</a></li>
            <li data-coords="10.5,3" ></li>
            <li data-coords="10,3" data-marker="@station"><a href="#">동대문역사문화공원</a></li>
            <li data-coords="9.5,3" ></li>
            <li data-coords="8.8,3" data-marker="@station" data-labelpos="N"><a href="#">충무로</a></li>
            <li data-coords="8.5,3" ></li>
            <li data-coords="8,3" data-marker="@station"><a href="#">명동</a></li>
            <li data-coords="7.5,3" ></li>
            <li data-coords="7,3" data-marker="@station"><a href="#">회현</a></li>
            <li data-coords="6.5,3" ></li>
            <li data-coords="6,3" data-marker="@station"><a href="#">서울</a></li>
            <li data-coords="5.5,3" ></li>
            <li data-coords="5,3" data-marker="@station"><a href="#">숙대입구</a></li>
            <li data-coords="4.5,3" ></li>
            <li data-coords="4,3" data-marker="@station"><a href="#">삼각지</a></li>
            <li data-coords="3.5,3" ></li>
            <li data-coords="3,3" data-marker="@station"><a href="#">신용산</a></li>
            <li data-coords="2.5,3" ></li>
            <li data-coords="2,3" data-marker="@station"><a href="#">이촌</a></li>
            <li data-coords="1.5,3" ></li>
            <li data-coords="1,3" data-marker="@station" data-labelpos="N"><a href="#">동작</a></li>
            <li data-coords="1,3" data-dir="S"></li>
            <li data-coords="1,5"><a href="#">충신대입구</a></li>
            
            <li data-coords="1.5,5"></li>
            <li data-coords="2,5" data-labelpos="N"><a href="#">사당</a></li>
            <li data-coords="2.5,5"></li>
            <li data-coords="3,5" data-labelpos="N"><a href="#">남태령</a></li>
            <li data-coords="3.5,5"></li>
            <li data-coords="4,5" data-labelpos="N"><a href="#">선바위</a></li>
            <li data-coords="4.5,5"></li>
            <li data-coords="5,5" ><a href="#">경마공원</a></li>
            <li data-coords="5.5,5"></li>
            <li data-coords="6,5" data-labelpos="N"><a href="#">대공원</a></li>
            <li data-coords="6.5,5"></li>
            <li data-coords="7,5" data-labelpos="N"><a href="#">과천</a></li>
            <li data-coords="7.5,5"></li>
            <li data-coords="8,5" ><a href="#">정부과천청사</a></li>
            <li data-coords="8.5,5"></li>
            <li data-coords="9,5" data-labelpos="N"><a href="#">인덕원</a></li>
            <li data-coords="9.5,5"></li>
            <li data-coords="10,5" data-labelpos="N"><a href="#">평촌</a></li>
            <li data-coords="10,5,5"></li>
            <li data-coords="11,5" data-labelpos="N"><a href="#">범계</a></li>
            <li data-coords="11.5,5"></li>
            <li data-coords="12,5" data-dir="E" data-labelpos="N"><a href="#">금정</a></li>
            
            <li data-coords="12,6" data-labelpos="E"><a href="#">산본</a></li>
            
            <li data-coords="12,7" ><a href="#">수리산</a></li>
            <li data-coords="11.5,7"></li>
            <li data-coords="11,7" ><a href="#">대야미</a></li>
            <li data-coords="10.5,7"></li>
            <li data-coords="10,7" ><a href="#">반월</a></li>
            <li data-coords="9.5,7"></li>
            <li data-coords="9,7" ><a href="#">상록수</a></li>
            <li data-coords="8.5,7"></li>
            <li data-coords="8,7" ><a href="#">한대앞</a></li>
            <li data-coords="7.5,7"></li>
            <li data-coords="7,7" ><a href="#">중앙</a></li>
            <li data-coords="6.5,7"></li>
            <li data-coords="6,7" ><a href="#">고잔</a></li>
            <li data-coords="5.5,7"></li>
            <li data-coords="5,7" ><a href="#">초지</a></li>
            <li data-coords="4.5,7"></li>
            <li data-coords="4,7" ><a href="#">안산</a></li>
            <li data-coords="3.5,7"></li>
            <li data-coords="3,7" ><a href="#">신길온천</a></li>
            <li data-coords="2.5,7"></li>
            <li data-coords="2,7" ><a href="#">정왕</a></li>
            <li data-coords="1.5,7"></li>
            <li data-coords="1,7" ><a href="#">오이도</a></li>   
            
            
        </ul>
    
    
        <ul data-color="#50bcdf" data-label="jQuery Interactions" data-shiftCoords="0,-1">
	        	<li data-coords="14.7,1"></li>
	        	<li data-coords="17,1"></li>
        </ul>
        
    </div>
    
    <div id=box>
    	<div style="text-align:right;position:relative;bottom:375px;right:230px">
    		4호선(정거장 이름을 클릭하여 이동합니다)
    	</div>
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
					</ul>
				</div>
			</div>
		</div>
	</footer>
    

    <!--  jquery plugins here -->
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
	<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.0.min.js"></script>
    <script type="text/javascript" src="/resources/js/jquery.subwayMap-0.5.3.js"></script>
    <script type="text/javascript">
        $(".subway-map").subwayMap({ 
        	debug: true });
        
    	//지하철 역 이름 클릭시
		$("div.subway-map").on("click","a",function(e){
			e.preventDefault();
			console.log($(this).html());
			let subway_name = ($(this).html());
			var link = "/foodlist?subway_name=" + subway_name;
			window.location.herf = link;
			window.open(link, "_self");
		})
		
    </script>
