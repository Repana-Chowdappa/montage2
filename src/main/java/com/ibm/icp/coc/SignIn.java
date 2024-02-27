package com.ibm.icp.coc;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/auth")
public class SignIn extends HttpServlet {
	private static final long serialVersionUID = 6091467162968246746L;


	/**
     * @see HttpServlet#HttpServlet()
     */
    public SignIn() {
        super();
    }


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("inputId");
		//String pwd = request.getParameter("inputPassword");

		System.out.println("Signing in " + id );

		if( UserRegistry.hasUser(id) ) {
			
			User user = UserRegistry.getUser(id);
			request.setAttribute("user", user);
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("application.jsp");
            dispatcher.forward(request, response);
		} else {
			request.setAttribute("message", "Invalid or unknown user credentials.");
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("signin.jsp");
            dispatcher.forward(request, response);
		}
		
		
	}

}
