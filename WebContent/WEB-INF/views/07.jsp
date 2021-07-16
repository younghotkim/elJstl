<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	pageContext.setAttribute("name","page name");
	request.setAttribute("name", "request name");
	session.setAttribute("name", "session name");
	application.setAttribute("name", "application name");
%>




<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>범주 우선순위</h1>
	
	<h2>java로 표현</h2>
	
	page name = <%=pageContext.getAttribute("name")%> <br>
	request name = <%=request.getAttribute("name")%> <br>
	session name = <%=session.getAttribute("name")%> <br>
	application name = <%=application.getAttribute("name")%> <br>

	<h2>el로 표현</h2>
	
	page name = ${pageScope.name} <br>
	request name = ${requestScope.name} <br>
	session name = ${sessionScope.name} <br>
	application name = ${applicationScope.name} <br>
	
	<h2>중복 이름 찾기</h2>
	
	name = ${name}
	
</body>
</html>