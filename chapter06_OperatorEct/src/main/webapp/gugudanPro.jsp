<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>




<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구구단</title>
</head>
<body>
<h2>구구단</h2>
<%


String strNum = request.getParameter("num");
int num = Integer.parseInt(strNum);

out.println("<b>"+num+"단</b><br>");

for(int i= 1 ; i<=9;i++){
	
	out.println(num+"*"+i+"="+num*i+"<br>");
}
%>

</body>
</html>