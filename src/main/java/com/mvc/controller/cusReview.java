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
import com.mvc.bean.userReview;
import com.mvc.dao.RegisterDao;
import com.mvc.dao.reviewDao;

/**
 * Servlet implementation class cusReview
 */
@WebServlet("/cusReview")
public class cusReview extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public cusReview() {
        super();
        // TODO Auto-generated constructor stub
    }

	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username= request.getParameter("uname");
		String heading= request.getParameter("heading");
		String rating= request.getParameter("ratings");
		String message= request.getParameter("reviewM");
		String gameid = request.getParameter("gid");
		
		userReview UR = new userReview(username,heading,rating,message,gameid);
		
		reviewDao rd = new reviewDao();
		
		boolean result = rd.insertreview(UR);
		
		if(result == true) {
			List<RegisterBean> userDetails = RegisterDao.getUserDetails(username);
			request.setAttribute("userDetails", userDetails);
			
		
			
			
			request.getRequestDispatcher("playgame.jsp").forward(request, response);
		}
		else
			request.getRequestDispatcher("welcomeSD.jsp").forward(request, response);
		
		
		
		
	}

}
