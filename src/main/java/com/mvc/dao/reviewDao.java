package com.mvc.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.mvc.bean.userReview;
import com.mvc.util.DBConnection;
import com.mysql.jdbc.PreparedStatement;



public class reviewDao {
	
	private boolean success = true;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet res = null;
	
	
	public boolean insertreview(userReview rd) {
		
		String gameid = rd.getgameid();
		String username = rd.getUsername();
		String heading = rd.getHeading();
		String ratings = rd.getRating();
		String message = rd.getMessage();
		
		Connection con = null;
		java.sql.PreparedStatement preparedStatement = null;
		
		try {
			con = DBConnection.createConnection();
			String query = "insert into review(user,heading,rating,message,gameid) values(?,?,?,?,?)";
			preparedStatement = con.prepareStatement(query);
			preparedStatement.setString(1, username);
			preparedStatement.setString(2, heading);
			preparedStatement.setString(3, ratings);
			preparedStatement.setString(4, message);
			preparedStatement.setString(5, gameid);
			
			int i = preparedStatement.executeUpdate();
			
			if(i > 0) {
				success = true;
			}
			else {
				success = false;
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return success;
	}
	
	public static List<userReview> viewReviews(String gameidd) {
		ArrayList<userReview> reviewdetails = new ArrayList<>();
		
		try {
			con = DBConnection.createConnection();
			stmt = con.createStatement();
			String query = "select * from review where gameid='"+gameidd+"'";
			res = stmt.executeQuery(query);
			
			while(res.next()) {
				String username = res.getString(1);
				String header = res.getString(2);
				String rating = res.getString(3);
				String message = res.getString(4);
				String gameid = res.getString(5);
				
				userReview rw = new userReview(username,header,rating,message,gameid);
				reviewdetails.add(rw);
			}
			
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return reviewdetails; 
		
	}
	
	public int deletereview(String un, String mg) {
		
		int bb = 0;
		try {
			con = DBConnection.createConnection();
			stmt = con.createStatement();
			String sql = "delete from review where user = '"+un+"' and message = '"+mg+"'";
			int resu = stmt.executeUpdate(sql);
			
			if(bb > 0) {
				bb = 1;
			}else bb = 0;
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
		
		return bb;
	}
	

}
