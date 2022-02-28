<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
table{
width: 700px;
  border-top: 1px solid red; 
  border-collapse: collapse;
}
td{
padding-top: 10px;
padding-bottom: 10px;
 border-bottom: 1px solid red; 
}

</style>
<meta charset="UTF-8">
<title>로그인폼 예제문제</title>
</head>
<body>
	<form action="loginExTest.jsp" method="post">
		<table>
			<tr>

				<td>이름</td>
				<td><input type="text" name="name"></td>

			</tr>
			<tr>
				<td>날짜</td>
				<td><input type="date" name="date"></td>

			</tr>
			<tr>			
				<td>야구팀</td>
				<td>
					<input type="radio" name="team1" value="KIA타이거즈">KIA타이거즈<br>
					<input type="radio" name="team1" value="두산베어스">두산 베어스<br>
					<input type="radio" name="team1" value="롯데자이언츠">롯데 자이언츠<br>
					<input type="radio" name="team1" value="삼성라이온즈">삼성 라이온즈<br>
					<input type="radio" name="team1" value="키움히어로즈">키움 히어로즈
				</td>	
			</tr>
			<tr>
				<td>4강 예상팀</td>
				<td>
				 <input type="checkbox" name="team2" value="KIA타이거즈">KIA타이거즈<br>
					<input type="checkbox" name="team2" value="두산베어스">두산 베어스<br>
					<input type="checkbox" name="team2" value="롯데자이언츠">롯데 자이언츠<br>
					<input type="checkbox" name="team2" value="삼성라이온즈">삼성 라이온즈<br>
					<input type="checkbox" name="team2" value="키움히어로즈">키움 히어로즈
				</td>
			</tr>
	
		</table>
		<br>
		<input type="submit" value="제출">
	</form>
</body>
</html>