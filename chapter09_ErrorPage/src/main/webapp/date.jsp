<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page errorPage="error.jsp"%>
<%
Date date = new Date();
SimpleDateFormat simpleDate = new SimpleDateFormat("yyyy-MM-dd");
String strdate = simpleDate.format(date);


%>
보통의 JSP페이지의 형태입니다.<br>

<%--고의로 에러를 발생시킨 라인으로 strdate변수명을 sardat으로 틀리게 입력.--%>
오늘 날짜는 <%=strdate%>입니다.