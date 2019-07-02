package com.nt;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(urlPatterns = "/login.do")
public class LoginServlet extends HttpServlet {
	
	private UserValidationService service = new UserValidationService();
	
	protected void doGet(HttpServletRequest req, 
			HttpServletResponse resp) throws ServletException, IOException {
		

		req.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(req,resp);
	}

	protected void doPost(HttpServletRequest req, 
			HttpServletResponse resp) throws ServletException, IOException {
		String name = req.getParameter("name");
		String password = req.getParameter("password");
		
		boolean isUserValid = service.isUserValid(name, password);
		if (isUserValid) {
			req.setAttribute("name", name);
			req.setAttribute("password", password);
			req.getRequestDispatcher("/WEB-INF/views/welcome.jsp").forward(req,resp);
		} else {
			req.setAttribute("errorMsg", "Invalid Credentials");
			req.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(req,resp);
		}
	}
}
