<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>음식점 부가 페이지</title>
    <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="resources/css/foodstyles.css" rel="stylesheet" />
  </head>
  <body>
    <!-- 맨 위에 배너(나중에 있던걸로 교체하기)-->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
      <div class="container px-5">
        <a class="navbar-brand" href="#!">음식점이름(or 홈페이지 이동)</a>
        <button
          class="navbar-toggler"
          type="button"
          data-bs-toggle="collapse"
          data-bs-target="#navbarSupportedContent"
          aria-controls="navbarSupportedContent"
          aria-expanded="false"
          aria-label="Toggle navigation"
        >
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
            <!-- 각종 배너 요소 -->
            <li class="nav-item">
              <a class="nav-link active" aria-current="page" href="#!">Home</a>
            </li>
            <li class="nav-item"><a class="nav-link" href="#!">About</a></li>
            <li class="nav-item"><a class="nav-link" href="#!">Contact</a></li>
            <li class="nav-item"><a class="nav-link" href="#!">Services</a></li>
          </ul>
        </div>
      </div>
    </nav>
    <!-- Page Content-->
    <div class="container px-4 px-lg-5">
      <!-- Heading Row-->
      <div class="row gx-4 gx-lg-5 align-items-center my-5">
        <div class="col-lg-7">
          <img
            class="img-fluid rounded mb-4 mb-lg-0"
            src="https://src.hidoc.co.kr/image/lib/2020/11/9/1604911318873_0.jpg"
            alt="..."
          />
        </div>
        <div class="col-lg-5">
          <h1 class="font-weight-light">음식점 이름 넣기</h1>
          <p>해당 음식점의 설명 넣기</p>
          <p>설명 및 오는길</p>
          <a class="btn btn-primary" href="#!"
            >버튼 클릭시 지도 이동(지도 url 넣기)</a
          >
        </div>
      </div>
      <!-- 별점 및 다른것 -->
       <div class="card text-white bg-secondary my-2 py-4 text-center">
      <p>리뷰 출력</p>
        <div class="card-body">
         <!-- 해당 위치에 리뷰를 집어 넣자 -->
        </div> 
      </div>
      <!-- 만족도 및 리뷰(댓글)//로그인 구현? or not? -->
     	 <form action="practice.jsp" method="post">
      		
      <div class="card text-white bg-secondary my-5 py-4 text-center">
        <div class="bbs_view" style="margin-top:50px;margin-bottom:20px">
    <table class="view_1">
        <tr>
            <th style="width:20%">만족도</th>
            <td class="name">
                 <input type="radio" name="review_point" id="review_point" value="5" /> 매우 만족
                 <input type="radio" name="review_point" id="review_point" value="4" /> 만족
                 <input type="radio" name="review_point" id="review_point" value="3" /> 보통
                 <input type="radio" name="review_point" id="review_point" value="2" /> 불만족
                 <input type="radio" name="review_point" id="review_point" value="1" /> 매우 불만족
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type = "submit" value = "등록">
            </td>
        </tr>
        <tr>
        	<td>
        	<p>  </p>
        	</td>
        </tr>
        <tr>
            <th scope="row">만족도내용</th>
            <td class="name">
                <textarea id=review_point_content name=review_point_content rows="10" cols="120"></textarea>
            </td>
        </tr>
        <!-- 사람, 내용, 별점, 음식점이름  -->
    </table>
    </div>
      </div>
      
     	 </form>
      
      
      
      
      <!-- 다른 연관 식당 -->
      <div class="row gx-8 gx-lg-5">
      
        <div class="card" style="width: 26rem;">
  		<img src="https://src.hidoc.co.kr/image/lib/2020/11/9/1604911318873_0.jpg" class="card-img-top" alt="...">
  			<div class="card-body">
  			  <h5 class="card-title">음식점 이름</h5>
  			  <p class="card-text">음식점 부과설명</p>
  			  <a href="#" class="btn btn-primary">이동경로()</a>
  			</div>
		</div>
        <div class="card" style="width: 26rem;">
  		<img src="https://src.hidoc.co.kr/image/lib/2020/11/9/1604911318873_0.jpg" class="card-img-top" alt="...">
  			<div class="card-body">
  			  <h5 class="card-title">음식점 이름</h5>
  			  <p class="card-text">음식점 부과설명</p>
  			  <a href="#" class="btn btn-primary">이동경로()</a>
  			</div>
		</div>
        <div class="card" style="width: 26rem;">
  		<img src="https://src.hidoc.co.kr/image/lib/2020/11/9/1604911318873_0.jpg" class="card-img-top" alt="...">
  			<div class="card-body">
  			  <h5 class="card-title">음식점 이름</h5>
  			  <p class="card-text">음식점 부과설명</p>
  			  <a href="#" class="btn btn-primary">이동경로()</a>
  			</div>
		</div>
      </div>
    </div>
    <!-- Footer-->
    <footer class="py-5 bg-dark">
      <div class="container px-4 px-lg-5">
        <p class="m-0 text-center text-white">
          Copyright &copy; Your Website 2021
        </p>
      </div>
    </footer>
    
    <!-- Bootstrap core JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Core theme JS-->
    <script src="resources/js/foodscripts.js"></script>
  </body>
</html>
