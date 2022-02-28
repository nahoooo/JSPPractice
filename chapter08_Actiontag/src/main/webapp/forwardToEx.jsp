<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<hr>
<h1>포워딩된 페이지 입니다.지금 보이는 페이지는 포워딩되었습니다.</h1>

<%String name = request.getParameter("name");
	String age = request.getParameter("age");
%>

이름 : <%=name %><br>
나이 : <%=age %>


<hr>