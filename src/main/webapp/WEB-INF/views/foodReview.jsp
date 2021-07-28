<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- 추가한 부분 -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">


<!-- 별점 추가한 부분 -->
<script src="resources/rating/js/star-rating.js" type="text/javascript"></script>
<link href="resources/rating/css/star-rating.css" media="all" rel="stylesheet" type="text/css" />

<title>EatAtLine4</title>
</head>
<%
	String storeid = request.getParameter("store_id");
%>
<!-- 출력 -->
<table class="table table-stripped" id="reviews">
    <thead>
        <tr>
            <th><%=storeid %></th> <!-- 평점 -->
            <th>작성자</th>
            <th>내용</th>
        </tr>
    </thead>
    <tbody>
<%--         <c:forEach var="review" items="${ reviews }" varStatus="status"> --%>
        <c:forEach var="vo" items="${ list}" varStatus="status">
            <!-- 평점 기준 별표시 출력 -->
            <tr>
                <td><c:forEach var="rating" items="${ ratingOptions }" varStatus="status" begin="1" end="${vo.star}">★</c:forEach></td>
                <td>${vo.bno}</td>
                <td>${vo.reviewer}</td>
                <td>${vo.review}</td>
                <td><fmt:formatDate pattern="yyy-MM-dd HH:mm"
						value="${vo.reviewdate}" /></td>
				<td><fmt:formatDate pattern="yyy-MM-dd HH:mm"
						value="${vo.updatedate}" /></td>
            </tr>
        </c:forEach>
    </tbody>
</table>

<!-- 페이지 나누기 -->
<div class="text-center">
	<ul class="pagination">
		<c:if test="${pageVO.prev }">
			<li class="paginate_button previous"><a
				href="${pageVO.startPage-1 }">이전</a></li>
		</c:if>
		
		<c:forEach var="idx" begin="${pageVO.startPage }"
			end="${pageVO.endPage }">
			<li
				class="paginate_button ${pageVO.cri.pageNum==idx?'active':'' }">
				<a href="${idx }">${idx }</a>
			</li>
		</c:forEach>
		
		<c:if test="${pageVO.next }">
			<li class="paginate_button next"><a
				href="${pageVO.endPage+1 }">다음</a></li>
		</c:if>
	</ul>
</div>
<form action="foodReview" method="post" id="actionForm">
	 <input type="hidden" name="pageNum" value="${pageVO.cri.pageNum }" /> 
	 <input type="hidden" name="amount" value="${pageVO.cri.amount }" />
</form>
	<script>
	let result = '${result}';
</script>


<!-- 추가한 부분 -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>     
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>


</body>
</html>