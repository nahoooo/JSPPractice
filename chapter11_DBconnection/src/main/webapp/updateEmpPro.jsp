<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    
    request.setCharacterEncoding("utf-8");
 	
    int empno = Integer.parseInt(request.getParameter("empno"));
    String ename = request.getParameter("ename");
    String job = request.getParameter("job");
    Date hiredate = Date.valueOf(request.getParameter("hiredate"));
    int sal = Integer.parseInt(request.getParameter("sal"));
    
	Connection conn = null;
	PreparedStatement stmt = null;
	
		Class.forName("oracle.jdbc.driver.OracleDriver");

		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		conn = DriverManager.getConnection(url, "scott", "tiger");

		String sql = "update employee set ename=?,job=?,hiredate=?,sal=? where empno=?";
		
		stmt=conn.prepareStatement(sql);
		
		//값을 순차적으로 입력.
		stmt.setString(1, ename);
	stmt.setString(2,job);
	stmt.setDate(3, hiredate);
	stmt.setInt(4, sal);
	stmt.setInt(5, empno);
				

		int cnt = stmt.executeUpdate();

		// 결과에 대한 처리
		System.out.println(cnt + "개가 수정되었습니다.");
		
		response.sendRedirect("GetEmpList.jsp");

		stmt.close();
		conn.close();
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>updateEmpPro.jsp</title>
</head>
<body>

</body>
</html>