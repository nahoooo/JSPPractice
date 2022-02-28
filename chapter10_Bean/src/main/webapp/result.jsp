<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>


<jsp:useBean id="formBean" class="com.company.bean.FormBean">
<jsp:setProperty name="formBean" property="*"/>
</jsp:useBean>
 

<table border="1">
<tr>
	<td>아이디</td> 
	<td><jsp:getProperty name="formBean" property="id"/></td>
	<td>암호</td> 
	<td><jsp:getProperty name="formBean" property="pw"/></td>
</tr>
<tr>
	<td>이름</td> 
	<td><jsp:getProperty name="formBean" property="name"/></td>
	<td>이메일</td> 
	<td><jsp:getProperty name="formBean" property="mail"/></td>	
</tr>
<tr>
	<td>주소</td> 
	<td colspan="3"><jsp:getProperty name="formBean" property="addr"/></td>
</tr>
</table>



