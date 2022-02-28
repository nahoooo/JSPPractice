package com.company.jdbc;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class InsertEmp {

	public static void main(String[] args) {

		Connection conn = null;
		PreparedStatement stmt = null;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");

			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			conn = DriverManager.getConnection(url, "scott", "tiger");

			String sql = "insert into employee(empno,ename,job,mgr,hiredate,sal,comm,deptno) "
					+ "values(?,?,?,?,?,?,?,?)";
			// 물음표의 값을 순차적으로 세팅.
			stmt = conn.prepareStatement(sql);
			stmt.setInt(1, 7999);
			stmt.setString(2, "HONG");
			stmt.setString(3, "SALESMAN");
			stmt.setInt(4, 7698);
			stmt.setDate(5, Date.valueOf("2022-02-07"));// 날짜 데이터 String타입을 Date타입으로 변환하는 방법 주의.
			stmt.setInt(6, 3000);
			stmt.setInt(7, 200);
			stmt.setInt(8, 30);

			// Query실행. 레코드 삽입, 업데이트, 삭제에 사용되는 메소드는 executeUpdate()메소드를 사용한다. (DML은
			// executeUpdate())
			// executeUpdate()메소드의 리턴타입은 int(실행개수 : 입력이 되거나 삭제가 되거나 수정이 된 레코드의 개수.) 레코드는 행.
			// 필드는 열.
			// select를 사용 할때는 executeQuery메소드를 사용한다.

			int cnt = stmt.executeUpdate();

			// 결과에 대한 처리
			System.out.println(cnt + "개가 입력되었습니다.");
			
			
			

		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {

			try {
				stmt.close();
			} catch (SQLException e1) {

				e1.printStackTrace();
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
