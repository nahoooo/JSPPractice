<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8");%>

<jsp:useBean id="exBean" class="com.company.bean.ExBean">
<jsp:setProperty name="exBean" property="*"/>
</jsp:useBean>

<h2>입력한 정보표시</h2>
아이디 : <jsp:getProperty property="id" name="exBean"/><br>
패스워드 : <jsp:getProperty property="passwd" name="exBean"/><br>
종아하는 숫자 : <jsp:getProperty property="number" name="exBean"/><br>