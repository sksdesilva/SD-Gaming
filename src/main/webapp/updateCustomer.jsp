<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>


 <link rel="stylesheet" href="css/userRegistration.css">
<title>SD - NEW USER</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Custom Theme files -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- //Custom Theme files -->
<!-- web font -->
<link href="//fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,700,700i" rel="stylesheet">
<!-- //web font -->

</head>
<body>

<%

String fullName = request.getParameter("fullName");
String cusEmail = request.getParameter("email");
String cusName = request.getParameter("userName");
String age = request.getParameter("age");
String userType = request.getParameter("userType");
String password = request.getParameter("password");
%>

<h4 style="text-align:right">User - <%= fullName %></h4></right>

<!-- 

<form action = "updateCustomer" method = "post">
<input type = "text" name="fullName" value=<%= fullName %>>
<br>

<input type = "text" name="userName" value="<%= cusName %>">
<br>

<input type = "text" name="userEmail" value="<%= cusEmail %>">
<br>

<input type = "text" name="age" value="<%= age %>">
<br>

<input type = "text" name="password" value="<%= password %>">
<br>

<input type = "text" name="userType" value="<%= userType %>">
<br>

<input type = "submit" name="submit"/>



</form>
-->

<div class="main-w3layouts wrapper">
		<h1>Edit User Profile</h1>
		<div class="main-agileinfo">
			<div class="agileits-top">
			<form action = "updateCustomer" method="post">
			
					<lable>fullname</lable>
					<br><br>
					<input class="text" type="text" name="fullName" value="<%= fullName %>">
					<br>
					<lable>User name</lable>
					
					<input class="text email" type="text" name="userName" value="<%= cusName %>" >
					<lable>E-mail</lable>
					<br><br>
					<input class="text" type="text" name="userEmail" value="<%= cusEmail %>" readonly >
					<br>
					<lable>Age</lable>
					
					<input class="text w3lpass" type="text" name="age" value="<%= age %>" >
					<lable>Player Type</lable>
					<br>
					<br>
					<input class="text" type="text" name="userType" value="<%= userType %>" readonly >
					<br>
					<lable>Password</lable>
					<br>
					
					<input class="text w3lpass" type="text" name="password" value="<%= password %>" >
					
					<lable>Confirm new/old password</lable>
          			<input class="text w3lpass" type="password"  placeholder="Confirm Password">
          			
          			<input type="submit" name="submit">
          			
          			</form>
          			
          			
          </div>
          <div class="wthree-text">
						<label class="anim">
							<input type="checkbox" class="checkbox" required="">
							<span>I Agree To The Terms & Conditions</span>
						</label>
						<div class="clear"> </div>
					</div>
					
          
          
 			
          
          
          
          
					
				<center><p>Already have an Account? <a href="uselogin.jsp"> Login Now!</a></p></center>
			</div>
		</div>
		<!-- copyright -->
		<div class="colorlibcopy-agile">
			
		</div>
		<!-- //copyright -->
		<ul class="colorlib-bubbles">
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
		</ul>
	</div>
	<!-- //main -->










</body>
</html>