package com.mvc.dao;
 
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.mvc.bean.RegisterBean;
import com.mvc.bean.RegisterDeveloper;
import com.mvc.util.DBConnection;
 
public class RegisterDao { 
	
	private static boolean success;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet res = null;
	
     public String registerUser(RegisterBean registerBean)
     {
         String fullName = registerBean.getFullName();
         String email = registerBean.getEmail();
         String userName = registerBean.getUserName();
         String age = registerBean.getAge();
         String userType = registerBean.getuserType();
         String password = registerBean.getPassword();
         
         Connection con = null;
         PreparedStatement preparedStatement = null;         
         try
         {
             con = DBConnection.createConnection();
             String query = "insert into user(email,f_name,user_name,age,user_type,password) values (?,?,?,?,?,?)"; //Insert user details into the table 'USERS'
             preparedStatement = con.prepareStatement(query); //Making use of prepared statements here to insert bunch of data
             preparedStatement.setString(1, email);
             preparedStatement.setString(2, fullName);
             preparedStatement.setString(3, userName);
             preparedStatement.setString(4, age);
             preparedStatement.setString(5, userType);
             preparedStatement.setString(6, password);
             
             int i= preparedStatement.executeUpdate();
             
             if (i!=0)  //Just to ensure data has been inserted into the database
             return "SUCCESS"; 
         }
         catch(SQLException e)
         {
            e.printStackTrace();
         }       
         return "Oops.. Something went wrong there..!";  // On failure, send a message from here.
     }
     
     
     public static boolean validate(String username,String password) {
    	 try {
    		 con = DBConnection.createConnection();
    		 stmt = con.createStatement();
    		 String sql = "select *from user where email='"+username+"' and password='"+password+"'" ;
    		 res = stmt.executeQuery(sql);
    		 
    		 if(res.next()) {
    			 success = true;
    		 }else {
    			 success=false;
    		 }
    	 }catch(Exception e) {
    		 e.printStackTrace();
    	 }
    	 return success;
     }
     
     public static List<RegisterBean> getUserDetails(String username){
    	 
    	 ArrayList<RegisterBean> userDetails = new ArrayList<>();
    	 
    	 try {
    		 con = DBConnection.createConnection();
    		 stmt = con.createStatement();
    		 String sql = "select *from user where email='"+username+"'" ;
    		 res = stmt.executeQuery(sql);
    		 
    		 while (res.next()) {
    			 String email = res.getString(1);
    			 String fname = res.getString(2);
    			 String uname = res.getString(3);
    			 String uage = res.getString(4);
    			 String utype = res.getString(5);
    			 String password = res.getString(6);
    			 
    			 RegisterBean user = new RegisterBean(fname,email,uname,uage,utype,password);
    			 userDetails.add(user);
    		 }
    		 
    	 }catch (Exception e) {
    		 e.printStackTrace();
    	 }
    	 
    	 return userDetails;
     }


	public static Boolean updateUser(String fullname,String userName,String email,String age,String password,String userType) {
		
		try {
			con = DBConnection.createConnection();
			stmt = con.createStatement();
			String sql = "update user set f_name = '"+fullname+"',user_name='"+userName+"',age='"+age+"',password='"+password+"',user_type='"+userType+"' where email='"+email+"'";
			int result = stmt.executeUpdate(sql);
			
			if(result > 0) {
				success=true;
			}else {
				success=false;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
			
		}
		
		return success;
		
		
		
	}
	
	public boolean deleteuser(String username,String password) {
		
		
		try {
			
		
		con = DBConnection.createConnection();
		stmt = con.createStatement();
		String sql ="delete from user where email='"+username+"' and password='"+password+"'";
		int a = stmt.executeUpdate(sql);
		
		if(a > 0) {
			success = true;
		}else
			success = false;
		
		
		
		
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
		
		
		return success;
	}
	
	public String RegisterNewDeveloper(RegisterDeveloper RD) {
		
		String fullname = RD.getFullName();
		String username = RD.getUserName();
		String email = RD.getDevEmail();
		String password = RD.getPassword();
		
		
		Connection con = null;
		PreparedStatement preparedst = null;
		String statuss = null;
		
		try {
		con = DBConnection.createConnection();
		
		
		
		String sql = "insert into developer(email,full_name,user_name,password) values(?,?,?,?)";
		preparedst = con.prepareStatement(sql);
		
		preparedst.setString(1, email);
		preparedst.setString(2, fullname);
		preparedst.setString(3, username);
		preparedst.setString(4, password);
		
		int i = preparedst.executeUpdate();
		if (i != 0) {
			statuss = "Sucessfull";
			
			
		}else {
			statuss = "DB UPDATE WAS UNSUCCESSFULL";
			
		}
		
		
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return statuss;
		
		
		
	}
	
	public boolean developerverification(RegisterDeveloper rd) {
		int status = 0;
		boolean a;
		String pw = rd.getPassword();
		String un = rd.getDevEmail();
		
		try {
		con = DBConnection.createConnection();
		stmt = con.createStatement();
		String sql = "select *from developer where email ='"+un+"'and password='"+pw+"'";
		res = stmt.executeQuery(sql);
	
		
		if(res.next()) {
			success= true;
		}else {
			success= false;
		}
		
		}catch(Exception e){
			e.printStackTrace();
		}
		
		
		
		
		
		return success;
	}
     
     
     
     
     
     
}