<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<h2>JDBC드라이버 테스트</h2>

 <%
 	response.setContentType("text/html;charset=utf-8");
    Connection conn=null;//닫기 위해 위에 만들어놓음.
 	PreparedStatement stmt=null; //닫기 위해 위에 만들어놓음.
 	ResultSet rs = null;//닫기 위해 위에 만들어놓음. 레코드의 수가 정해져있지 않음.  
    try{
    // 1. Class Load. DB마다 고유의 이름을 가지고 있음. class를 로드하는 작업. 정해져있는걸 그냥 똑같이 적으면 됨.
    Class.forName("oracle.jdbc.driver.OracleDriver");
    System.out.println("로드 완료");
    
    // 2. 연결을 맺고 연결 객체를 받아온다. cnonection 객체를 생성하는 단계
    String url="jdbc:oracle:thin:@localhost:1521:xe";
    conn=DriverManager.getConnection(url,"scott","tiger");//연결 객체  연결한 것을 받아오는 놈을 생성해야함. 그게 conn
    System.out.println("연결 완료");
    
    // 3. 연결 객체를 대상으로 실행할 Query문을 준비한다. Query문장 뒤에 ;을 붙이면 에러 발생. (String sql="select * from member";) 이렇게 사용.
    //Query에 관련된 명령들을 모아 놓은 객체는 createStatment,PrepareStatement가 사용되나 
    //최근엔 PrepareStatement만 사용됨.
    
    String sql="select * from member";
    stmt = conn.prepareStatement(sql);
    
    // 4.Query 실행 select 문은 => executeQuery를 사용. 리턴타입이 ResultSet
 	rs = stmt.executeQuery(sql);
    System.out.println("쿼리 실행 완료");
    
    // 5. 결과에 대한 처리
    out.println("<table border='1'>");
    while(rs.next()){
    	String id =	rs.getString("id");
    	String passwd =	rs.getString("passwd");
    	out.println("<tr><td>");
    	out.println(id+"</td><td>"+passwd+"</td><br>");
    	out.println("</td></tr>");
    	System.out.println(id+"\t"+passwd);
    }
    out.println("</table>");
    }catch(ClassNotFoundException e){
       e.printStackTrace();
    }catch(SQLException e){
       e.printStackTrace();
    }finally{
       // 6.사용했던 자원을 닫아야 한다. ResultSet, PrepareStatement, Connection
       // 닫는 것은 나중에 사용한 자원부터 닫는다.
    	 if(rs!=null){//so) rs를 먼저 닫아준다.
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