package servletEx;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	System.out.println(id+","+pw);
	
	response.setContentType("text/html;charset=utf-8");
	PrintWriter out = response.getWriter();
	out.println("아이디="+id+"<br>");
	out.println("비밀번호="+pw+"<br>");
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	
	}

}
