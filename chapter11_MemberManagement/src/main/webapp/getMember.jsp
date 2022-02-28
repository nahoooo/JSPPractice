<%@page import="java.sql.Date"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
String id = request.getParameter("id");

Connection conn = null;
PreparedStatement stmt = null;
ResultSet rs = null;

try {
	Class.forName("oracle.jdbc.driver.OracleDriver");

	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	conn = DriverManager.getConnection(url, "scott", "tiger");

	String sql = "select * from member where id=?";

	stmt = conn.prepareStatement(sql);
	// 물음표의 값을 순차적으로 세팅.
	stmt.setString(1, id);

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

<h1 align="center">사원 상세 정보</h1>
<%
if(rs.next()){
	String id_ = rs.getString("id");
	String passwd = rs.getString("passwd");
	String name = rs.getString("name");
	String email = rs.getString("email");	
	Date joindate = rs.getDate("joindate");	
%>
<table border="1" align="center">

	<tr>
		<th>id</th>
		<td><%=id_ %></td>
	</tr>
	<tr>
		<th>passwd</th>
		<td><%=passwd %></td>
	</tr>
	<tr>
		<th>name</th>
		<td><%=name %></td>
	</tr>
	<tr>
		<th>email</th>
		<td><%=email %></td>
	</tr>
	<tr>
		<th>joindate</th>
		<td><%=joindate %></td>
	</tr>
	
	<tr>
		<td colspan="2" align="center">		
		<a href="MemberList.jsp" >목록</a>		
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