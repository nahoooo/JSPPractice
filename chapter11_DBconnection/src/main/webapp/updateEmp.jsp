<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<%
int empno = Integer.parseInt(request.getParameter("empno"));

Connection conn = null;
PreparedStatement stmt = null;
ResultSet rs = null;

Class.forName("oracle.jdbc.driver.OracleDriver");

String url = "jdbc:oracle:thin:@localhost:1521:xe";
conn = DriverManager.getConnection(url, "scott", "tiger");

String sql = "select * from employee where empno=?";

stmt = conn.prepareStatement(sql);

stmt.setInt(1, empno);

rs = stmt.executeQuery();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>updateEmp</title>
</head>
<body>
	<h1>사원 정보 수정</h1>

	<%
	if (rs.next()) {
		int emp_no = rs.getInt("empno");
		String ename = rs.getString("ename");
		String job = rs.getString("job");
		Date hiredate = rs.getDate("hiredate");
		int sal = rs.getInt("sal");
	%>

	<form action="updateEmpPro.jsp" method="post">
		<table>

			<tr>
				<th>empno</th>
				<td><%=emp_no %> <input type="hidden" name="empno" value="<%=emp_no%>"></td>
			</tr>
			<tr>
				<th>ename</th>
				<td><input type="text" name="ename" value="<%=ename%>"></td>
			</tr>
			<tr>
				<th>job</th>
				<td><input type="text" name="job" value="<%=job%>"></td>
			</tr>
			<tr>
				<th>hiredate</th>
				<td><input type="date" name="hiredate" value="<%=hiredate%>"></td>
			</tr>
			<tr>
				<th>sal</th>
				<td><input type="text" name="sal" value="<%=sal%>"></td>
			</tr>

			<tr>
			<td colspan="2">
			<button type="submit">전송</button>
			<button type="reset">다시 입력</button>
			<a href="GetEmpList.jsp">목록</a>		
			</td>
			</tr>
		</table>
	</form>
</body>
<%
}
%>
</html>