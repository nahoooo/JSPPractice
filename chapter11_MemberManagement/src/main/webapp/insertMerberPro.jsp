<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");


String id = request.getParameter("id");
String passwd = request.getParameter("passwd");
String name = request.getParameter("name");
String email = request.getParameter("email");
Date joindate = Date.valueOf(request.getParameter("joindate"));


//여기서는 오류처리를 따로 안해도 됨. 에러가 발생했을때 웹은 알아서 에러 페이지를 표시하기 때문에.
Connection conn = null;
PreparedStatement stmt = null;

try {
	Class.forName("oracle.jdbc.driver.OracleDriver");

	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	conn = DriverManager.getConnection(url, "scott", "tiger");

	String sql = "insert into member(id,passwd,name,email,joindate) values(?,?,?,?,?)";

	// 물음표의 값을 순차적으로 세팅.
	stmt = conn.prepareStatement(sql);

	stmt.setString(1, id);
	stmt.setString(2, passwd);
	stmt.setString(3, name);
	stmt.setString(4, email);
	stmt.setDate(5, joindate);

	// Query실행. 레코드 삽입, 업데이트, 삭제에 사용되는 메소드는 executeUpdate()메소드를 사용한다. (DML은
	// executeUpdate())
	// executeUpdate()메소드의 리턴타입은 int(실행개수 : 입력이 되거나 삭제가 되거나 수정이 된 레코드의 개수.) 레코드는 행.
	// 필드는 열.
	// select를 사용 할때는 executeQuery메소드를 사용한다.

	int cnt = stmt.executeUpdate();

	// 결과에 대한 처리
	System.out.println(cnt + "개가 입력되었습니다.");
	
	response.sendRedirect("MemberList.jsp");
	
} catch (ClassNotFoundException e) {
	e.printStackTrace();
} catch (SQLException e) {
	e.printStackTrace();
} finally {

	try {
		stmt.close();
	} catch (SQLException e) {
		e.printStackTrace();
	}

	try {
		conn.close();
	} catch (SQLException e) {
		e.printStackTrace();
	}

}
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