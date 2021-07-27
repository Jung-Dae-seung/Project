<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html lang="en" xmlns:th="http://thymeleaf.org">
<head>
<meta charset="UTF-8" />
<meta id="_csrf" name="_csrf" th:content="${_csrf.token}"/>
<meta id="_csrf_header" name="_csrf_header" th:content="${_csrf.headerName}"/>
<title>Insert title here</title>
<link rel="icon" href="resources/img/favicon.png">
<!-- signup CSS -->
<link rel="stylesheet" href="resources/css/signup.css">
</head>
<body>
	<!--::header part start::-->
	<jsp:include page="include/header.jsp"></jsp:include>
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
					<form id="signup" method="post" action="insertMember" class="">
						<div class="input-group mb-3">
							<label for="userid" class="col-sm-4 col-form-label">아이디</label>
							<div class="col-sm-8">
								<input type="text" name="userid" id="userid"
									class="form-control" placeholder="아이디 입력"
									value="${member.userid}" /> <small id="userid"
									class="text-info"></small>
							</div>
						</div>
						<div class="input-group mb-3">
							<label for="pass1" class="col-sm-4 col-form-label">비밀번호</label>
							<div class="col-sm-8">
								<input type="password" name="password" id="password"
									class="form-control" placeholder="비밀번호 입력" /> <small
									id="password" class="text-info"></small>
							</div>
						</div>
						<div class="input-group mb-3">
							<label for="pass2" class="col-sm-4 col-form-label">비밀번호
								확인 </label>
							<div class="col-sm-8">
								<input type="password" name="confirm_password"
									id="confirm_password" class="form-control"
									placeholder="비밀번호 확인 입력" /> <small id="confirm_password"
									class="text-info"></small>
							</div>
						</div>
						<div class="input-group mb-3">
							<label for="username" class="col-sm-4 col-form-label">이름
							</label>
							<div class="col-sm-8">
								<input type="text" name="name" id="name" class="form-control"
									placeholder="이름 입력" value="${member.name}" /> <small id="name"
									class="text-info"></small>
							</div>
						</div>
						<div class="input-group mb-1">
							<label for="pass2" class="col-sm-4 col-form-label">성별 </label>
							<div class="col-sm-8">
								<div class="form-check form-check-inline">
									<input type="radio" id="gender" name="gender" value="남"
										class="form-check-input" />남
								</div>
								<div class="form-check form-check-inline">
									<input type="radio" name="gender" value="여"
										class="form-check-input" />여
								</div>
								<small id="gender" class="text-info"></small>
							</div>
						</div>
						<div class="input-group mb-3">
							<label for="age" class="col-sm-4 col-form-label">나이</label>
							<div class="col-sm-8">
								<input type="text" name="age" id="age" class="form-control"
									placeholder="나이 입력" value="" /> <small id="age"
									class="text-info"></small>
							</div>
						</div>
						<div class="input-group mb-3">
							<label for="mobile" class="col-sm-4 col-form-label">모바일</label>
							<div class="col-sm-8">
								<input type="text" name="mobile" id="mobile"
									class="form-control" placeholder="010-1234-5678"
									value="${member.mobile}" /> <small id="mobile"
									class="text-info"></small>
							</div>
						</div>
						<div class="input-group mb-3">
							<label for="email" class="col-sm-4 col-form-label">이메일</label>
							<div class="col">
								<input type="email" name="email" id="email" class="form-control"
									placeholder="example@gmail.com" value="${member.email}" /> <small
									id="email" class="text-info"></small>
							</div>
						</div>

						<div class="mt-4">
							<div class="d-flex justify-content-center links">
								<div class="custom-control custom-checkbox">
									<input type="checkbox" id="tac" name="tac"> <a href="#"
										class="ml-2">회원 가입 약관 동의</a> <small id="tac" class="text-info"></small>
								</div>
							</div>
								<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
							<div class="d-flex justify-content-center mt-4 login_container">
								<div class="col">
									<button type="submit" name="button" class="btn login_btn">sign
										up</button>
								</div>
								<div class="col">
									<button type="reset" name="button" class="btn login_btn">cancel</button>
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- validation -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.js"></script>
	<!-- validation 사용자 작성 코드 삽입-->
	<script src="/resources/js/signup.js"></script>
	<script>
		var csrfHeaderName="${_csrf.headerName}";
		var csrfTokenValue="${_csrf.token}";
 		$(function() {
			//gender 값 가져온 후 남이면 radio 부분에 남이 체크되도록 / 여이면 여자 체크
			let gender = '${mamber.gender}'

			if (gender === '남') {
				$("#gender").prop("checked", true);
			} else {
				$(":radio[name='gender'][value='여'])").prop("checked", true);
			}

		})
	</script>
</body>
</html>
