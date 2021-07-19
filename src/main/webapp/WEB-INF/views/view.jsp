<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="veiwport" content="width=device-width" , initial-scale="1" />
<link rel="stylesheet" href="resources/community/css/bootstrap.css" />
<link rel="stylesheet" href="resources/community/css/custom.css" />
<link rel="stylesheet" href="resources/community/css/attach.css" />
<title>Community</title>

<!-- font awesome CSS -->
<link rel="stylesheet" href="resources/css/all.css">
<!-- font awesome CSS -->
<link rel="stylesheet" href="resources/css/magnific-popup.css">
<!-- style CSS -->
<link rel="stylesheet" href="resources/css/style.css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"
	integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
	crossorigin="anonymous"></script>
<script>
	let bno = ${vo.bno};
</script>
<script src="resources/js/view.js"></script>
<script src="resources/js/reply.js"></script>
<script src="resources/community/js/read.js"></script>
</head>

<body>
	<nav class="navbar navbar-default">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="main.jsp">커뮤니티</a>
		</div>
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li class="active"><a href="main.jsp">자유 게시판</a></li>
				<li><a href="bbs.jsp">홍보 게시판</a></li>
				<li><a href="bbs.jsp">문의 게시판</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">회원관리 <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li class="active"><a href="logoutAction.jsp">로그아웃</a></li>
					</ul></li>
			</ul>
		</div>
	</nav>

	<div class="container">
		<div class="row">
			<table class="table table-striped"
				style="text-align: center; border: 1px solid #dddddd">
				<thead>
					<tr>
						<th colspan="3"
							style="background-color: #eeeeee; text-align: center">게시판 글
							보기</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td style="width: 20%;">글 제목</td>
						<td colspan="2">${vo.title }</td>
					</tr>
					<tr>
						<td>작성자</td>
						<td colspan="2">${vo.writer }</td>
					</tr>
					<tr>
						<td>작성일자</td>
						<td colspan="2">${vo.regdate }</td>
					</tr>
					<tr>
						<td>수정일자</td>
						<td colspan="2">${vo.updatedate }</td>
					</tr>
					<tr>
						<td>내용</td>
						<td colspan="2" style="min-height: 200px; text-align: left;">${vo.content }</td>
					</tr>
				</tbody>
			</table>
			<div style="float: right">
				<button type="button" class="btn btn-primary" id="listbtn">목록</button>
				<button type="button" class="btn btn-primary" id="modifybtn">수정</button>
				<button type="button" class="btn btn-primary" id="removebtn">삭제</button>
			</div>
		</div>
		<div>
			<p>&nbsp;</p>
		</div>
		
<!-- 파일첨부 -->
<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">
				<i class="fa fas fa-file"></i> Files
			</div>
			<div class="panel-body">				
				<div class="uploadResult">
					<ul></ul>
				</div>
			</div>			
		</div>
	</div>
</div> 
<div class="bigPictureWrapper">
	<div class="bigPicture"></div>
</div> 
		
		
		<div class="row">
			<div class="panel panel-default">
				<div class="panel-heading">
					<i class="fa fa-comments fa-fw"></i> 댓글
					<button id="addReplyBtn" class="btn btn-primary btn-xs pull-right">댓글 작성</button>
				</div>
				<div class="panel-body">
					<ul class="chat">
						<li class="left clearfix" data-rno='1'>
							<div>
								<div class="header">
									<strong class="primary-font">user00</strong> <small
										class="pull-right text-muted">2021-06-15 14:25</small>
									<p>Good Job!!</p>
								</div>
							</div>
						</li>
					</ul>
				</div>
			<div class="panel-footer"></div><!-- 댓글 페이지 나누기 -->
			</div>
		</div>
		<!-- col-lg-12 close -->
	</div>
	<!-- row close -->
	<div class="modal" tabindex="-1" id="replyModal">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h5 class="modal-title">Reply</h5>
				</div>
				<div class="modal-body">
					<div class="form-group">
						<label for="">댓글 내용</label> <input type="text" name="reply"
							class="form-control" value="댓글내용" />
					</div>
					<div class="form-group">
						<label for="">작성자</label> <input type="text" name="replyer"
							class="form-control" value="작성자" />
					</div>
					<div class="form-group">
						<label for="">작성일</label> <input type="text" name="replyDate"
							class="form-control" value="작성일" />
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-success" id="modalRegisterBtn">등록</button>
					<button type="button" class="btn btn-warning" id="modalModifyBtn">수정</button>
					<button type="button" class="btn btn-danger" id="modalRemoveBtn">삭제</button>
					<button type="button" class="btn btn-primary" data-dismiss="modal"
						id="modalCloseBtn">종료</button>
				</div>
			</div>
		</div>
	</div>


	<!-- row close -->
	<form action="" id="operForm">
		<input type="hidden" name="type" value="${cri.type }" /> <input
			type="hidden" name="keyword" value="${cri.keyword }" /> <input
			type="hidden" name="pageNum" value="${cri.pageNum }" /> <input
			type="hidden" name="amount" value="${cri.amount }" /> <input
			type="hidden" name="bno" value="${vo.bno }" />
	</form>




	<!-- footer부분	 -->
	<!-- 	<section class="feature_part padding_top"> -->
	<div class="container">
		<div class="row align-items-center justify-content-between"></div>


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
							All rights reserved | <a href="https://colorlib.com"
								target="_blank">EatAtLine4</a>
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

</body>
</html>