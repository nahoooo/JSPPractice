package com.company.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class UpdateEmp {

	public static void main(String[] args) {
		Connection conn = null;
		PreparedStatement stmt = null;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");

			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			conn = DriverManager.getConnection(url, "scott", "tiger");

			String sql = "update employee set ename=?,sal=? where empno=?";
			
			stmt=conn.prepareStatement(sql);
			
			//값을 순차적으로 입력.
			stmt.setString(1, "KIM");
			stmt.setInt(2, 2000);
			stmt.setInt(3, 7999);
			
			// Query실행. 레코드 삽입, 업데이트, 삭제에 사용되는 메소드는 executeUpdate()메소드를 사용한다. (DML은
			// executeUpdate())
			// executeUpdate()메소드의 리턴타입은 int(실행개수 : 입력이 되거나 삭제가 되거나 수정이 된 레코드의 개수.) 레코드는 행.
			// 필드는 열.
			// select를 사용 할때는 executeQuery메소드를 사용한다.

			int cnt = stmt.executeUpdate();

			// 결과에 대한 처리
			System.out.println(cnt + "개가 수정되었습니다.");

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
