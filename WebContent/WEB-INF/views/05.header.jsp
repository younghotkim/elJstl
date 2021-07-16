<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="vo.*"%>

<%
UserVo authUser = (UserVo) session.getAttribute("authUser");
//System.out.println(authUser);
%>


<h1>세션에 있는 데이터 가져오기</h1>

<h2>java를 이용</h2>

<div id="header" class="clearfix">
	<h1>
		<a href="/mysite/main">MySite</a>
	</h1>

	<%
	if (authUser != null) {
	%>


	<ul>
		<li><%=authUser.getName()%> 님 안녕하세요^^)b</li>
		<li><a href="/mysite/user?action=logout" class="btn_s">로그아웃</a></li>
		<li><a href="/mysite/user?action=modifyForm" class="btn_s">회원정보수정</a></li>
	</ul>

	<%
	} else {
	%>


	<ul>
		<li><a href="/mysite/user?action=loginForm" class="btn_s">로그인</a></li>
		<li><a href="/mysite/user?action=joinForm" class="btn_s">회원가입</a></li>
	</ul>

	<%
	}
	%>

</div>
<!-- //header -->

<h2>el를 이용</h2>



<%
	if (authUser != null) {
	%>


	<ul>
		<li>${sessionScope.authUser.name} 님 안녕하세요^^)b</li>
		<li><a href="/mysite/user?action=logout" class="btn_s">로그아웃</a></li>
		<li><a href="/mysite/user?action=modifyForm" class="btn_s">회원정보수정</a></li>
	</ul>

	<%
	} else {
	%>


	<ul>
		<li><a href="/mysite/user?action=loginForm" class="btn_s">로그인</a></li>
		<li><a href="/mysite/user?action=joinForm" class="btn_s">회원가입</a></li>
	</ul>

	<%
	}
	%>


</body>
</html>