<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정보를 입력</title>
</head>
<body>
	<h2>정보를 입력하세요</h2>

	<form action="ex07_03Pro.jsp" method="post">


		학번 : <input type="text" name="hak"> <br> 이름 : <input type="text" name="name"> <br> 전공 :
		<select name="major">
			<option value="0" selected>=선택하세요=</option>
			<option value="컴퓨터공학">컴퓨터공학</option>
			<option value="전자공학">전자공학</option>
			<option value="기계공학">기계공학</option>
		</select>
		<br> 관심분야 <input type="checkbox" name="favorite" value="sports"> 스포츠 <br> <input type="checkbox" name="favorite" value="IT"> IT <input type="checkbox" name="favorite" value="RE"> 교양 <input type="checkbox" name="favorite" value="EN"> 예능 <br> <input type="submit" value="입력완료">


	</form>
</body>
</html>