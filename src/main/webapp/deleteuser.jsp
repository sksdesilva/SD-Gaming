<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
body{
	  background-image: url('img/recent-game-bg.png');
	  background-color:black;
}

.section{
	margin-left:500px;
	margin-top:200px;
}

h1,lable{
	color:white;
}

</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Header section -->
	<header class="header-section">
		<div class="container">
			<!-- logo -->
			<a class="site-logo" href="index.html">
				<img src="img/logo.png" alt="">
			</a>


<script>
alert("ARE YOU SURE, YOU WANT TO DELETE ACCOUNT?");
</script>

<%
String email = request.getParameter("email");
%>

<div class="section">
<h1>PLAESE ENTER YOUR PASSWORD FOR COMPLATE ACTION</h1>

<form action="deleteuser" method="post">
<lable>Email &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<lable>
<input type="email" name="email" value="<%=email %>">
<br>
<lable>Password<lable>
<input type = "password" name="password">
<br>
<br>
<input type="submit" name="dduser1" value="delete my account" style="margin-left:80px;">
</form>
</div>

</body>
</html>