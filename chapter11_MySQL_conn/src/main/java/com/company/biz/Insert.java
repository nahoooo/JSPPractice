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

@WebServlet("/Insert")
public class Insert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");

		System.out.println("/Insert");
		
		Connection conn = null;
		PreparedStatement stmt = null;

		String id = request.getParameter("id");
		String pw = request.getParameter("pw");

		try {
			
			conn = JDBCConnection.getConnection();
						
			String sql = "insert into member values(?,?)";
			stmt = conn.prepareStatement(sql);

			stmt.setString(1, id);
			stmt.setString(2, pw);

			int cnt = stmt.executeUpdate();

			System.out.println(cnt + "개 등록완료");
			
			response.sendRedirect("Select");

		} catch (ClassNotFoundException e) {

			e.printStackTrace();
		} catch (SQLException e) {

			e.printStackTrace();
		} finally {

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

	}

}
