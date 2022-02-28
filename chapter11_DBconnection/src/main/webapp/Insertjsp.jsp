<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사원 정보 입력</title>
</head>
<body>
	<h1>사원 정보 입력</h1>
	<form action="insertEmpPro.jsp" method="post">

		
		<table border="1">
			<tr>
				<th>empno</th>
				<td>
					<input type="text" name="empno">
				</td>
			</tr>

			<tr>
				<th>ename</th>
				<td>
					<input type="text" name="ename">
				</td>
			</tr>

			<tr>
				<th>job</th>
				<td>
					<input type="text" name="job">
				</td>
			</tr>

			<tr>
				<th>hiredate</th>
				<td>
					<input type="date" name="hiredate">
				</td>
			</tr>

			<tr>
				<th>sal</th>
				<td>
					<input type="text" name="sal">
				</td>
			</tr>

			<tr>
				<td colspan="2">
					<button type="submit" >전송</button>
					<button type="reset" >다시 작성</button>
					<a href="GetEmpList.jsp">목록</a>
				</td>
			</tr>

		</table>


	</form>
</body>
</html>