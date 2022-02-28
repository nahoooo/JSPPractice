<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>application 내장객체</title>
</head>
<body>
<h2>application 내장객체</h2>
<%
String info = application.getServerInfo();/* 웹 컨테이너의 이름와 버전.  */
String path = application.getRealPath("/");/*  실제 작업폴더의 루트디렉토리부터의 위치 */
application.log("로그기록 : ");

%>

웹 컨테이너의 이름과 버전 : <%=info %><p>
웹 애플리케이션 폴더의 로컬 시스템 경로 : <%=path %>
</body>
</html>