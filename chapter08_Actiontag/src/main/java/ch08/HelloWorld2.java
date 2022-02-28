package ch08;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/helloWorld2")
public class HelloWorld2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  

	
	public void init(ServletConfig config) throws ServletException {
		System.out.println("init method");
	}

	
	public void destroy() {
		System.out.println("destory method");
	}

	
//	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		System.out.println("service method");
//	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doget method");
		
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("<head>");
		out.println("<title>Hello Wrold</title>");
		out.println("</head>");
		out.println("<body>");
		out.println("<h1>Hello Servlet</h1>");
		out.println("<div>한글을 적어봅시다...</div>");
		out.println("</body>");
		out.println("</html>");
		out.close();
	
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("dopost method");
	}

}
