package com.ibm.icp.coc;

import java.io.BufferedReader;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

@WebServlet("/ProcessLoanRequest")
public class ProcessLoanRequest extends HttpServlet {

	private static final long serialVersionUID = 1584840308373391879L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ProcessLoanRequest() {
		super();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		StringBuffer jb = new StringBuffer();
		String line = null;
		try {
			BufferedReader reader = request.getReader();
			while ((line = reader.readLine()) != null)
				jb.append(line);
		} catch (Exception e) {
			e.printStackTrace();
		}

		System.out.println(jb.toString());

		try {
			JSONObject jObj = new JSONObject(jb.toString());
			System.out.println( jObj.toString(4) );
			String id = (String) jObj.get("id");
			System.out.println("ID: " + id);
			User user = UserRegistry.getUser(id);
			System.out.println( user.toString() );

			Thread.sleep(3000);
			response.setStatus(200);

			if (user.getId().equals("bob")) {
				System.out.println("Another happy customer in " + user.getFullName() );
				response.getWriter().append("{\"url\": \"success.jsp?fname=" + user.getId() + "\"}");
			} else {
				System.out.println("Better luck next time " + user.getFullName() );
				response.getWriter().append("{\"url\": \"reject.jsp?fname=" + user.getId() + "\"}");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
