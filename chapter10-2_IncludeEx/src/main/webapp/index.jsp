<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
   <%
   String filePath = request.getParameter("filePath");     
   
   if(filePath==null){
	   filePath="a";
   }
   %> 
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Include Test</title>
</head>
<body>
<jsp:include page="header.jsp"/>

<jsp:include page='<%=filePath+".jsp"%>'/>

<jsp:include page="footer.jsp"/>
</body>
</html>