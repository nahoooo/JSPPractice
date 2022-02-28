<%@page import="java.sql.Date"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String session_name =(String)session.getAttribute("name");
if(session_name==null){
	response.sendRedirect("login.jsp");//memberlist를 로그인 하지 않고 직접 url로 접속한경우 sessionname값이 없으므로 null값이 나옴. 때문에 null일 경우 로그인 페이지로 보낸다.
}

Connection conn = null;
PreparedStatement stmt = null;
ResultSet rs = null;

Class.forName("oracle.jdbc.driver.OracleDriver");
String url = "jdbc:oracle:thin:@localhost:1521:xe";
conn= DriverManager.getConnection(url, "scott", "tiger");

String sql = "select * from member";

stmt = conn.prepareStatement(sql);

rs = stmt.executeQuery();

%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 리스트</title>
</head>
<body>
	<h1  align="center">회원 정보</h1>
	<p align="center"><%=session_name%>님 반갑습니다.</p>
	<a href="logout.jsp">로그아웃</a>

	<table border="1"  align="center">
	
		<thead>
			<tr>
				<th>아이디</th>
				<th>비밀번호</th>
				<th>이름</th>
				<th>이메일</th>
				<th>가입일</th>
				<th>수정</th>
				<th>삭제</th>			
			</tr>		
		</thead>
		
		<tbody>
			<%
				while(rs.next()){
					String id = rs.getString("id");
					String passwd = rs.getString("passwd");
					String name = rs.getString("name");
					String email = rs.getString("email");
					Date joindate = rs.getDate("joindate");
											
			%>
			<tr>
			<td><%=id%></td>
			<td><%=passwd%></td>
			<td> <a href="getMember.jsp?id=<%=id%>"><%=name%></a> </td>
			<td><%=email%></td>
			<td><%=joindate%></td>
			<td><a href="updateMember.jsp?id=<%=id%>">수정</a></td>
			<td><a href="deleteMember.jsp?id=<%=id%>">삭제</a></td>			
			</tr>									
			<%}%>		
			</tbody>		
	</table>
	<h2 align="center"> <a href="insertMember.jsp">회원 가입하기</a> </h2>
</body>
</html>