package com.mvc.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mvc.bean.RegisterBean;
import com.mvc.dao.RegisterDao;

/**
 * Servlet implementation class customerUpdate
 */
@WebServlet("/customerUpdate")
public class customerUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public customerUpdate() {
        super();
        
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String fullname = request.getParameter("fullName");
		String userName = request.getParameter("userName");
		String email = request.getParameter("userEmail");
		String age = request.getParameter("age");
		String password = request.getParameter("password");
		String userType = request.getParameter("userType");
		
		
		
		
	
		
		Boolean checkStatus = RegisterDao.updateUser(fullname, userName,email,age, password, userType);
		
		if(checkStatus == true) {
			
			List<RegisterBean> userDetails = RegisterDao.getUserDetails(email);
			request.setAttribute("userDetails", userDetails);
			
			request.getRequestDispatcher("/userAccount.jsp").forward(request,response);
			
			
		}
		else {
			request.getRequestDispatcher("/index.jsp").forward(request, response);
		}
		
		
	}

}
