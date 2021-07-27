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
<!-- 추가한 부분 -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<!-- <link rel="stylesheet" href="resources/css/bootstrap.min.css"> -->

<!-- 별점 추가한 부분 -->
<script src="resources/rating/js/star-rating.js" type="text/javascript"></script>
<link href="resources/rating/css/star-rating.css" media="all" rel="stylesheet" type="text/css" />

<title>EatAtLine4</title>
</head>
<%
	String store_name = request.getParameter("storeName");
	String address = request.getParameter("address");
	String phone = request.getParameter("phone");
	String category = request.getParameter("category");
%>
<body>
	<!--::header part start::-->
	<jsp:include page="include/header.jsp"></jsp:include>
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
		
		
      

<form action=""  method="post">
    <c:forEach var="error" items="${ fieldErrors }">
        <div class="alert alert-warning">
            <strong>${ error.getField() }</strong>: ${ error.getDefaultMessage() }
        </div>
    </c:forEach>
    
    <!-- 리뷰메세지 -->
    <textarea  class="form-control" rows="5" cols=""></textarea>
    
    <!-- 평점 선택창 -->
    <label class="rating">평점: </label>
    <select  id="">
	  	 <c:forEach var="rating" items="${ratingOptions}" >
	  		<option value="rating">${rating}</option>
	  	</c:forEach>
  	</select>
  	
  	<button class="btn btn-block btn-primary" type="submit">리뷰 등록</button>
  	
  	
    <!-- <label>평점: </label>     input에 적용된 클래스명 으로 태그가 자동 생성되고 있거든요
    근데..지금 별이 안 보여서
    -->
    
     <!-- 평점 보여주기 -->
   <!--  <input name="rating" id="rating-system" type="text" class="rating rating-loading" data-size="xs">   -->
   
   
   
  
  	
  
    <!-- 이 부분은 맞게 고쳐야 하고요!-->
   	<input type="hidden" name="id" value="" />
   	<input type="hidden" name="userid" value="" />
    
</form>





	
	<!--::footer_part start::-->
<!-- <footer class="footer_top footer_part">
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
					Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0.
		Copyright &copy;
		<script>
			document.write(new Date().getFullYear());
		</script>
		All rights reserved | <a
			href="https://colorlib.com" target="_blank">EatAtLine4</a>
		Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0.
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
			                            <li><a href="#" class="single_social_icon"><i class="fab fa-behance"></i></a></li>
				</ul>
			</div>
		</div>
	</div>
</div>
</footer> -->

<!--::footer_part end::-->

<!-- jquery plugins here-->
<!-- jquery 
<script src="resources/js/jquery-1.12.1.min.js"></script>
-->

<!-- popper js -->
<!-- 추가한 부분 -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js">
<script src="resources/js/popper.min.js"></script>
<!-- bootstrap js -->
<!-- 추가한 부분 -->
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<script src="resources/js/bootstrap.min.js"></script>

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