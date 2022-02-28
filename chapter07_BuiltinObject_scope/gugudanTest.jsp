<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구구단 출력</title>
</head>
<body>
<%
int num = Integer.parseInt(request.getParameter("num")); 
%>
<table border="1">
<tr >
<th colspan="2" width='300'><%=num%>단 출력</th>
</tr>
<%
for(int i=1;i<=9;i++){
	out.println("<tr><td width='300'  align='center'>"+num+" * "+i+"</td><td width='300'  align='center'>"+num*i+"</td></tr>");
}
%>



</table>
</body>
</html>