package com.tools.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONException;
import org.json.JSONObject;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

		/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		//Get the user name and password fom the servlet request
		String userName = request.getParameter("userName");
		String password = request.getParameter("password");
		System.out.println(userName);
		
		//Validate the user name and password against the DB
		
		//Construct the json object
		JSONObject loginResoponse = new JSONObject();
		
		try {
			if("arjunmi".equals(userName))
			{
				loginResoponse.put("Valid", "true");
			}
			else
			{
				loginResoponse.put("Valid", "false");
			}
			loginResoponse.put("Role", "Admin");
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		response.setContentType("application/json");
		response.getWriter().write(loginResoponse.toString());
		
	}

}
