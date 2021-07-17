<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>연산</h1>
	
	<p>
	<!-- servlet에서 넘어온 값 request.attribute() / getParameter()
		들을 표현할때 사용한다. java보다 간결하다. -->
		
		\${5+2} ---> ${5+2}<br>
		\${5-2} ---> ${5-2}<br>
		\${5*2} ---> ${5*2}<br>
		\${5/2} ---> ${5/2}<br>
		\${5 div 2} ---> ${5 div 2}<br>
		\${5%2} ---> ${5%2}<br>
		\${5 mod 2} ---> ${5 mod 2}<br>
		
		\${5>2} ---> ${5>2}<br>
		\${5 gt 2} ---> ${5 gt 2}<br>
		\${5<2} ---> ${5<2}<br>
		\${5 lt 2} ---> ${5 lt 2}<br>
		
		\${5>=2} ---> ${5>=2}<br>
		\${5 ge 2} ---> ${5 ge 2}<br>
		\${5<=2} ---> ${5<=2}<br
		\${5 le 2} ---> ${5 le 2}<br>
		
		\${5 != 2} ---> ${5 != 2}<br>
		<!-- \${5 ne 2} ${5 ne 2}<br> 자꾸 오류나서 주석처리-->
		
		<br><br><br>
		
		\${5>=2 ? 5 : 2} ---> ${5>=2 ? 5 : 2}<br>
		
		<br><br>
		
		\${(5<2) || (2>10)} ---> ${ (5<2) || (2>10)}<br>

		\${(5>2) || (2>10)} ---> ${ (5>2) || (2>10)}<br>	

		
		\${(5<2) && (2>10)} ---> ${ (5<2) && (2>10)}<br>
		
		\${(5>2) && (2<10)} ---> ${ (5>2) && (2<10)}<br>
		
		<br><br>
		
		\${empty str} --> ${empty str}
		
		<br><br><br><br><br><br><br><br><br><br><br>
		
		<%String val = (String)request.getAttribute("reqVal");%>
		<br>
		<%=val%>
		<br>
		${reqVal}
		<br>
	</p>


</body>
</html>