package com.company.biz;

import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.company.vo.MemberVO;


@WebServlet("/Select")
public class Select extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
   

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("/Select");
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3307/db";
			conn = DriverManager.getConnection(url, "root", "1234");
			
			String sql = "select * from member";
			stmt = conn.prepareStatement(sql);
			
			rs=stmt.executeQuery();
			
			ArrayList<MemberVO> memList = new ArrayList<MemberVO>();
			while(rs.next()) {
			MemberVO vo =new MemberVO();			
			vo.setId(rs.getString("id"));
			vo.setPw(rs.getString("pw"));			
			memList.add(vo);
			}
			
			request.setAttribute("memList", memList);
			
			RequestDispatcher dispatcher =request.getRequestDispatcher("select.jsp");
			dispatcher.forward(request, response);
			
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}finally {
			if(rs!=null) {
				try {
					rs.close();
				} catch (SQLException e) {					
					e.printStackTrace();
				}
			}
			if(stmt!=null) {
				try {
					stmt.close();
				} catch (SQLException e) {					
					e.printStackTrace();
				}
			}
			if(conn!=null) {
				try {
					conn.close();
				} catch (SQLException e) {					
					e.printStackTrace();
				}
			}
		}
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
	}

}
