<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 양식 </title>


</head>
<body>
<form action="result.jsp" method="post">

<table>
<tr>
<th colspan="2">회원가입 양식</th>
</tr>
<tr>
	<td>아이디 : </td> 
	<td><input type="text" name="id"> </td>
</tr>
<tr>
	<td>암호 : </td> 
	<td><input type="password" name="pw"> </td>
</tr>
<tr>
	<td>이름 : </td> 
	<td><input type="text" name="name"> </td>
</tr>
<tr>
	<td>주소 : </td> 
	<td><input type="text" name="addr"> </td>
</tr>
<tr>
	<td>이메일 : </td> 
	<td><input type="text" name="mail"> </td>
</tr>
<tr>
	<td>등록일자 : </td> 
	<td><input type="text" name="date"> </td>
</tr>
<tr><td colspan="2"><input type="submit" value="회원가입" > <input type ="reset" value="취소"></td></tr>
</table>



</form>
</body>
</html>