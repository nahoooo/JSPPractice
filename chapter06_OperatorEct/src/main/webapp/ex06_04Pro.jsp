<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수행 결과</title>
</head>
<body>
<h1>입력한 숫자만큼 반복수행</h1>

<table border="1" width="500">
<tr><th>글번호</th><th>글제목</th><th>글내용</th></tr>

<%

String strNum = request.getParameter("num");
int num = Integer.parseInt(strNum);
int countn=num;
for(int i = 0; i<num;i++){//int =num; num>0;num--
	
	out.println("<tr><td>"+countn+"</td><td>제목 "+countn+"</td><td>내용 "+countn+"</td></tr>");
	countn--;
}

%>


</table>

</body>
</html>