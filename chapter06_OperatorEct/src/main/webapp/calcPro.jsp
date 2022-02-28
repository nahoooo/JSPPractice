<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
%>
<%
int n1 = Integer.parseInt(request.getParameter("n1"));
int n2 = Integer.parseInt(request.getParameter("n2"));
String op = request.getParameter("op");
int result = 0;

switch (op) {

case "+":
	result = n1 + n2;
	break;
	
case "-":
	result = n1 - n2;
	break;
	
case "*":
	result = n1 * n2;
	break;
	
case "/":
	result = n1 / n2;
	break;
	
default:
	out.println("다시 입력해 주세요");
	break;

}

out.println("결과는 " + result + "입니다.");

%>
