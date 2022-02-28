<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입</title>
</head>
<body>
	<h1>회원 가입</h1>
	<form action="memReg" method="post">
	회원명 : <input type="text" name="name"><br>
	주소 : <input type="text" name="addr"><br>
	전화번호 : <input type="text" name="tel"><br>
	취미 : <br> 
	스포츠 <input type="checkbox" name="hobby" value="스포츠"><br>
	영화감상 <input type="checkbox" name="hobby" value="영화감상"><br>
	여행 <input type="checkbox" name="hobby" value="여행"><br>
	
	
	
	<input type="submit" value="회원가입">
	
	
	
	</form>
</body>
</html>