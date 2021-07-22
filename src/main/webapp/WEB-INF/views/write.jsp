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
<link rel="stylesheet" href="resources/css/style.css">
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
				<li class="active"><a href="/freeBoard">자유 게시판</a></li>
				<li><a href="#">홍보 게시판</a></li>
				<li><a href="#">문의 게시판</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">회원관리 <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li class="active"><a href="/login">로그인</a></li>
						<li><a href="/logout">로그아웃</a></li>
						<li><a href="/">Home</a></li>
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
				<button type="submit" class="btn btn-primary pull-right">글쓰기</button>
			</form>
		</div>
	</div>
	

<!-- jquery plugins here-->
<!-- jquery
<script src="resources/js/jquery-1.12.1.min.js"></script>
<script src="resources/js/waypoints.min.js"></script>-->


<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="resources/community/js/bootstrap.js"></script>
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
<script src="resources/js/contact.js"></script>
<script src="resources/js/jquery.ajaxchimp.min.js"></script>
<script src="resources/js/jquery.form.js"></script>
<script src="resources/js/jquery.validate.min.js"></script>
<script src="resources/js/mail-script.js"></script>

<script>
		var csrfHeaderName = "${_csrf.headerName}";
		var csrfTokenValue = "${_csrf.token}";
</script>
	
<!-- custom js -->
<script src="resources/community/js/register.js"></script>
<script src="resources/js/custom.js"></script>
</body>
</html>