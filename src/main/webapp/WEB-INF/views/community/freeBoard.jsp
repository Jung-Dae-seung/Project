<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="veiwport" content="width=device-width", initial-scale="1"/>
<link rel="stylesheet" href="resources/community/css/bootstrap.css" />
<link rel="stylesheet" href="resources/community/css/custom.css" />
<title>Community</title>

<!-- font awesome CSS -->
<link rel="stylesheet" href="resources/css/all.css">
<!-- font awesome CSS -->
<link rel="stylesheet" href="resources/css/magnific-popup.css">
<!-- style CSS -->
<link rel="stylesheet" href="resources/css/style.css">
</head>

<body>

	<nav class="navbar navbar-default">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
			aria-expanded="false">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="main.jsp">커뮤니티</a>
		</div>
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li class="active"><a href="main.jsp">자유 게시판</a></li>
				<li><a href="bbs.jsp">홍보 게시판</a></li>
				<li><a href="bbs.jsp">문의 게시판</a></li>
			</ul>
			
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">회원관리 <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li class="active"><a href="logoutAction.jsp">로그아웃</a></li>
					</ul>
				</li>
			</ul>
		</div>
	</nav>
	
	<div class="container">
		<div class="row">
			<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
				<thead>
					<tr>
						<th style="background-color: #eeeeee; text-align: center">번호</th>
						<th style="background-color: #eeeeee; text-align: center">제목</th>
						<th style="background-color: #eeeeee; text-align: center">작성자</th>
						<th style="background-color: #eeeeee; text-align: center">작성일</th>
						<th style="background-color: #eeeeee; text-align: center">수정일</th>
					</tr>
				</thead>
				<tbody>
				<!-- 게시판 리스트 반복문 -->
					<c:forEach var="vo" items="${list }">
						<tr>
							<td>${vo.bno }</td>
							<td><a href="${vo.bno }" class="move">${vo.title }</a> <strong>[${vo.replycnt }]</strong></td>
							<td>${vo.writer }</td>
							<td><fmt:formatDate pattern="yyy-MM-dd HH:mm" value="${vo.regdate }" /></td>
							<td><fmt:formatDate pattern="yyy-MM-dd HH:mm" value="${vo.updatedate }" /></td>
							</tr>
					</c:forEach>
				</tbody>
			</table>
				<a href="" class="btn btn-success btn-arrow-left">이전</a>
				<a href="" class="btn btn-success btn-arrow-left">다음</a>


		<!--  지금 스타일이 display:none 으로 되어 있어서 안보였던건데...디자인이 코드랑 다른거 같은데요? 알겠습니다 -->
				
			<div  style="padding-left:70%; margin-right: 15px">
				<form action="freeBoard.do" method="get">
					<select name = "condition">
	                  <option value="title" <c:if test="${condition eq 'title' }">selected</c:if>>제목</option>
	                  <option value="writer" <c:if test="${condition eq 'writer' }">selected</c:if>>작성자</option>
	                  </select>          
                        <input type = "text" name = "keyword" placeholder="검색어" value = "${keyword }"/>
                        <button type="submit">검색</button>
				</form>	
			</div>	

			<a href="write.jsp" class="btn btn-primary pull-right">글쓰기</a>
		</div>
	</div>
	

<script>
	let result = '${result}';
</script>	
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="resources/community/js/bootstrap.js"></script>
	

<!-- footer부분	 -->
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
<%--
<script src="resources/js/jquery.validate.min.js"></script>
		--%>
<script src="resources/js/mail-script.js"></script>
<!-- custom js -->
		<script src="resources/js/custom.js"></script>
	
</body>
</html>