<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>로그인 처리</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
	
		//로그인 화면에 입력된 아이디와 비밀번호를 가져온다.
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
	%>
	
	<!-- 임시 출력 -->
	<p>아이디 : <%=id %>
	<p>비밀번호 : <%=pw %>
</body>
</html>
