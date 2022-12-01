<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <link rel="stylesheet" href="css/userRegistration.css">
  <script src="js/ppvalidate.js"></script>
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
	<!-- main -->
	<div class="main-w3layouts wrapper">
		<h1>New User Registraion</h1>
		<div class="main-agileinfo">
			<div class="agileits-top">
				<form action="RegisterServlet" method="post">
					<input class="text" type="text" name="fullname" placeholder="Fullname" required="">
					<input class="text email" type="text" name="username" placeholder="Username" required="">
					<input class="text" type="email" name="email" placeholder="Email" required="">
					<input class="text w3lpass" type="text" name="age" placeholder="Age" required="">
					
					<select class="text" style="width:300px; height:40px; opacity: 0.5;" name="userType">
          <option value="Professional Gaming Streamer">I am a Professional Gaming Streamer</option>
          <option value="Normal Game Player">I am a Normal Game Player</option>
          <option value="children">I am a Kid</option>
          </select>
          
          
          <input class="text w3lpass" type="password" name="password" id="password" placeholder="Password" onkeyup='check();' required>
          <input class="text w3lpass" type="password" name="password2" id="password2" placeholder="Confirm Password" onkeyup='check();' required>
           <span id='msg'></span>
          
          </div>
          
          
 			
          
          
          
          
					<div class="wthree-text">
						<label class="anim">
							<input type="checkbox" class="checkbox" required>
							<span>I Agree To The Terms & Conditions</span>
						</label>
						<div class="clear"> </div>
					</div>
					<input type="submit" value="Register">
          
          
          
				</form>
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