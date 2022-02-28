<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@include file="color.jspf"%>
	<table width="407" border="0" cellspacing="0" cellpadding="0"
		bgcolor="<%=bodyback_c%>" align="center">
		<tr>
			<td align="right">
			<a href="List.jsp?Page=1">
			<img src=images/list.gif alt='리스트' border=0></a>
			</td>
		</tr>
		<tr>
			<td width="70" bgcolor="<%=title_c%>" align="center">이름</td>
			<td width="337" bgcolor="<%=value_c%>" align="center">
			<input type="text" size="10" maxlength="6" name="writer"></td>
		</tr>




	</table>
</body>
</html>