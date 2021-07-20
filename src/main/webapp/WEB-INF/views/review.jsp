<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>review Page</title>
</head>
<body>

<c:url var="reviewsPath" value="/reviews" />
<f:form modelAttribute="review" action="${ reviewsPath }" method="post">
    <c:forEach var="error" items="${ fieldErrors }">
        <div class="alert alert-warning">
            <strong>${ error.getField() }</strong>: ${ error.getDefaultMessage() }
        </div>
    </c:forEach>
    <f:textarea path="text" cssClass="form-control" rows="5" />
    <f:hidden path="bookId" />
    <f:hidden path="userId" />
    <button class="btn btn-block btn-primary" type="submit">리뷰 등록</button>
</f:form>

</body>
</html>