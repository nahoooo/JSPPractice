<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>액션태그를 활용하여 JSP페이지를 forwarding하는 예제</title>
</head>
<body>
<h1>액션태그를 활용하여 JSP페이지를 forwarding하는 예제</h1>
<jsp:forward page="forwardToEx.jsp">

<jsp:param value="홍길동" name="name"/>
<jsp:param value="25" name="age"/>

</jsp:forward>
</body>
</html>