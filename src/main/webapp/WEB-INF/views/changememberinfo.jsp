<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>Insert title here</title>
<link rel="icon" href="resources/img/favicon.png">
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<!-- animate CSS -->
<link rel="stylesheet" href="resources/css/animate.css">
<!-- owl carousel CSS -->
<link rel="stylesheet" href="resources/css/owl.carousel.min.css">
<!-- font awesome CSS -->
<link rel="stylesheet" href="resources/css/all.css">
<!-- flaticon CSS -->
<link rel="stylesheet" href="resources/css/flaticon.css">
<link rel="stylesheet" href="resources/css/themify-icons.css">
<link rel="stylesheet" href="resources/css/nice-select.css">
<!-- font awesome CSS -->
<link rel="stylesheet" href="resources/css/magnific-popup.css">
<!-- swiper CSS -->
<link rel="stylesheet" href="resources/css/slick.css">
<!-- style CSS -->
<link rel="stylesheet" href="resources/css/style.css">
<!-- signup CSS -->
<link rel="stylesheet" href="resources/css/changememberinfo.css">

<!-- jquery -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!-- validation -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.js"></script>
<!-- validation 사용자 작성 코드 삽입-->
<!-- <script src="/resources/js/changememberinfo.js"></script> -->
</head>
<body>
	<!--::header part start::-->
	<header class="main_menu home_menu">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-lg-12">
					<a class="navbar-brand" href="index.jsp"> <img
						src="resources/img/logo.png" alt="<logo></logo>">
					</a> <a class="btn_1 d-none d-lg-block" href="community.jsp">Community</a>
					<a class="btn_1 d-none d-lg-block" href="index.jsp">index</a>
				</div>
			</div>
		</div>
	</header>
	<!-- Header part end-->

	<div class="container h-100">
		<div class="d-flex justify-content-center h-100">
			<div class="user_card">
				<div class="d-flex justify-content-center">
					<div class="brand_logo_container">
						<img src="resources/img/logo.png" class="brand_logo" alt="Logo">
					</div>
				</div>
				<div class="d-flex justify-content-center form_container">
					<form id="changeMemberInfo" method="post" action="" class="">
						<div class="input-group mb-3">
							<label for="userid" class="col-sm-4 col-form-label">아이디</label>
							<div class="col-sm-8">
								<input type="text" name="userid" id="userid"
									class="form-control" value="${memberinfo.userid}"
									readonly="readonly" />
							</div>
						</div>
						<div class="input-group mb-3">
							<label for="username" class="col-sm-4 col-form-label">이름
							</label>
							<div class="col-sm-8">
								<input type="text" name="name" id="name" class="form-control"
									value="${memberinfo.name}" readonly="readonly" />
							</div>
							<input type="hidden" name="current_password"
								id="current_password" value="${memberinfo.password}" />
						</div>
						<div class="input-group mb-3">
							<label for="pass2" class="col-sm-4 col-form-label">새 비밀번호
							</label>
							<div class="col-sm-8">
								<input type="password" name="new_password" id="new_password"
									class="form-control" placeholder="변경 비밀번호 입력" /> <small
									id="new_password" class="text-info"></small>
							</div>
						</div>
						<div class="input-group mb-3">
							<label for="pass2" class="col-sm-4 col-form-label">새 비밀번호
								확인 </label>
							<div class="col-sm-8">
								<input type="password" name="confirm_password"
									id="confirm_password" class="form-control"
									placeholder="변경 비밀번호 재입력" /> <small id="confirm_password"
									class="text-info"></small>
							</div>
						</div>
						<div class="mt-2">
							<div class="col">
								<button type="submit" id="passwordChangeButton"
									class="btn login_btn">패스워드 변경</button>
							</div>
						</div>
						<div class="d-flex justify-content-center form_container">
							<div class="input-group mb-3">
								<label for="new_mobile" class="col-sm-4 col-form-label">새
									모바일</label>
								<div class="col-sm-8">
									<input type="text" name="new_mobile" id="new_mobile"
										class="form-control" placeholder="010-1234-5678" value="" />
									<small id="new_mobile" class="text-info"></small>
								</div>
							</div>
						</div>
						<div class="mt-4">
							<div class="col">
								<button type="submit" name="button" class="btn login_btn">모바일
									수정</button>
							</div>
						</div>
						<div class="d-flex justify-content-center form_container">
							<div class="input-group mb-3">
								<label for="new_email" class="col-sm-4 col-form-label">새
									이메일</label>
								<div class="col">
									<input type="email" name="new_email" id="new_email"
										class="form-control" placeholder="example@gmail.com" value="" />
									<small id="new_email" class="text-info"></small>
								</div>
							</div>
						</div>
						<div class="mt-4">
							<div class="col">
								<button type="submit" id="emailChangeButton"
									class="btn login_btn">이메일 수정</button>
							</div>
						</div>
						<div class="mt-4">
							<div class="col">
								<button type="submit" id="memberleaveButton"
									class="btn login_btn">회원탈퇴</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<script>
		
	<%-- 패스워드 변경 클릭 --%>
		$(function() {
			$("#passwordChangeButton").click(function(e) {
				e.preventDefault();

				let param = {
					userid : $("input[name='userid']").val(),
					current_password : $("#current_password").val(),
					new_password : $("#new_password").val(),
					confirm_password : $("#confirm_password").val()
				}

				$.ajax({
					url : "/changepassword",
					type : "put",
					contentType : "application/json",
					data : JSON.stringify(param),
					success : function(data) {
						if (data == 'passwordsuccess') {
							alert('비밀번호 변경에 성공 하였습니다.\n 다시 로그인해 주세요');
							location.href = "login";
						}

					},
					error : function(xhr, textStatus, error) {
						if (xhr.responseText === 'not-equal') {
							alert("입력하신 새 비밀번호가 일치하지 않습니다.");
							$("#new_password").val("");
							$("#confirm_password").val("");
						} else {
							alert('비밀번호가 변경에 실패 하였습니다.');
						}
					}
				})
			})
		})
	<%-- 이메일 변경 클릭 --%>
		$(function() {
			$("#emailChangeButton").click(function(e) {
				e.preventDefault();

				let param = {
					userid : $("input[name='userid']").val(),
					current_password : $("#current_password").val(),
					new_email : $("#new_email").val(),
				}

				$.ajax({
					url : "/changeemail",
					type : "put",
					contentType : "application/json",
					data : JSON.stringify(param),
					success : function(data) {
						if (data == 'emailsuccess') {
							alert('이메일 변경에 성공 하였습니다.\n 다시 로그인해 주세요');
							location.href = "login";
						}

					}
				})
			})
		})
	<%-- 모바일 변경 클릭 --%>
		$(function(mailvalid) {
			$("#changeMemberInfo").validate({
				  errorPlacement: function(error, element) {
				    $(element)
				      .closest("form")
				      .find("small[id='" + element.attr("id") + "']")
				      .append(error);
				  },
				  rules: {
					  new_mobile:{
					        required: true,
					        mobile: true
						  }
				  },
				  messages: {
					  new_mobile:{
					        required: "핸드폰 번호를 입력해 주세요",
						  }
				  }
			  })
			})
		
		$(function() {
			$("#mobileChangeButton").click(function(e) {
				e.preventDefault();
				mailvalid();
				
				
				let param = {
					userid : $("input[name='userid']").val(),
					current_password : $("#current_password").val(),
					new_mobile : $("#new_mobile").val(),
				}

				$.ajax({
					url : "/changemobile",
					type : "put",
					contentType : "application/json",
					data : JSON.stringify(param),
					success : function(data) {
						if (data == 'emailsuccess') {
							alert('모바일 번호 변경에 성공 하였습니다.\n 다시 로그인해 주세요');
							location.href = "login";
						}

					}
				})
			})
		})
			


		<%-- 회원 탈퇴 클릭 --%>
		$(function() {
			$("#memberleaveButton").click(function(e){
				e.preventDefault();
				
				if(confirm("정말 탈퇴 하시겠습니까?")==true){
					let param={
							userid:$("input[name='userid']").val(),
							current_password:$("#current_password").val()			
					}
					
					$.ajax({
						url:"/memberleave",
						type:"delete",
						contentType:"application/json",
						data:JSON.stringify(param),
						success:function(data){
							if(data==='leavesuccess'){
								alert("회원 탈퇴 하였습니다.")
								location.href="/";
							}
						}		
					})
					
				}else {
					return;
				}	
			})
		})
		
$.validator.addMethod(
	  "mobile",
	  function(value) {
	    var regMobile = /01[016789]-[^0][0-9]{2,3}-[0-9]{3,4}/;
	    return regMobile.test(value);
	  },
	  "핸드폰 번호 형식을 확인해 주세요"
	)
	</script>
</body>
</html>

