<%@page import="java.sql.Date"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String id = request.getParameter("id");

Connection conn = null;
PreparedStatement stmt = null;
ResultSet rs = null;

Class.forName("oracle.jdbc.driver.OracleDriver");

String url = "jdbc:oracle:thin:@localhost:1521:xe";
conn = DriverManager.getConnection(url, "scott", "tiger");

String sql = "select * from member where id=?";

stmt = conn.prepareStatement(sql);

stmt.setString(1, id);

rs = stmt.executeQuery();
%>               
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>updateMember</title>
</head>
<body>
<h1 align="center">회원 정보 수정창</h1>
	<%
	if (rs.next()) {
		String id_ = rs.getString("id");
		String passwd = rs.getString("passwd");
		String name = rs.getString("name");
		String email = rs.getString("email");		
		Date joindate = rs.getDate("joindate");		
	%>
	<form action="updateMemberPro.jsp" method="post" >
		<table border="1" align="center">
			<tr>
				<th>아이디</th>
				<td><%=id_ %> <input type="hidden" name="id" value="<%=id_%>"></td>
			</tr>
			<tr>
				<th>passwd</th>
				<td><input type="text" name="passwd" value="<%=passwd%>"></td>
			</tr>
			<tr>
				<th>name</th>
				<td><input type="text" name="name" value="<%=name%>"></td>
			</tr>
			<tr>
				<th>email</th>
				<td><input type="text" name="email" value="<%=email%>"></td>
			</tr>
			<tr>
				<th>joindate</th>
				<td><%=joindate%><input type="hidden" name="joindate" value="<%=joindate%>"></td>
			</tr>			
			<tr>
			<td colspan="2">
			<button type="submit" onclick="chk()">수정하기</button>
			<button type="reset">다시 입력</button>				
			</td>
			</tr>
		</table>
	</form>
</body>
<script type="text/javascript">
function chk() {
	alert("수정되었습니다.")
	
}

</script>
<%}%>
</html>