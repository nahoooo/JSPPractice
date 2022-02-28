<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
    request.setCharacterEncoding("utf-8");
	response.setContentType("text/html;charset=utf-8");
	
	
	String id=request.getParameter("id");
	String passwd=request.getParameter("passwd");
	
	Connection conn=null;
	PreparedStatement stmt=null;
	ResultSet rs=null;
	
	try{
	Class.forName("oracle.jdbc.OracleDriver");
	String url="jdbc:oracle:thin:@//localhost:1521/xe";
    conn=DriverManager.getConnection(url, "scott", "tiger");
    String sql="select * from member where id=? and passwd=?";
    stmt=conn.prepareStatement(sql);
    
    stmt.setString(1, id);
    stmt.setString(2, passwd);
    
    rs=stmt.executeQuery();
    
    if(rs.next()){  //로그인 성공   	
    	String na=rs.getString("name");
    	session.setAttribute("name", na);
    	
    	response.sendRedirect("MemberList.jsp");
    	
    	String valeu = (String)session.getAttribute("name");
    	System.out.println(valeu);
  
   
    }else{//로그인 실패
    	out.println("<script>alert('ID와 패스워드 일치하지 않습니다.');location.href='login.jsp';</script>");
    // location.href='이동할 페이지' - 자바스크립트로 특정 페이지 이동...
    }
    
	}catch(ClassNotFoundException e){
		e.printStackTrace();
	}finally{
		if(rs!=null){
			try{
			rs.close();
			}catch(SQLException e){
				e.printStackTrace();
			}
		}
		if(stmt!=null){
			try{
			stmt.close();
			}catch(SQLException e){
				e.printStackTrace();
			}
		}
		if(conn!=null){
			try{
			conn.close();
			}catch(SQLException e){
				e.printStackTrace();
			}
		}
	}
%>
