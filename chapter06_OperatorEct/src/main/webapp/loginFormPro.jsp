<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");

	out.println("<h1>" + id + "님 환영합니다.</h1>");
	out.println("<h1>" + passwd + "</h1>");
	%>


</body>



</html>