<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
 
String id = request.getParameter("id");

 Connection conn = null;
 PreparedStatement stmt = null;
 
 Class.forName("oracle.jdbc.driver.OracleDriver");

	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	conn = DriverManager.getConnection(url, "scott", "tiger");

	String sql = "delete from member where id=?";

	stmt = conn.prepareStatement(sql);
	// 물음표의 값을 순차적으로 세팅.
	stmt.setString(1, id);
	
	int cnt=stmt.executeUpdate();
	
	System.out.println(cnt+"개가 삭제되었습니다.");
	
	response.sendRedirect("MemberList.jsp");

	
 
 %>   
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>deleteEmp</title>
</head>
<body>

</body>
</html>