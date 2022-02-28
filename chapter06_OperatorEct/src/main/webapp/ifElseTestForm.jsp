<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이름과 나이를 입력하는 폼</title>
</head>
<body>
<h2>이름과 나이를 입력하세요.</h2>
<form action="ifElseTestPro.jsp" method="post">
<!--서버 전송방식   get은 주소 표시줄에 값이 노출됨
post는 따로 값을 포장을 해서 데이터를 전달. 바디라는 곳에 포장을 시켜 전달. 대용량 전달 가능.

헤더- 설정등.
바디- 실제 전달될 내용
  -->
이름 : <input type = "text" name = "name"> <br>
나이 : <input type = "text" name = "age"> <br>

<input type = "submit" value = "입력완료">
</form>
</body>
</html>