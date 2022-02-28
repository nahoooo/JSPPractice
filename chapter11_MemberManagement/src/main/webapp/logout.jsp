<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
session.invalidate();//현재 사용중인 세션을 모두 삭제.
response.sendRedirect("login.jsp");
%>