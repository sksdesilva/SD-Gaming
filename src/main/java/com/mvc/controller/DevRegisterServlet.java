package com.mvc.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mvc.bean.RegisterDeveloper;
import com.mvc.dao.RegisterDao;

public class DevRegisterServlet extends HttpServlet{
    public DevRegisterServlet() {
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String fullname = request.getParameter("Dfname");
		String username = request.getParameter("Duname");
		String email = request.getParameter("Demail");
		String password = request.getParameter("Dpassword");
		
		
		RegisterDeveloper rd = new RegisterDeveloper(fullname,username,email,password);
		
		
		
		RegisterDao rdo = new RegisterDao();
		
		
		String result = rdo.RegisterNewDeveloper(rd);
		
		if(result == "Sucessfull") {
			request.getRequestDispatcher("/Home.jsp").forward(request, response);
		}
		else {
			request.setAttribute("error", result);
			request.getRequestDispatcher("/index.jsp");
		}
		
		
		
		
		
	}

}
