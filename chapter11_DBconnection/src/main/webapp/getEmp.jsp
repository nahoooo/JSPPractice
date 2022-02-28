<%@page import="java.sql.Date"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
int empno = Integer.parseInt(request.getParameter("empno"));

Connection conn = null;
PreparedStatement stmt = null;
ResultSet rs = null;

try {
	Class.forName("oracle.jdbc.driver.OracleDriver");

	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	conn = DriverManager.getConnection(url, "scott", "tiger");

	String sql = "select * from employee where empno=?";

	stmt = conn.prepareStatement(sql);
	// 물음표의 값을 순차적으로 세팅.
	stmt.setInt(1, empno);

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
<title>Insert title here</title>
</head>
<body>

<h1>사원 상세 정보</h1>
<%
if(rs.next()){
	int emp_no = rs.getInt("empno");
	String ename = rs.getString("ename");
	String job = rs.getString("job");
	Date hiredate = rs.getDate("hiredate");
	int sal = rs.getInt("sal");
%>
<table border="1">

	<tr>
		<th>empno</th>
		<td><%=emp_no %></td>
	</tr>
	<tr>
		<th>ename</th>
		<td><%=ename %></td>
	</tr>
	<tr>
		<th>job</th>
		<td><%=job %></td>
	</tr>
	<tr>
		<th>hiredate</th>
		<td><%=hiredate %></td>
	</tr>
	<tr>
		<th>sal</th>
		<td><%=sal %></td>
	</tr>
	
	<tr>
		<td colspan="2">
		<a href="deleteEmp.jsp?empno=<%=emp_no%>">삭제</a>
		<a href="updateEmp.jsp?empno=<%=emp_no%>">수정</a>
		<a href="GetEmpList.jsp">목록</a>		
		</td>
	</tr>

</table>
<%
}
%>


</body>

<%
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
</html>