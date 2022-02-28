<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %><!--하나에 다써도 상관없음 구분위해 따로 나눔.  -->

<%
String name = request.getParameter("name");
int age = Integer.parseInt(request.getParameter("age"));


if(age>=20){
	out.println("<b>"+name+"</b>님의 나이는 20세 이상입니다.");	
}else{
	out.println("<b>"+name+"</b>님은 미성년입니다.");	
}
%>
