package servlet;

import java.io.IOException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class GuessCompareServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws IOException {
		int count = (Integer)request.getSession().getAttribute("count");
		int random = (Integer)request.getSession().getAttribute("random");
		String guess = request.getParameter("guess");
		
		String result = Compare.compare(guess, random);
		
		count++;
		request.getSession().setAttribute("count", count);
		
		response.sendRedirect(result);	//转向其它页面
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws IOException {
		doPost(request, response);
	}
}
