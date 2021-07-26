<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>EatAtLine4</title>
<link rel="icon" href="resources/img/favicon.png">
</head>
<body>
	<!--::header part start::-->
	<jsp:include page="include/header.jsp"></jsp:include>
	<!-- Header part end-->

	<!-- banner part start-->
	<section class="banner_part" style="">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-lg-7">
					<div class="banner_text">
						<div class="banner_text_iner">
							<h5>Must-go restaurants</h5>
							<h2>Find out the best-rated restaurants near subway station</h2>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- banner part5 start-->
	<section class="banner_part5">
		<div class="container">
			<div class="d-flex justify-content-center  h-100">
				<div class="col-3"
					style="padding-top: 30px; padding-bottom: 30px; background-color: #b8cfc7;">
					<div class="btn-group" id="selectStyle">
						<button id="selectButton"
							class="btn btn-secondary btn-lg dropdown-toggle" type="button"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							Choose the subway line</button>
						<div class="dropdown-menu">
						<form action="" method="get">
							<a class="dropdown-item" id="line1" href="#">line 1</a>
							<a class="dropdown-item" id="line2" href="#">line 2</a>
							<a class="dropdown-item" id="line3" href="#">line 3</a>
							<a class="dropdown-item" id="line4" href="/subway">line 4</a>
						</form>
						</div>
					</div>
				</div>
				<div class="col-9" id="subwayinclude"
					style="border: solid; border-color: #b8cfc7; padding-top: 30px">
					<jsp:include page="subway4.jsp"></jsp:include>
					<%-- <c:set var="lineNum" value="<%=request.getAttribute("lineNum")%>"> --%>
						<c:if test="${lineNum}=='line4'">
							<div>테스트다다다다다다다</div>
							<jsp:include page="subway4.jsp"></jsp:include>
						</c:if>
					<%-- </c:set> --%>
				</div>
			</div>
		</div>
	</section>

	<!--::banner_part6 start::-->
	<section class="banner_part6">
		<div class="container">
			<div class="row">
				<div class="col-md-4">
					<div class="single_footer_part">
						<h4>About us</h4>
						<p>EatAtLine4 is a social networking site that lets users post
							reviews and rate restaurants near subway line 4. Share your
							experiences with our community and receive the best
							recommendations for restaurants.</p>
					</div>
				</div>

				<div class="col-md-4">
					<div class="single_footer_part">
						<h4>Community</h4>
						<p>
							Are you a food lover? <br /> Our community is a place where
							everyone has a voice to share, create, and connect with other
							food lovers. It's easy to find and share what to eat and where to
							eat.
						</p>
					</div>
				</div>

				<div class="col-md-4 col-lg-3-4">
					<img src="resources/img/couple.png" alt="" class="" />
				</div>
			</div>
		</div>
	</section>

	<!--::footer part start::-->
	<jsp:include page="include/footer.jsp"></jsp:include>
	<!-- footer part end-->

	<script>
		var csrfHeaderName="${_csrf.headerName}";
		var csrfTokenValue="${_csrf.token}";

		$(function() {
			$(".dropdown-item").click(function(e) {
				e.preventDefault();
				console.log("스크립트 테스트");
				
				var lineNum = $(this).attr("id");
				console.log(lineNum);
				$(this).append("<input type='hidden' name='"+lineNum+"' value='"+lineNum+"'/>")
				
				let sendData = "lineNum="+$('input[name="'+lineNum+'"]').val();
				console.log(sendData);
				$.ajax({
					type:'post',
					beforeSend:function(xhr){
						xhr.setRequestHeader(csrfHeaderName,csrfTokenValue);
					},
					url:'/',
					data:sendData,
					success : function(){
						
					}
				})
			})
		})
	</script>
</body>
</html>