<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="veiwport" content="width=device-width, initial-scale=1.0"/>
<link rel="stylesheet" href="resources/community/css/bootstrap.css" />
<link rel="stylesheet" href="resources/community/css/custom.css" />
<link rel="stylesheet" href="resources/community/css/attach.css" />
<!-- font awesome CSS -->
<link rel="stylesheet" href="resources/css/all.css">
<!-- font awesome CSS -->
<link rel="stylesheet" href="resources/css/magnific-popup.css">
<!-- style CSS -->
<!-- <link rel="stylesheet" href="resources/css/style.css"> -->
<title>EatAtLine4</title>
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
			<a class="navbar-brand" href="/community">커뮤니티</a>
		</div>
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li><a href="/freeBoard">자유 게시판</a></li>
				<li><a href="/proBoard">홍보 게시판</a></li>
				<li class="active"><a href="/InqBoard">문의 게시판</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">회원관리 <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="/">Home</a></li>
												<!-- 인증된 정보가 있으면 Logout 보여주기 -->
						<sec:authorize access="isAuthenticated()">
							<li>
								<form action="/logout" method="post" id="logoutForm">
									<input type="hidden" name="${_csrf.parameterName}"
										value="${_csrf.token}" id="token" /> <a href="#"
										id="logoutTag"><i class=""></i>로그아웃</a>
								</form>
							</li>
						</sec:authorize>
						<sec:authorize access="!isAuthenticated()">
							<li><a href="/login"><i class=""></i>로그인</a></li>
						</sec:authorize>
					</ul>
				</li>
			</ul>
		</div>
	</nav>
	
	<div class="container">
		<div class="row">
			<form action="" method="post" role="form">
				<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
					<thead>
						<tr>
							<th colspan="2" style="background-color: #eeeeee; text-align: center">게시판 글쓰기</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><input type="text" class="form-control" placeholder="글 제목" id="title" name="title" maxlength="50" /></td>
						</tr>
						<tr>
							<td><input type="text" class="form-control" id="writer" name="writer" maxlength="50" value="<sec:authentication property='principal.username'/>" readonly/></td>
						</tr>
						<tr>
							<td><textarea class="form-control" placeholder="글 내용" id="content" name="content" maxlength="2000"  style="height: 350px;"/></textarea>
						</tr>
						<tr>
							<td>
								<div class="col-lg-12">
									<div class="form-group uploadDiv">
										<input type="file" name="uploadFile" multiple class="form-control" maxlength="50" />
									</div>		
									<div class="uploadResult">
										<ul></ul>
									</div>
								</div>
							</td>
						</tr>
					</tbody>
				</table>
				<input type="hidden" name="${_csrf.parameterName}" value=${_csrf.token} />
				<div class=row style="margin-bottom: 10px">
					<select name="open" id="open" class="pull-right" style="margin-right: 13px">
						<option value="Y">공개</option>
						<option value="N">비공개</option>
					</select>
				</div>
				<div class=row>
					<button type="submit" class="btn btn-primary pull-right" style="margin-right: 13px">글쓰기</button>
				</div>
			</form>
		</div>
	</div>
	
	
<!-- <tr>
	<td>
		<input type="radio" name="open" id="open" value="Y" class="radio" />
		<span class="ml_10">공개</span>&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="radio" name="open" id="open" value="N" class="radio" />
		<span class="ml_10">비공개</span>&nbsp;
	</td>
</tr> -->

<!-- jquery plugins here-->
<!-- jquery
<script src="resources/js/jquery-1.12.1.min.js"></script>
<script src="resources/js/waypoints.min.js"></script>-->


<!-- <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="resources/community/js/bootstrap.js"></script>
popper js
<script src="resources/js/popper.min.js"></script>
bootstrap js
<script src="resources/js/bootstrap.min.js"></script>
easing js
<script src="resources/js/jquery.magnific-popup.js"></script>
particles js
<script src="resources/js/owl.carousel.min.js"></script>
<script src="resources/js/jquery.nice-select.min.js"></script>
slick js
<script src="resources/js/slick.min.js"></script>
<script src="resources/js/jquery.counterup.min.js"></script>
<script src="resources/js/contact.js"></script>
<script src="resources/js/jquery.ajaxchimp.min.js"></script>
<script src="resources/js/jquery.form.js"></script>
<script src="resources/js/jquery.validate.min.js"></script>
<script src="resources/js/mail-script.js"></script> -->

<script>
		var csrfHeaderName = "${_csrf.headerName}";
		var csrfTokenValue = "${_csrf.token}";
</script>
	
<!-- custom js -->
<script src="resources/community/js/inqregister.js"></script>
<script src="resources/js/custom.js"></script>
	<script>
		$(function() {
			var actionForm = $("#logoutForm");
			$("#logoutTag").click(function(e) {
				e.preventDefault(); // 속성 중지

				//actionForm 보내기
				actionForm.submit();
			})
		})
	</script>
</body>
</html>