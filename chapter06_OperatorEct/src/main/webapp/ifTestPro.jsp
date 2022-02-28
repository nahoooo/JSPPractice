<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>입력받은 숫자 비교</title>
</head>
<body>
<h2>입력받은 숫자가 10보다 작거나 같은지 비교</h2>
<%
String strNumber = request.getParameter("number");
/*request. 이니까 객체라는 뜻. 참조변수를 strNumber로 만들어쥼,. 클라이언트에서 서버로 전달하는 기능을 묶은 객체임.
get은 가지고 오겠다라는 뜻. 파라미터는 매개변수. 데이터 타입이 문자열이니까 String타입으로 변수생성해서 저장함. 
*/

int number = Integer.parseInt(strNumber);
/* 문자열로 가져온 데이터를 int로 형변환. int number = Integer.parseInt( request.getParameter("Number")); 한 줄로도 가능. */

if(number <= 10){
%>	
	입력받은 숫자는 <%=number%>입니다.
<%} %>




</body>
</html>