<%@page import="java.sql.Date"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
Connection conn = null;
PreparedStatement stmt = null;
ResultSet rs = null;

try {
	Class.forName("oracle.jdbc.driver.OracleDriver");

	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	conn = DriverManager.getConnection(url, "scott", "tiger");

	String sql = "select * from employee order by hiredate desc";

	// 물음표의 값을 순차적으로 세팅.
	stmt = conn.prepareStatement(sql);

	// Query실행. 레코드 삽입, 업데이트, 삭제에 사용되는 메소드는 executeUpdate()메소드를 사용한다. (DML은
	// executeUpdate())
	// executeUpdate()메소드의 리턴타입은 int(실행개수 : 입력이 되거나 삭제가 되거나 수정이 된 레코드의 개수.) 레코드는 행.
	// 필드는 열.
	// select를 사용 할때는 executeQuery메소드를 사용한다. 리턴타입은 ResultSet/

	rs = stmt.executeQuery();
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사원정보 리스트</title>
</head>
<body>
	<h1>사원정보 리스트</h1>

	<a href="Insertjsp.jsp">사원 등록</a>
	<table border="1">

		<thead>
			<tr>
				<th>empno</th>
				<th>ename</th>
				<th>job</th>
				<th>hiredate</th>
				<th>sal</th>
			</tr>
		</thead>



		<tbody>
		<%	
			while(rs.next()){
				int empno = rs.getInt("empno");
				String ename = rs.getString("ename");
				String job = rs.getString("job");
				Date hiredate = rs.getDate("hiredate");
				int sal = rs.getInt("sal");
		%>
		<tr>
		<td><%=empno%></td>
		<td><a href="getEmp.jsp?empno=<%=empno%>"> <%=ename%> </a></td><!--리스트페이지 작성방법. 누르면 해당 정보 나오게함. 기본키를 쿼리로 받는?  -->
		<td><%=job%></td>
		<td><%=hiredate%></td>
		<td><%=sal%></td>		
		</tr>
		</tbody>
		
		<%}
		} catch (ClassNotFoundException e) {
		e.printStackTrace();
		} catch (SQLException e) {
		e.printStackTrace();
		} finally {

		try {
			stmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		try {
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		}
		%>

	</table>
</body>
</html>