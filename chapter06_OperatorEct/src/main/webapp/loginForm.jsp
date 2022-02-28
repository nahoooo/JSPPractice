<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 폼</title>
</head>
<body>
	<form action="loginFormPro.jsp" method="post" name="login" id="loginForm">
		id : <input type="text" name="id"><br> pw : <input
			type="password" name="passwd"><br> <input type="button"
			value="로그인" onclick="vaildate()"><input type="reset"
			value="취소">
	</form>
	
	<!--스크립트로 유효성 검사.  -->
</body>
<script type="text/javascript">
	function vaildate() {

		var id = document.login.id;
		var pw = document.login.passwd;

		if (id.value == "" || id.value.lenght==0) {
			alert("아이디를 입력하세요");
			id.focus();
			return false
		}
		
		if (pw.value == "" || pw.value.lenght==0) {
			alert("비밀번호를 입력하세요");
			pw.focus();
			return false
		} else {

			/* document.login.action = "loginFormPro.jsp"  액션이랑 method를 이렇게 줄수 있다. 동적. */ 
			document.login.submit();

		}

	}
</script>
</html>