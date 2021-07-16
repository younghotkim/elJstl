<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h2>java로 표현</h2>

	<%
	if ("1".equals(request.getParameter("color"))) {
	%>
	<span style="color: red">빨강</span>
	<%
	} else if ("2".equals(request.getParameter("color"))) {
	%>
	<span style="color: green">녹색</span>
	<%
	} else if ("3".equals(request.getParameter("color"))) {
	%>
	<span style="color: blue">파랑</span>
	<%
	}
	%>
	
	<br><br>
	----------------------------------------------------------------------
	
	<br><br>

	<h2>jstl로 표현</h2>
	
	<c:choose>
		
		<c:when test = "${param.color == 1 }">
			<span style="color: red">빨강</span>
		</c:when>
		
		<c:when test = "${param.color == 2 }">
			<span style="color: green">녹색</span>
		</c:when>
		
		<c:otherwise>
			<span style="color: blue">파랑</span>
		</c:otherwise>
		
	</c:choose>
	
	
</body>
</html>