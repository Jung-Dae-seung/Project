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
<%
	String store_name = request.getParameter("storeName");
	String address = request.getParameter("address");
	String phone = request.getParameter("phone");
	String category = request.getParameter("category");
%>
<body>
	<!--::header part start::-->
	<header class="main_menu home_menu">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-lg-12">

					<a class="navbar-brand" href="index.jsp"> <img
						src="resources/img/logo.png" alt="<logo></logo>">
					</a> 
					<a class="btn_1 d-none d-lg-block" href="community">Community</a>
					<a class="btn_1 d-none d-lg-block" href="login">Log in</a>

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
     <div id="map" style="width:90%;height:350px;">
     </div>
   </div>
   <div class="col-lg-5">
     <h1 class="font-weight-light" id="store_name"><%=store_name%></h1>
     <h3 class="font-weight-light"><%=category%></h3>
     <p id="store_address"><%=address%></p>
     <p><%=phone%></p>
     <br/>
     <br/>
     <!-- <a class="btn btn-primary" href="#!">리뷰 작성</a > - -->
   </div>
 </div>


<!-- 식당 및 음식 사진들 -->
<div class="container">
	<div class= row>
		<div class="col-sm-3">
			<img src="resources/img/salad2.jpg" alt="" />
		</div>
		<div class="col-sm-3">
			<img src="resources/img/naan.jpg" alt="" />
		</div>
		<div class="col-sm-3">
			<img src="resources/img/beef.jpg" alt="" />
		</div>
		<div class="col-sm-3">
			<img src="resources/img/cake.jpg" alt="" />
		</div>
	</div>
</div>
		

<!-- 리뷰 바 -->
<div class="container-fluid px-1 py-5 mx-auto">
    <div class="row justify-content-center">
        <div class="col-xl-7 col-lg-8 col-md-10 col-12 text-center mb-5">
            <div class="card">
                <div class="row justify-content-left d-flex">
                    <div class="col-md-4 d-flex flex-column">
                        <div class="rating-box">
                            <h1 class="pt-4">4.0</h1>
                            <p class="">out of 5</p>
                        </div>
                        <div> <span class="fa fa-star star-active mx-1"></span> <span class="fa fa-star star-active mx-1"></span> <span class="fa fa-star star-active mx-1"></span> <span class="fa fa-star star-active mx-1"></span> <span class="fa fa-star star-inactive mx-1"></span> </div>
                    </div>
                    <div class="col-md-8">
                        <div class="rating-bar0 justify-content-center">
                            <table class="text-left mx-auto">
                                <tr>
                                    <td class="rating-label">Excellent</td>
                                    <td class="rating-bar">
                                        <div class="bar-container">
                                            <div class="bar-5"></div>
                                        </div>
                                    </td>
                                    <td class="text-right">123</td>
                                </tr>
                                <tr>
                                    <td class="rating-label">Good</td>
                                    <td class="rating-bar">
                                        <div class="bar-container">
                                            <div class="bar-4"></div>
                                        </div>
                                    </td>
                                    <td class="text-right">23</td>
                                </tr>
                                <tr>
                                    <td class="rating-label">Average</td>
                                    <td class="rating-bar">
                                        <div class="bar-container">
                                            <div class="bar-3"></div>
                                        </div>
                                    </td>
                                    <td class="text-right">10</td>
                                </tr>
                                <tr>
                                    <td class="rating-label">Poor</td>
                                    <td class="rating-bar">
                                        <div class="bar-container">
                                            <div class="bar-2"></div>
                                        </div>
                                    </td>
                                    <td class="text-right">3</td>
                                </tr>
                                <tr>
                                    <td class="rating-label">Terrible</td>
                                    <td class="rating-bar">
                                        <div class="bar-container">
                                            <div class="bar-1"></div>
                                        </div>
                                    </td>
                                    <td class="text-right">0</td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            
<!--            리뷰 작성페이지 -->
<div class="card bg-secondary2 text-center align-items-center">
		<div class="bbs_view" style="margin-bottom:-5px">
		    <table class="view_1">
		        <tr>
		            <th scope="row">Rating &emsp; &emsp; </th>
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
		            <th scope="row" >Comments &emsp; </th>
		            <td class="name">
		                <textarea placeholder="Did you enjoy your meal? &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp;&emsp; &emsp; &emsp; &emsp; &emsp;  (Any comments or suggestions are welcomed)" rows="6" cols="58"></textarea>
		            </td>
		        </tr>
		    </table>
		    	<br/>
				<input type = "submit" value = "submit">
			</div>
