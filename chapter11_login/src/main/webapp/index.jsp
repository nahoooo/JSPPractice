<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String session_name = (String)session.getAttribute("name");
if(session_name==null){
	response.sendRedirect("./login/login.jsp");
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index</title>
</head>
<body>
<%=session_name %>님 환영합니다. <a href="./login/logout.jsp">로그아웃</a>
</body>
</html>