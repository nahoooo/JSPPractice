package servletEx;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ServletLifeCycle extends HttpServlet {

	private static final long serialVersionUID = 3734939260735921296L;
	
	public ServletLifeCycle() {
		System.out.println("Constructor");
	}
	
	
	@Override  //init메소드 오버라이딩. 
	public void init(ServletConfig config) throws ServletException {
		super.init(config);
		System.out.println("init 호출");
	}
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("service 호출");
		super.service(req, resp);		
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("doGet 호출");
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("doPost 호출");
	}
	
	@Override
	public void destroy() {
		System.out.println("destroy 호출");
		super.destroy();
	}
	
	
}
