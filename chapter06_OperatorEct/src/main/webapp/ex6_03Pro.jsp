<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>

<% String id = request.getParameter("id");
	 String pw = request.getParameter("passwd");
	 
	 if(id.equals("abcd")){
		 if(pw.equals("z1234")){
			 out.println("로그인에 성공하셨습니다.");
		 }else{
	 		out.println("로그인에 실패하셨습니다.");
		 }
	 }else{
		 out.println("로그인에 실패하셨습니다.");
	 }
%>
