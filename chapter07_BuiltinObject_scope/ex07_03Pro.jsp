<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>입력한 정보</title>
</head>
<body>
	<h2>입력한 정보</h2>
	<%
	String hak = request.getParameter("hak");
	String name = request.getParameter("name");
	String major = request.getParameter("major");
	String[] favorite = request.getParameterValues("favorite");
	%>

	학번 :
	<%=hak%><br>
	이름 :
	<%=name%><br>
	전공 :
	<%=major%><br>
	관심 분야:
	<%
	for (String f : favorite) {
		out.println(f + " ");
	}
	%>
</body>
</html>