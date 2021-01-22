<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@page import="kr.gov.bean.MemberBean" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>회원가입처리</title>
		
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
	%>
	
	<jsp:useBean id="memberBean" class="kr.gov.bean.MemberBean"/>
	<jsp:setProperty property="*" name="memberBean"/>
	
	<div id="header">
		<br/><br/>
		<b><font size="5" color="gray">회원가입 정보를 확인하세요.</font></b>
		<br/><br/>
		<font color="blue"><%=memberBean.getName() %></font>님 가입을 축하드립니다.
		<br/><br/>
	</div>
	
	<div id="content">
		<%-- bean에서 입력된 값을 출력한다. --%>
		<table>
			<tr>
				<td id="title">이름</td>
				<td><%=memberBean.getName() %></td>
			</tr>
			
			<tr>
				<td id="title">아이디</td>
				<td><%=memberBean.getId() %></td>
			</tr>
			
			<tr>
				<td id="title">비밀번호</td>
				<td><%=memberBean.getPw() %></td>
			</tr>
			
			<tr>
				<td id="title">나이</td>
				<td><%=memberBean.getAge() %></td>
			</tr>
			
			<tr>
				<td id="title">이메일</td>
				<td>
					<%=memberBean.getEmail1() %>@<%=memberBean.getEmail2()%>
				</td>
			</tr>
			
			<tr>
				<td id="title">주소</td>
				<td><%=memberBean.getAddr() %></td>
			</tr>
		</table>
		<br/>
		<input type="button" value="확인" onclick="goLogin()"/>
	</div>
	
	<script type="text/javascript">
		function goLogin() {
			location.href = "./login.html"
		}
	</script>
</body>
</html>


