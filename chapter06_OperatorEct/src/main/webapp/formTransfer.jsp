<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>formTransfer 내용 받기</title>
</head>
<body>
	<%
	String name = request.getParameter("pName");
	String strAge = request.getParameter("age");
	int age = Integer.parseInt(strAge);
	%>

	<%
	if (age >= 20) {
		out.println(name + "님은 성인입니다.");
	} else {
		out.println(name + "님은 미성년입니다.");
	} 
	%>
	
	<!-- name을 가지고 데이터베이스에 연결한 후 데이터베이스에 name을 입력한다. -->


</body>
</html>