package com.company.biz;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.company.common.JDBCConnection;


@WebServlet("/UpdatePro")
public class UpdatePro extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		Connection conn = null;
		PreparedStatement stmt = null;
		
	String id =	request.getParameter("id");
	String pw =	request.getParameter("pw");
		
		try {
			conn=JDBCConnection.getConnection();
			String sql = "update member set pw=? where id=?";
			stmt = conn.prepareStatement(sql);
			
			stmt.setString(1, pw);
			stmt.setString(2, id);
			
			int cnt = stmt.executeUpdate();
			
			System.out.println(cnt+"개 레코드 수정");
			
			response.sendRedirect("Select");
			
		} catch (ClassNotFoundException e) {
						e.printStackTrace();
		} catch (SQLException e) {		
			e.printStackTrace();
		}
	}

}
