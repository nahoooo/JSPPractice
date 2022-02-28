<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Forwarding Page</title>
</head>
<body>
포워딩된 페이지 입니다.

이름 : <%=request.getAttribute("name") %><br>
나이 : <%=request.getAttribute("age") %><br>
</body>
</html>