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
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="com.spring.domain.ReviewAttachFileDTO"%>

<%@ page import="com.spring.domain.ReviewVO"%>

<%@ page import="java.io.PrintWriter"%>

<%
	request.setCharacterEncoding("UTF-8");

	String userID = null;

	if(session.getAttribute("userID") != null) {

		userID = (String) session.getAttribute("userID");

	}

	//	로그인 체크 (login check)
	if(userID == null) {

		PrintWriter script = response.getWriter();

		script.println("<script>");

		script.println("alert('로그인을 해주세요.');");

		script.println("location.href = 'login.jsp'");

		script.println("</script>");

		script.close();

		return;

	}

	request.setCharacterEncoding("UTF-8");

	String foodName = null;

	String foodcourtName = null;

	String reviewTitle = null;

	String reviewContent = null;

	String totalScore = null;
	
	String averageScore = null;
	
	

	if(request.getParameter("foodName") != null) {

		foodName = (String) request.getParameter("foodName");

	}

	if(request.getParameter("foodcourtName") != null) {

		foodcourtName = (String) request.getParameter("foodcourtName");

	}


	if(request.getParameter("reviewTitle") != null) {

		reviewTitle = (String) request.getParameter("reviewTitle");

	}

	if(request.getParameter("reviewContent") != null) {

		reviewContent = (String) request.getParameter("reviewContent");

	}

	if(request.getParameter("totalScore") != null) {

		totalScore = (String) request.getParameter("totalScore");

	}


%>
	


</body>
</html>