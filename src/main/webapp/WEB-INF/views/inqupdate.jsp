<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
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
							<th colspan="2" style="background-color: #eeeeee; text-align: center">게시판 글 수정</th>
						</tr>
					</thead>
						<tbody>
						<tr>
							<td>
							<input type="text" class="form-control" id="title" name="title" maxlength="50" value="${vo.title}" /></td>
						</tr>
						<tr>
							<td><input type="text" class="form-control" placeholder="작성자" id="writer" name="writer" maxlength="50" readonly="readonly" value="${vo.writer}" /></td>
						</tr>
						<tr>
							<td><textarea class="form-control" id="content" name="content" maxlength="2000"  style="height: 350px;" >${vo.content}</textarea></td>
						</tr>
						<tr>
							<td>
								<div class="col-lg-12">
									<i class="fa fas fa-file"></i>첨부파일
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
 				<div style="float: right">
 				<sec:authentication property="principal" var="info"/>
                <sec:authorize access="isAuthenticated()"> <!-- 로그인 여부 확인 -->
                	<c:if test="${info.username==vo.writer }">
						<button type="submit" data-oper="update" class="btn btn-primary">수정</button>
						<button type="submit" data-oper="remove" class="btn btn-primary">삭제</button>
					</c:if>
				</sec:authorize>
					<button type="submit" data-oper="list" class="btn btn-primary">목록</button> 
				</div>
			</form>
		</div>
	</div>
<%-- remove와 list를 위한 폼--%>
<form action="" id="operForm" method="post">
	<input type="hidden" name="type" value="${cri.type }" />
	<input type="hidden" name="keyword" value="${cri.keyword }" />
	<input type="hidden" name="bno" value="${vo.bno }" />
	<input type="hidden" name="pageNum" value="${cri.pageNum }" />
	<input type="hidden" name="amount" value="${cri.amount }" />
	
	<input type="hidden" name="${_csrf.parameterName}" value=${_csrf.token} />
	<input type="hidden" name="writer" value="${vo.writer }" />
</form>

	
<!-- jquery plugins here-->
<!-- jquery 이게 오래된 버전이라서 아마 3.1 버전이 커버 될거에요-->
<!-- <script src="resources/js/waypoints.min.js"></script> 
<script src="resources/js/jquery-1.12.1.min.js"></script> -->


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
	let bno = ${vo.bno};
	var csrfHeaderName = "${_csrf.headerName}";
	var csrfTokenValue = "${_csrf.token}";
</script>
<!-- custom js -->
<script src="resources/community/js/inqmodify.js"></script>
<script src="resources/js/custom.js"></script>
</body>
</html>