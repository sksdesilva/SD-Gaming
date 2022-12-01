package com.mvc.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mvc.bean.RegisterBean;
import com.mvc.dao.RegisterDao;

/**
 * Servlet implementation class deleteuser
 */
@WebServlet("/deleteuser")
public class deleteuser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public deleteuser() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username = request.getParameter("email");
		String password = request.getParameter("password");
		
		
		
		RegisterDao DB = new RegisterDao();
		
		boolean Dresult = DB.deleteuser(username, password);
		
		if(Dresult==true) {
			request.getRequestDispatcher("welcomeSD.html").forward(request, response);
		}
		else {
			request.getRequestDispatcher("deleteuser.jsp").forward(request, response);
			
		}
		
		
		
		
	}

}
