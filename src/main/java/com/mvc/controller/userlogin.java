package com.mvc.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mvc.bean.RegisterBean;
import com.mvc.dao.RegisterDao;

/**
 * Servlet implementation class userlogin
 */
@WebServlet("/userlogin")
public class userlogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   


	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		boolean validateVar;
		validateVar= RegisterDao.validate(username, password);
		
		if(validateVar==true) {
			
			List<RegisterBean> userDetails = RegisterDao.getUserDetails(username);
			request.setAttribute("userDetails", userDetails);
			
			RequestDispatcher disp = request.getRequestDispatcher("userAccount.jsp");
			
			disp.forward(request,response);
		}
		else {
			
			request.setAttribute("error","Invalid Username or Password");
			RequestDispatcher disp = request.getRequestDispatcher("uselogin.jsp");
			disp.include(request,response);
		}
		
		
		
		
	}

}
