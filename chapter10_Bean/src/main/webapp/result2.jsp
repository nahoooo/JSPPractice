<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border="1">
<tr >
<th colspan="2" width='300'><%=request.getAttribute("num")%>단 출력(서블릿에서 받아온 결과입니다.)</th>
</tr>

<%=request.getAttribute("result")%>


</table>
</body>
</html>