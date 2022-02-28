<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="testBean" class="com.company.bean.TestBean">
<jsp:setProperty name="testBean" property="*"/>
</jsp:useBean>

<h2>자바빈을 사용하는 JSP페이지</h2>
입력된 이름은 <jsp:getProperty name="testBean" property="name"/>입니다.
입력된 전화번호는 <jsp:getProperty name="testBean" property="phone"/>입니다.
입력된 주소는 <jsp:getProperty name="testBean" property="addr"/>입니다.

