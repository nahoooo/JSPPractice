package com.company.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class GetEmp {

	public static void main(String[] args) {
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		try {

			Class.forName("oracle.jdbc.driver.OracleDriver");

			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			conn = DriverManager.getConnection(url, "scott", "tiger");
			String sql = "select * from emp where job =? and empno=?";//prepareStatement를 쓰는 이유.
			stmt = conn.prepareStatement(sql);

			//Query구문의 변수 값 등을 세팅. ?를 순서대로 값 세팅을 한다. 
			//시작 번호는 1부터.
			stmt.setString(1, "SALESMAN");//prepareStatement를 쓰는 이유.
			stmt.setInt(2, 7654);//prepareStatement를 쓰는 이유.
			
			rs = stmt.executeQuery();
			System.out.println("empno"+"\t"+"ename"+"\t"+"job");
			while (rs.next()) {
				int empno = rs.getInt("empno");
				String ename = rs.getString("ename");
				String job = rs.getString("job");
//				int mgr = rs.getInt("mgr");
//				Date hiredate = rs.getDate("hiredate");
//				int sal = rs.getInt("sal");
//				int comm = rs.getInt("comm");
//				int deptno = rs.getInt("deptno");
				
				System.out.println(empno+"\t"+ename+"\t"+job);
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

	}

}
