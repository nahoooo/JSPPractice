<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1 align="center">사원 정보 입력</h1>
	<form action="insertMerberPro.jsp" method="post">

		
		<table border="1" align="center">
			<tr>
				<th>id</th>
				<td>
					<input type="text" name="id">
				</td>
			</tr>

			<tr>
				<th>passwd</th>
				<td>
					<input type="text" name="passwd">
				</td>
			</tr>

			<tr>
				<th>name</th>
				<td>
					<input type="text" name="name">
				</td>
			</tr>

			<tr>
				<th>email</th>
				<td>
					<input type="text" name="email">
				</td>
			</tr>

			<tr>
				<th>joindate</th>
				<td>
					<input type="date" name="joindate">
				</td>
			</tr>

			<tr>
				<td colspan="2" align="center">
					<button type="submit" >전송</button>
					<button type="reset" >다시 작성</button>		
					<a href="MemberList.jsp" >목록</a>			
				</td>
			</tr>

		</table>


	</form>
</body>
</html>