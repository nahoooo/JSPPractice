package com.company.biz;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.company.common.JDBCConnection;
import com.company.vo.MemberVO;

@WebServlet("/Update")
public class Update extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	String id = request.getParameter("id");
	
	response.setCharacterEncoding("utf-8");
	
	Connection conn = null;
	PreparedStatement stmt = null;
	ResultSet rs = null;
	
	try {
		conn=JDBCConnection.getConnection();
		String sql = "select * from member where id=?";
		stmt=conn.prepareStatement(sql);
		
		stmt.setString(1, id);
		
		rs =	stmt.executeQuery();
		
		MemberVO vo = new MemberVO();
		if(rs.next()) {
			vo.setId(rs.getString("id"));
			vo.setPw(rs.getString("pw"));
		}
		request.setAttribute("vo", vo);
		
	RequestDispatcher dispatcher	=request.getRequestDispatcher("updatelist.jsp");
	dispatcher.forward(request, response);	
	} catch (ClassNotFoundException e) {
		
		e.printStackTrace();
	} catch (SQLException e) {
	
		e.printStackTrace();
	}
		
	}



}
