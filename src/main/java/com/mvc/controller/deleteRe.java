package com.mvc.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mvc.dao.reviewDao;

/**
 * Servlet implementation class deleteRe
 */
@WebServlet("/deleteRe")
public class deleteRe extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public deleteRe() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String a = request.getParameter("un");
		String b = request.getParameter("mg");
		
		reviewDao rd = new reviewDao();
		int aa = rd.deletereview(a, b);
		
		
			request.getRequestDispatcher("viewReview.jsp").forward(request, response);
	
	
		
	}

}
