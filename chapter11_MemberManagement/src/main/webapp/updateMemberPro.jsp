<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
     <%
    
   		 request.setCharacterEncoding("utf-8"); //폼에서 값을 받아올떄 한글이 있을경우 넣어줌 
   		 
 	
        String id = request.getParameter("id");
        String passwd = request.getParameter("passwd");
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        Date joindate = Date.valueOf(request.getParameter("joindate"));
        
		
 
    
	Connection conn = null;
	PreparedStatement stmt = null;
	
		Class.forName("oracle.jdbc.driver.OracleDriver");

		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		conn = DriverManager.getConnection(url, "scott", "tiger");

		String sql = "update member set passwd=?,name=?,email=? where id=?";
		
		stmt=conn.prepareStatement(sql);
		
		//값을 순차적으로 입력.
		stmt.setString(1, passwd);
		stmt.setString(2,name);
		stmt.setString(3, email);
		stmt.setString(4, id);
	
				

		int cnt = stmt.executeUpdate();

		// 결과에 대한 처리
		System.out.println(cnt + "개가 수정되었습니다.");
		
		response.sendRedirect("MemberList.jsp");

		stmt.close();
		conn.close();
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>