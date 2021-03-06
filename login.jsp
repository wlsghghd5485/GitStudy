<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>로그인</title>
	
	<!-- 유효검사 -->
	<script type="text/javascript" src="./resources/js/validation_login.js"></script>
	
	<script type="text/javascript">
	
		//회원가입 버튼 누를 시 로그인 화면 join.jsp로 이동
		function goJoin() {
			location.href = "./join.jsp";
		}

	</script>
	
	<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
	
	<style type="text/css">
	
		/* 레이아웃 틀 */
		
		html{
			height: 100%;		
		}
		
		body{
			margin: 0;
			height: 100%;
			background: #f5f6f7;
		}
		
		#wrapper{
			position: relative;
			height: 100%
		}
		
		#content{
			position: absolute;
			left: 50%;
			transform: translate(-50%);
			width: 460px;
		}
		
		/* 입력폼 */
		
		h3{
			margin: 19px 0px 8px;
			font-size: 14px;
			font-weight: 700;
		}
		
		.box{
			display: block;
			width: 100%;
			height: 51px;
			border: solid 1px #dadada;
			padding: 10px 14px 10px 14px;
			box-sizing: border-box;
			background: #fff;
			position: relative;
		}
		
		.int{
			display: block;
			position: relative;
			width: 100%;
			height: 29px;
			border: none;
			background: #fff;
			font-size: 15px;	
		}
		
		/* 버튼 */
		
		.btn_Area{
			text-align: center;
		}
		
		#btn{
			width: 30%;
			padding: 11px 0px 7px;
			border: 0px;
			cursor: pointer;
			font-size: 20px;
			font-weight: 400;
		}
	
	</style>
	
</head>
<body>
	<jsp:include page="menu.jsp"/>	
	
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">로그인</h1>
		</div>
	</div>
	
	<div id="wrapper">
		<div id="content">
			<!-- 값(파라미터) 전송은 post 방식, 전송할 페이지는 loginPro.jsp -->
			<form action="./loginPro.jsp" method="post" name="loginInfo" onsubmit="return checkValue()">
				
				<!-- 아이디 -->
				<div>
					<h3 class="join_title">
						<label for="id">아이디</label>
					</h3>
					<span class="box">
						<input type="text" id="id" name="id" class="int" maxlength="20" required />
					</span>
				</div><!-- 아이디 -->
				
				<!-- 비밀번호 -->
				<div>
					<h3 class="join_title">
						<label for="pw">비밀번호</label>
					</h3>
					<span class="box">
						<input type="text" id="pw" name="pw" class="int" maxlength="20" required />
					</span>
				</div><!-- 비밀번호 -->
				<br/>
				
				<div class="btn_Area">
					<input type="button" id="btn" class="btn btn-primary" value="로그인" onclick="checkValue()"/> &nbsp;&nbsp;&nbsp;
					<input type="button" id="btn" class="btn btn-primary" value="회원가입" onclick="goJoin()"/>
				</div>
				
			</form>
			
		</div><!-- content -->
	</div><!-- wrapper -->
	
	<hr>
	<jsp:include page="footer.jsp"/>
</body>
</html>
