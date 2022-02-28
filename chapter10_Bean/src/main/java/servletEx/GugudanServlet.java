package servletEx;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/gugudanServlet")
public class GugudanServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
   

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		/* String num = request.getParameter("num"); */
		
	int num=Integer.parseInt(request.getParameter("num"));
	String result ="";		
	
	
	  for(int i=1;i<=9;i++){
	  result+=("<tr><td width='300'  align='center'>"+num+" * "
	  +i+"</td><td width='300'  align='center'>" +num*i+"</td></tr>"); }
	 
	
		request.setAttribute("num", num);
		request.setAttribute("result", result);
		
			
		RequestDispatcher dispatcher = request.getRequestDispatcher("result2.jsp");
		dispatcher.forward(request, response);
		
		
	}

}
