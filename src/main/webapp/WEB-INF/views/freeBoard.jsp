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
								<td><fmt:formatDate pattern="yyy-MM-dd HH:mm"
										value="${vo.regdate }" /></td>
								<td><fmt:formatDate pattern="yyy-MM-dd HH:mm"
										value="${vo.updatedate }" /></td>
							</tr>
						</c:forEach>
					</tbody>
			</table>
			
				<a href="" class="btn btn-success btn-arrow-left">이전</a>
				<a href="" class="btn btn-success btn-arrow-left">다음</a>
				
			<a href="write.jsp" class="btn btn-primary pull-right">글쓰기</a>
		</div>
	</div>

	
<script>
	let result = '${result}';
</script>
<script src="/resources/js/list1.js"></script>
</body>
</html>