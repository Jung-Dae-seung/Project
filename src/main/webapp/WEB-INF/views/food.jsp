<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<link rel="icon" href="resources/img/favicon.png">
<!-- 별점 추가한 부분 -->
<link rel="stylesheet" href="resources/css/star.css" />
<!-- food CSS -->
<link rel="stylesheet" href="resources/css/food.css">
<title>EatAtLine4</title>
</head>
<%
String store_name = request.getParameter("storeName");
String address = request.getParameter("address");
String phone = request.getParameter("phone");
String category = request.getParameter("category");
String storeid = request.getParameter("store_id");
String station = request.getParameter("station");
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
		
		<div class="col-3" style="margin-left: -15px; margin-bottom: -35px">
			<a href="#" id ="subway-map" class="btn btn-block btn-info"><%=station%>역 다른 음식점 보기</a>
		</div>
		<div class="row gx-4 gx-lg-5 align-items-center my-5">
			<div class="col-lg-7">
				<div id="map" style="width: 90%; height: 350px;"></div>
			</div>
			<div class="col-lg-5">
				<h1 class="font-weight-light" id="store_name"><%=store_name%></h1>
				<h3 class="font-weight-light"><%=category%></h3>
				<p id="store_address"><%=address%></p>
				<p><%=phone%></p>
				<p id="storeId" style="display: none;"><%=storeid%></p>
				<p id="station" style="display: none;"><%=station%></p>
				 <br />
				<div id="staraverage">
				<!-- 평균 리뷰 별점 -->
				</div>	
				<br /> <br />
			</div>
		</div>

		<!-- 입력 -->
		<form action="" method="post">
			<!-- 리뷰메세지 -->
			<textarea class="form-control" name="review" rows="5" cols=""></textarea>
			<div class="row gx-4 gx-lg-5 align-items-center my-2">
				<div class="col-1">
					<h3 style="height: 20px">평점:</h3>
				</div>
				<div class="col-3">
				<div class="startRadio" style="margin-left:10px">
				  <label class="startRadio__box">
				    <input type="radio" name="star" id="" value="1">
				    <span class="startRadio__img"><span class="blind">별 1개</span></span>
				  </label>
				  <label class="startRadio__box">
				    <input type="radio" name="star" id="" value="2">
				    <span class="startRadio__img"><span class="blind">별 2개</span></span>
				  </label>
				  <label class="startRadio__box">
				    <input type="radio" name="star" id="" value="3">
				    <span class="startRadio__img"><span class="blind">별 3개</span></span>
				  </label>
				  <label class="startRadio__box">
				    <input type="radio" name="star" id="" value="4">
				    <span class="startRadio__img"><span class="blind">별 4개</span></span>
				  </label>
				  <label class="startRadio__box">
				    <input type="radio" name="star" id="" value="5">
				    <span class="startRadio__img"><span class="blind">별 5개</span></span>
				  </label>
				</div>	
			</div>

				
				
				<sec:authorize access="!isAuthenticated()">
				<div class="ml-auto" style="margin-right: 15px;">
					<a href="login" class="btn btn-block btn-info">리뷰 등록</a>
				</div>
				</sec:authorize>

				<!-- 이 부분은 맞게 고쳐야 하고요!!-->
				<sec:authorize access="isAuthenticated()">
				<input type="hidden" name="reviewer" id="reviewer" value="<sec:authentication property='principal.username'/>" />
				<div class="ml-auto" style="margin-right: 15px;">
					<button class="btn btn-block btn-info" id="RegisterBtn" type="button">리뷰 등록</button>
				</div>
				</sec:authorize>
			</div>
		</form>

		<!-- 리뷰 출력 -->
		<div class="row d-flex my-4">
			<div class="col-4" id="reviewarray">
				<a href="#" id="newarray" style="font-size: 18px">최신순</a>
				&emsp;
				<a href="#" id="highstararray" style="font-size: 18px">평점 높은순</a>
				&emsp;
				<a href="#" id="lowstararray" style="font-size: 18px">평점 낮은순</a>
			</div>
		</div>
			<ul class="reviews">
			<!-- 리뷰 출력 부분 -->
			</ul>

		<!-- 페이지 나누기 부분 -->
		<div class="row d-flex my-2">
			<div class="ml-auto" style="margin-right:15px" id="panel-footer">
				<!-- 페이지 나누기 출력 부분 -->

			</div>
		</div>
	</div>
	
	<!-- 모달창 -->
	<div class="modal" tabindex="-1" id="reviewModal">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h5 class="modal-title">review</h5>
				</div>
				<div class="modal-body">
					<div class="row gx-4 gx-lg-5 align-items-center my-2">
						<div style="margin-left:10px">
							<h3>평점:</h3>
						</div>
						<div class="startRadio" style="margin-left:10px">
						  <label class="startRadio__box">
						    <input type="radio" name="star" id="" value="1">
						    <span class="startRadio__img"><span class="blind">별 1개</span></span>
						  </label>
						  <label class="startRadio__box">
						    <input type="radio" name="star" id="" value="2">
						    <span class="startRadio__img"><span class="blind">별 2개</span></span>
						  </label>
						  <label class="startRadio__box">
						    <input type="radio" name="star" id="" value="3">
						    <span class="startRadio__img"><span class="blind">별 3개</span></span>
						  </label>
						  <label class="startRadio__box">
						    <input type="radio" name="star" id="" value="4">
						    <span class="startRadio__img"><span class="blind">별 4개</span></span>
						  </label>
						  <label class="startRadio__box">
						    <input type="radio" name="star" id="" value="5">
						    <span class="startRadio__img"><span class="blind">별 5개</span></span>
						  </label>
						</div>	
					</div>
					<textarea class="form-control" name="review" rows="5" cols=""></textarea>
					<input type="hidden" name="reviewer" id="reviewer" value="user00" />
					<input type="hidden" name="storeid" id="storeid" value="000000" />
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary" id="ModifyBtn">수정</button>
					<button type="button" class="btn btn-primary" id="RemoveBtn">삭제</button>
					<button type="button" class="btn btn-primary" data-dismiss="modal" id="modalCloseBtn">종료</button>
				</div>
			</div>
		</div>
	</div>
	
	<!--::footer part start::-->
	<jsp:include page="include/footer.jsp"></jsp:include>
	<!-- footer part end-->
	
	<!-- 추가한 부분 -->
	<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=b35c281dbc3e2a74b144079a4af860e3&libraries=LIBRARY,services,clusterer,drawing"></script>
	<script>
		//클릭시 지도페이지 돌아가기
		$("#subway-map").click(function(e){ 
			e.preventDefault();
			var subway_name = $("#station").html();
			console.log(subway_name);
			var link = "/foodlist?subway_name=" + subway_name;
			window.location.herf = link;
			window.open(link, "_self");
		})
	
		let result = '${result}';
		
		$('#modalRemoveBtn').click(function(e){
			$('#reviewModal').modal('hide');
			location.reload();
		});
		
		var reviewer = null;
		<sec:authorize access="isAuthenticated()">
		reviewer = '<sec:authentication property="principal.username"/>';
		</sec:authorize> 
		
		var csrfHeaderName = "${_csrf.headerName}";
		var csrfTokenValue = "${_csrf.token}";
		
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
			center : new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
			level : 3
		// 지도의 확대 레벨
		};
		// 지도를 생성합니다    
		var map = new kakao.maps.Map(mapContainer, mapOption);
		// 주소-좌표 변환 객체를 생성합니다
		var geocoder = new kakao.maps.services.Geocoder();
		// 주소로 좌표를 검색합니다
		geocoder
				.addressSearch(
						storeAddress,
						function(result, status) {
							// 정상적으로 검색이 완료됐으면 
							if (status === kakao.maps.services.Status.OK) {
								var coords = new kakao.maps.LatLng(result[0].y,
										result[0].x);
								// 결과값으로 받은 위치를 마커로 표시합니다
								var marker = new kakao.maps.Marker({
									map : map,
									position : coords
								});
								// 인포윈도우로 장소에 대한 설명을 표시합니다
								var infowindow = new kakao.maps.InfoWindow(
										{
											content : '<div style="width:150px;text-align:center;padding:6px 0;">'
													+ storeName + '</div>'
										});
								infowindow.open(map, marker);
								// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
								map.setCenter(coords);
							}
						});
	</script>
	<script src="/resources/js/showreview.js"></script>
	<script src="/resources/js/review.js"></script>
</body>
</html>