
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<%
request.setCharacterEncoding("utf-8");

response.setContentType("text/html;charset=utf-8");

String id = request.getParameter("id");
String passwd = request.getParameter("passwd");

 

Connection conn = null;
PreparedStatement stmt = null;
ResultSet rs = null;
try {
   Class.forName("oracle.jdbc.driver.OracleDriver");
   String url = "jdbc:oracle:thin:@localhost:1521:xe";
   conn = DriverManager.getConnection(url, "scott", "tiger");

   String sql = "select * from users where id=? and password=?"; //id랑 pw랑 같은걸 찾겟다.
   stmt = conn.prepareStatement(sql);

   stmt.setString(1, id);
   stmt.setString(2, passwd);

   rs = stmt.executeQuery();
   System.out.println(" 입력 완료 ");

   if(rs.next()){ 
      //로그인이 성공한 경우 실행할 메서드, 
   System.out.println(id);   	
   System.out.println(passwd);   
   System.out.println(" 로그인 성공 ");
   session.setAttribute("name",rs.getString("name") );   //세션저장시키고! 이름필드에 이름데이터 가져온다.
      
   response.sendRedirect("../index.jsp");
      
   
   }else{            //로그인이 실패했을때(유효성검사 안맞았을때)
   System.out.println(" 로그인 실패 ");
   out.println("<script> alert('아이디와 비밀번호가 일치 하지 않습니다');location.href='login.jsp'; </script>");
   //실패했다는 메세지를 띄우기위해, response 인코딩적어주고, 스크립트코드 삽입>alert
   }
   
   
   
} catch (ClassNotFoundException e) {   
   e.printStackTrace();
} catch (SQLException e) {
   e.printStackTrace();
} finally {
   if (rs != null) {
      try {
   rs.close();
      } catch (SQLException e) {
   e.printStackTrace();
      }
   }
   if (stmt != null) {
      try {
   stmt.close();
      } catch (SQLException e) {
   e.printStackTrace();
      }
   }
   if (conn != null) {
      try {
   conn.close();
      } catch (SQLException e) {
   e.printStackTrace();
      }
   }
}
%>
