<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%

String name = request.getParameter("name");
String age = request.getParameter("age");
%>    
    
<hr>
<h1>여기는 포함된 페이지 입니다.</h1>
이름 = <%=name%><br>
나이 = <%=age%><br>
<hr>