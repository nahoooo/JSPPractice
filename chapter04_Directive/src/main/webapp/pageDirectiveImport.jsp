<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.Timestamp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>page 디렉티브 연습 -import속성</title>
<%--ㄴㄷㄹㅇㄹㄴㄷㄹ --%>
</head>
<body>
<h2>page디렉티브 연습-import속성</h2>
<%
Timestamp now = new Timestamp(System.currentTimeMillis());
SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
String strDate = format.format(now);
%>

오늘은 <%=strDate%>입니다.

</body>
</html>