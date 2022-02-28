<%@page import="com.company.vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
MemberVO vo = new MemberVO();
vo = (MemberVO)request.getAttribute("vo");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="UpdatePro" method="post">
	<table>
<tr>
<td>id</td>
<td> <input type="text" name="id" value="<%=vo.getId()%>"></td>
</tr>
<tr>
<td>pw</td>
<td> <input type="text" name="pw" value="<%=vo.getPw()%>"></td>
</tr>
<tr>
<td> <input type="submit" value="등록"> </td>
<td> <input type="reset" name="취소"></td>
</tr>
</table>
	</form>
</body>
</html>