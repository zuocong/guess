package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class GuessInitialServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws IOException {
		int count = 0 ;
		int random = (int)(Math.random()*100)+1;
		String guess = request.getParameter("guess");
		String result = Compare.compare(guess, random);
		
		count++;
		request.getSession().setAttribute("count", count);
		request.getSession().setAttribute("random", random);
		
		try {
			request.getRequestDispatcher(result).forward(request, response);	//转向其它页面
		} catch (ServletException e) {
			e.printStackTrace();
		}	
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws IOException {
		doPost(request, response);
	}
}
