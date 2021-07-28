<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- 추가한 부분 -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">


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
	String storeid = request.getParameter("store_id");
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
     <p id="storeId"><%=storeid %></p>
     <br/>
     <br/>
     <!-- <a class="btn btn-primary" href="#!">리뷰 작성</a > - -->
   </div>
 </div>
</div>	
		
      
<!-- 입력 -->
<form action=""  method="post">
    <c:forEach var="error" items="${ fieldErrors }">
        <div class="alert alert-warning">
            <strong>${ error.getField() }</strong>: ${ error.getDefaultMessage() }
        </div>
    </c:forEach>
    
    <!-- 리뷰메세지 -->
    <textarea  class="form-control" rows="5" cols=""></textarea>
    
    <!-- 평점 선택창 -->
  	<label class="rating">평점: ${rating}</label>
    <br/>
    
    <select  id="">
	  	 <c:forEach var="rating" items="${ratingOptions}" >
	  		<option value="rating">${rating}</option>
	  	</c:forEach>
  	</select>

	<button class="btn btn-block btn-primary" onclick="location.href='food'" type="submit">리뷰 등록</button>

    <!-- 이 부분은 맞게 고쳐야 하고요!-->
   	<input type="hidden" name="id" value="" />
   	<input type="hidden" name="userid" value="" />
</form>

<br/>

<jsp:include page="foodReview.jsp"></jsp:include>


<!-- 추가한 부분 -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>     
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=b35c281dbc3e2a74b144079a4af860e3&libraries=LIBRARY,services,clusterer,drawing"></script>
<script>


var store_Address = document.getElementById('store_address');
var storeAddress = String(store_Address.innerHTML);
var store_name = document.getElementById('store_name');
var storeName = String(store_name.innerHTML);
var store_Id = document.getElementById('storeId');
var storeID = String(store_Id.innerHTML);

console.log(storeID);
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