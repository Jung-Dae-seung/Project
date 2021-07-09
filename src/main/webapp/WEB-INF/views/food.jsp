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
            src="https://dummyimage.com/900x400/dee2e6/6c757d.jpg"
            alt="..."
          />
        </div>
        <div class="col-lg-5">
          <h1 class="font-weight-light">해당 음식점 이름 넣기</h1>
          <p>해당 음식점의 설명 넣기</p>
          <a class="btn btn-primary" href="#!"
            >버튼 클릭시 지도 이동(지도 url 넣기)</a
          >
        </div>
      </div>
      <!-- 별점 및 다른것 -->
      <div class="card text-white bg-secondary my-5 py-4 text-center">
        <div class="card-body">
          <p class="text-white m-0">해당 위치에 별점 및 평가 집어넣기</p>
        </div>
      </div>
      <!-- 다른 연관 식당 -->
      <div class="row gx-4 gx-lg-5">
        <div class="col-md-4 mb-5">
          <div class="card h-100">
            <div class="card-body">
              <h2 class="card-title">1번 식당</h2>
              <p class="card-text">다른 식당 페이지 이동 1번</p>
            </div>
            <div class="card-footer">
              <a class="btn btn-primary btn-sm" href="#!">이동하기</a>
            </div>
          </div>
        </div>
        <div class="col-md-4 mb-5">
          <div class="card h-100">
            <div class="card-body">
              <h2 class="card-title">2번 식당</h2>
              <p class="card-text">다른 식당 페이지 이동 2번</p>
            </div>
            <div class="card-footer">
              <a class="btn btn-primary btn-sm" href="#!">이동하기</a>
            </div>
          </div>
        </div>
        <div class="col-md-4 mb-5">
          <div class="card h-100">
            <div class="card-body">
              <h2 class="card-title">3번 식당</h2>
              <p class="card-text">다른 식당 페이지 이동 3번</p>
            </div>
            <div class="card-footer">
              <a class="btn btn-primary btn-sm" href="#!">이동하기</a>
            </div>
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
