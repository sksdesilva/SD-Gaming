package com.mvc.controller;

import java.io.IOException;
import java.util.List;

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
 * Servlet implementation class viewreviw
 */
@WebServlet("/viewreviw")
public class viewreviw extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public viewreviw() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		
		userReview ur = new userReview();
		
		ur.setgameid(id);
		
		
		
		List<userReview> userDetails = reviewDao.viewReviews(id);
		request.setAttribute("userDetails", userDetails);
		
		request.getRequestDispatcher("viewReview.jsp").forward(request, response);
		
		
	}

}
