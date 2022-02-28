<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>




<%
String names[] = { "프로토콜 이름", "서버이름", "Method방식", "콘텍스트 경로", "URI", "접속한 클라이언트의 IP" };
String values[] = { request.getProtocol(), request.getServerName(), request.getMethod(), request.getContextPath(),
		request.getRequestURI(), request.getRemoteAddr() };

Enumeration<String> en = request.getHeaderNames();
String headerName = "";
String headerValue = "";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내장객체 예제</title>
</head>
<body>
	<h2>웹 브라우저와 웹 서버 정보 표시</h2>

	<%
	for (int i = 0; i < names.length; i++) {
		out.println(names[i] + ":" + values[i] + "<br>");
	}
	%>

	<h2>헤더의 정보 표시</h2>

	<%
	while (en.hasMoreElements()) {//읽을게 있으면

		headerName = en.nextElement();//읽은걸 가져와서 네임에 넣는다.
		headerValue = request.getHeader(headerName);// 그 헤더이름에 해당하는 헤더값을 벨류에 저장. 
		out.println(headerName + ":" + headerValue + "<br>");//하나씩 출력.

	}
	%>


</body>
</html>