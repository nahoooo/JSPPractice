<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <% request.setCharacterEncoding("utf-8"); %>
   
   <%
   
   String name = request.getParameter("name");
   String team1 = request.getParameter("team1");
   String[] team2 = request.getParameterValues("team2");
   
   
   out.println("이름은 "+name+"<br>");
   out.println("응원하는 야구팀은 "+team1+"<br>");
   
   out.print("4강 진출 예상 야구팀은");
   for(String t : team2){
	  
	   out.print(" "+t+" ");
   }
   
   
   
   %>
