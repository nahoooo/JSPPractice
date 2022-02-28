<%@page import="com.company.vo.MemberVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
ArrayList<MemberVO> memList;
memList = (ArrayList<MemberVO>) request.getAttribute("memList");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>select</title>
</head>
<body>
	<table border="1">
		<tr>
			<th>id</th>
			<th>pw</th>
			<th>수정/삭제</th>
		</tr>
		<%
		for (int i = 0; i < memList.size(); i++) {
			MemberVO vo = memList.get(i);
		%>
		<tr>
			<td><%=vo.getId()%></td>
			<td><%=vo.getPw()%></td>
			<td colspan="2"><a href="Update?id=<%=vo.getId()%>">수정</a>
			<a href="">삭제</a>
			</td>
		</tr>
		<%
		}
		%>
	</table>
	
	<a href="insert.jsp">회원가입</a>
</body>
</html>