</div>

            

            
<!--             한줄평1 -->
            <div class="card">
                <div class="row d-flex">
                    <div class=""> <img class="profile-pic" src="resources/img/GongYoo.jpg"> </div>
                    <div class="d-flex flex-column">
                        <h3 class="mt-2 mb-0">Gong Yoo</h3>
                        <div>
                            <p class="text-left"><span class="text-muted">4.0</span> <span class="fa fa-star star-active ml-3"></span> <span class="fa fa-star star-active"></span> <span class="fa fa-star star-active"></span> <span class="fa fa-star star-active"></span> <span class="fa fa-star star-inactive"></span></p>
                        </div>
                    </div>
                    <div class="ml-auto">
                        <p class="text-muted pt-5 pt-sm-3">10 Sept</p>
                    </div>
                </div>
                <div class="row text-left">
                    <h4 class="blue-text mt-3">"An awesome activity to experience"</h4>
                    <p class="content">If you really enjoy spending your vacation 'on water' or would like to try something new and exciting for the first time.</p>
                </div>
                <div class="row text-left mt-4">
                    <div class="like mr-3 vote"> <img src="https://i.imgur.com/mHSQOaX.png"><span class="blue-text pl-2">20</span> </div>
                    <div class="unlike vote"> <img src="https://i.imgur.com/bFBO3J7.png"><span class="text-muted pl-2">4</span> </div>
                </div>
            </div>
            
<!--             한줄평2 -->
            <div class="card">
                <div class="row d-flex">
                    <div class=""> <img class="profile-pic" src="resources/img/IU.jpg"> </div>
                    <div class="d-flex flex-column">
                        <h3 class="mt-2 mb-0">JiEun Lee</h3>
                        <div>
                            <p class="text-left"><span class="text-muted">4.0</span> <span class="fa fa-star star-active ml-3"></span> <span class="fa fa-star star-active"></span> <span class="fa fa-star star-active"></span> <span class="fa fa-star star-active"></span> <span class="fa fa-star star-inactive"></span></p>
                        </div>
                    </div>
                    <div class="ml-auto">
                        <p class="text-muted pt-5 pt-sm-3">10 Sept</p>
                    </div>
                </div>
                <div class="row text-left">
                    <h4 class="blue-text mt-3">"An awesome activity to experience"</h4>
                    <p class="content">If you really enjoy spending your vacation 'on water' or would like to try something new and exciting for the first time.</p>
                </div>
                <div class="row text-left mt-4">
                    <div class="like mr-3 vote"> <img src="https://i.imgur.com/mHSQOaX.png"><span class="blue-text pl-2">20</span> </div>
                    <div class="unlike vote"> <img src="https://i.imgur.com/bFBO3J7.png"><span class="text-muted pl-2">4</span> </div>
                </div>
            </div>
			<br/>

			<!-- 하단 페이지 번호 -->
			<nav aria-label="Page navigation example">
			  <ul class="pagination justify-content-center">
			    <li class="page-item">
			      <a class="page-link" href="#" aria-label="Previous">
			        <span aria-hidden="true">&laquo;</span>
			      </a>
			    </li>
			    <li class="page-item"><a class="page-link" href="#">1</a></li>
			    <li class="page-item"><a class="page-link" href="#">2</a></li>
			    <li class="page-item"><a class="page-link" href="#">3</a></li>
			    <li class="page-item">
			      <a class="page-link" href="#" aria-label="Next">
			        <span aria-hidden="true">&raquo;</span>
			      </a>
			    </li>
			  </ul>
			</nav>

        </div>
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

<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=b35c281dbc3e2a74b144079a4af860e3&libraries=LIBRARY,services,clusterer,drawing"></script>
<script>

var store_Address = document.getElementById('store_address');
var storeAddress = String(store_Address.innerHTML);
var store_name = document.getElementById('store_name');
var storeName = String(store_name.innerHTML);

console.log(storeName);
console.log(storeAddress);

var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = {
		center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };  

// 지도를 생성합니다    
var map = new kakao.maps.Map(mapContainer, mapOption); 

// 주소-좌표 변환 객체를 생성합니다
var geocoder = new kakao.maps.services.Geocoder();


// 주소로 좌표를 검색합니다
geocoder.addressSearch(storeAddress, function(result, status) {

    // 정상적으로 검색이 완료됐으면 
     if (status === kakao.maps.services.Status.OK) {

        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

        // 결과값으로 받은 위치를 마커로 표시합니다
        var marker = new kakao.maps.Marker({
            map: map,
            position: coords
        });

     	// 인포윈도우로 장소에 대한 설명을 표시합니다
        var infowindow = new kakao.maps.InfoWindow({
            content: '<div style="width:150px;text-align:center;padding:6px 0;">'+storeName+'</div>'
        });
        infowindow.open(map, marker);


        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
        map.setCenter(coords);
    } 
});    
</script>
</body>
</html>