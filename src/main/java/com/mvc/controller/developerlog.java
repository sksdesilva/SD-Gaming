package com.mvc.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mvc.bean.RegisterDeveloper;
import com.mvc.dao.RegisterDao;



public class developerlog extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public developerlog() { 
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("devname");
		String password = request.getParameter("devpp");
		
		RegisterDeveloper RD = new RegisterDeveloper();
		
		RD.setDevEmail(name);
		RD.setPassword(password);
		
		RegisterDao Da = new RegisterDao();
		
		boolean result = Da.developerverification(RD);
		
		if(result == true) {
			request.getRequestDispatcher("/Home.jsp").forward(request,response);
		}else {
				request.getRequestDispatcher("/devRegister.jsp").forward(request, response);
				request.setAttribute("error", result);
				
			}
			
			
		}
		
		
		
		
		
		
	

}
