package servletEx;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



public class MemReg extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	request.setCharacterEncoding("UTF-8");	
		
	String name =request.getParameter("name");
	String addr =request.getParameter("addr");
	String tel =request.getParameter("tel");
	String[] hobby =request.getParameterValues("hobby");
	
	response.setContentType("text/html;charset=utf-8");
	PrintWriter out =response.getWriter();
	
	out.println("회원명 : "+name+"<br>");
	out.println("주소 : "+addr+"<br>");
	out.println("전화번호 : "+tel+"<br>");
	out.println("취미 : ");
	for(String h : hobby) {
		out.println(h+" ");
	}
	}

}
