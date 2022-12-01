<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
	
	<style type="text/css">
		body{
			font-family: Hind SemiBold;
		}
	
		table, th, td {
  			border: 1px solid black;
		}
		
		#cust,#cust1{
			text-decoration:none;
		}
	</style>
	
	<link href="img/favicon.ico" rel="shortcut icon"/>

	<!-- Google Fonts -->
	<link href="https://fonts.googleapis.com/css?family=Roboto:400,400i,500,500i,700,700i" rel="stylesheet">

	<!-- Stylesheets -->
	<link rel="stylesheet" href="css/bootstrap.min.css"/>
	<link rel="stylesheet" href="css/font-awesome.min.css"/>
	<link rel="stylesheet" href="css/owl.carousel.css"/>
	<link rel="stylesheet" href="css/style.css"/>
	<link rel="stylesheet" href="css/animate.css"/>


	<!--[if lt IE 9]>
	  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
	
	
</head>
<body>

<c:forEach var="user" items="${userDetails}">
	
	<c:set var="fullName" value="${user.fullName}"/>
	<c:set var="email" value="${user.email }"/>
	<c:set var="userName" value="${user.userName }"/>
	<c:set var="age" value="${user.age }"/>
	<c:set var="userType" value="${user.userType }"/>
	<c:set var="password" value="${user.password }"/>
	
	<c:url value="updateCustomer.jsp" var="cusupdate">
		<c:param name="fullName" value="${fullName}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="userName" value="${userName}"/>
		<c:param name="age" value="${age}"/>
		<c:param name="userType" value="${userType}"/>
		<c:param name="password" value="${password}"/>
	</c:url>
	
	<c:url value="deleteuser.jsp" var="cusdelete">
		<c:param name="email" value="${email}" />
		<c:param name="userName" value="${userName}" />
		<c:param name="password" value="${email}" />
	</c:url>
	

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
			<div class="user-panel">
				<p>WELCOME ${user.userName} </p><a id="cust" href="${cusupdate}">Edit Profile</a>&nbsp;&nbsp;&nbsp;&nbsp;<a id="cust1" href="${cusdelete}">delete profile</a>
			</div>
			<!-- responsive -->
			<div class="nav-switch">
				<i class="fa fa-bars"></i>
			</div>
			<!-- site menu -->
			<nav class="main-menu">
				<ul>
					<li><a href="index.html">Home</a></li>
					<li><a href="review.html">Games</a></li>
					<li><a href="categories.html">Blog</a></li>
					<li><a href="community.html">Forums</a></li>
					<li><a href="contact.html">Contact</a></li>
				</ul>
			</nav>
		</div>
	</header>
	<!-- Header section end -->


	<!-- Latest news section -->
	<div class="latest-news-section">
		<div class="ln-title">Latest News</div>
		<div class="news-ticker">
			<div class="news-ticker-contant">
				<div class="nt-item"><span class="new">new</span>The customer is very important, the customer will be followed by the customer. </div>
				<div class="nt-item"><span class="strategy">strategy</span>This pain is important, and it will be pursued by the adipiscing developer. </div>
				<div class="nt-item"><span class="racing">racing</span> This pain is important, and it will be pursued by the adipiscing developer.</div>
			</div>
		</div>
	</div>
	<!-- Latest news section end -->


	<!-- Page info section -->
	<section class="page-info-section set-bg" data-setbg="img/page-top-bg/1.jpg">
		<div class="pi-content">
			<div class="container">
				<div class="row">
					<div class="col-xl-5 col-lg-6 text-white">
						<h2>Game Gallery</h2>
						<p>The customer is very important, the customer will be followed by the customer. Until then, the greatest mauris of the world, but there was no official website.</p>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Page info section -->
	
	<!--  my add -->

	<!--  
	<table border="1">
	<tr>
	<td>kavid</td>
	</tr>

	
	
	<h2>${user.fullName}</h2>
	<br>
	<h2>${user.email}</h2>
	<br>
	<h2>${user.userName}</h2>
	<br>
	<h2>${user.age}</h2>
	<br>
	<h2>${user.userType}</h2>
	<br>
	<h2>${user.password}</h2>
	
	
	<input type="text" placeholder="${user.fullName}" name="user1"/>
	<input type="text" placeholder="${user.email}" name="user1"/>
	
	</c:forEach>
	
	</table>
	
	-->
	
	<!--
		<c:url value="updateCustomer.jsp" var="cusupdate">
		<c:param name="fullName" value="${fullName}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="userName" value="${userName}"/>
		<c:param name="age" value="${age}"/>
		<c:param name="userType" value="${userType}"/>
		<c:param name="password" value="${password}"/>
	</c:url>
	
	
	
	
	<a href="${cusupdate}">
	link
	</a>
	-->
	<!--  
	<br>
	<c:url value="deletecustomer.jsp" var="cusdelete">
		<c:param name="cusId" value="${id}" />
		<c:param name="cusName" value="${name}" />
		<c:param name="cusEmail" value="${email}" />
		<c:param name="cusUname" value="${username}" />
		<c:param name="cusPassword" value="${password}" />
	</c:url>
	<a href="${cusdelete}">
	<input type="button" name="delete" value="Delete My Account">
	</a>
	-->
	
	<section class="page-section recent-game-page spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-8">
					<div class="row">
						<div class="col-md-6">
							<div class="recent-game-item">
								<div class="rgi-thumb set-bg" data-setbg="https://cdn.wanted5games.com/game-img/funny%20food%20duel%20270x196.png">
									<div class="cata new">racing</div>
								</div>
								<div class="rgi-content">
									<a style="text-decoration: none;" href="playgame.jsp"><h5>FUNNY FOOD DUEL!</h5></a>
									<p>FUNNY FOOD DUEL! </p>
									<a href="#" class="comment">3 Comments</a>
									<div class="rgi-extra">
										<div class="rgi-star"><img src="img/icons/star.png" alt=""></div>
										<div class="rgi-heart"><img src="img/icons/heart.png" alt=""></div>
									</div>
								</div>
							</div>	
						</div>
						<div class="col-md-6">
							<div class="recent-game-item">
								<div class="rgi-thumb set-bg" data-setbg="https://cdn.wanted5games.com/game-img/dotted-girl-thumb.png">
									<div class="cata racing">kids</div>
								</div>
								<div class="rgi-content">
									<a style="text-decoration: none;" href="playgame1.jsp"><h5>Dotted Girl Back To School  </h5></a>
									<p>Dotted Girl Back To School  </p>
									<a href="#" class="comment">3 Comments</a>
									<div class="rgi-extra">
										<div class="rgi-star"><img src="img/icons/star.png" alt=""></div>
										<div class="rgi-heart"><img src="img/icons/heart.png" alt=""></div>
									</div>
								</div>
							</div>	
						</div>
						<div class="col-md-6">
							<div class="recent-game-item">
								<div class="rgi-thumb set-bg" data-setbg="https://cdn.wanted5games.com/game-img/270x196_trafficcontrol-html5_thumbnail.png">
									<div class="cata adventure">Adventure</div>
								</div>
								<div class="rgi-content">
									<a style="text-decoration: none;" href="playgame2.jsp"><h5>TRAFFIC CONTROL</h5></a>
									<p>TRAFFIC CONTROL </p>
									<a href="#" class="comment">3 Comments</a>
									<div class="rgi-extra">
										<div class="rgi-star"><img src="img/icons/star.png" alt=""></div>
										<div class="rgi-heart"><img src="img/icons/heart.png" alt=""></div>
									</div>
								</div>
							</div>	
						</div>
						<div class="col-md-6">
							<div class="recent-game-item">
								<div class="rgi-thumb set-bg" data-setbg="https://cdn.wanted5games.com/game-img/270x196_demonkiller-html5_thumbnail.png">
									<div class="cata new">racing</div>
								</div>
								<div class="rgi-content">
									<a style="text-decoration: none;" href="playgame4.jsp"><h5>DEAMON KILLER </h5></a>
									<p>DEAMON KILLER </p>
									<a href="#" class="comment">3 Comments</a>
									<div class="rgi-extra">
										<div class="rgi-star"><img src="img/icons/star.png" alt=""></div>
										<div class="rgi-heart"><img src="img/icons/heart.png" alt=""></div>
									</div>
								</div>
							</div>	
						</div>
						<div class="col-md-6">
							<div class="recent-game-item">
								<div class="rgi-thumb set-bg" data-setbg="https://cdn.wanted5games.com/game-img/jewels-connect-thumbnail-270x196-new.png">
									<div class="cata racing">racing</div>
								</div>
								<div class="rgi-content">
									<a style="text-decoration: none;" href="playgame5.jsp"><h5>JEWELS CONNECT</h5></a>
									<p>JEWELS CONNECT </p>
									<a href="#" class="comment">3 Comments</a>
									<div class="rgi-extra">
										<div class="rgi-star"><img src="img/icons/star.png" alt=""></div>
										<div class="rgi-heart"><img src="img/icons/heart.png" alt=""></div>
									</div>
								</div>
							</div>	
						</div>
						<div class="col-md-6">
							<div class="recent-game-item">
								<div class="rgi-thumb set-bg" data-setbg="https://cdn.wanted5games.com/game-img/270x196_halloweenpuzzle-html5_thumbnail.png">
									<div class="cata adventure">Adventure</div>
								</div>
								<div class="rgi-content">
									<a style="text-decoration: none;" href="playgame6.jsp"><h5>HALLOWEEN PUZZLE </h5></a>
									<p>HALLOWEEN PUZZLE </p>
									<a href="#" class="comment">3 Comments</a>
									<div class="rgi-extra">
										<div class="rgi-star"><img src="img/icons/star.png" alt=""></div>
										<div class="rgi-heart"><img src="img/icons/heart.png" alt=""></div>
									</div>
								</div>
							</div>	
						</div>
						<div class="col-md-6">
							<div class="recent-game-item">
								<div class="rgi-thumb set-bg" data-setbg="https://cdn.wanted5games.com/game-img/270x196_jewelmagic-html5_thumbnail.png">
									<div class="cata new">racing</div>
								</div>
								<div class="rgi-content">
									<a style="text-decoration: none;" href="playgame7.jsp"><h5> JEWEL MAGIC</h5></a>
									<p>JEWEL MAGIC </p>
									<a href="#" class="comment">3 Comments</a>
									<div class="rgi-extra">
										<div class="rgi-star"><img src="img/icons/star.png" alt=""></div>
										<div class="rgi-heart"><img src="img/icons/heart.png" alt=""></div>
									</div>
								</div>
							</div>	
						</div>
						<div class="col-md-6">
							<div class="recent-game-item">
								<div class="rgi-thumb set-bg" data-setbg="https://cdn.wanted5games.com/game-img/270x196_dominobattle-html5_thumbnail.png">
									<div class="cata racing">ADVENTURE</div>
								</div>
								<div class="rgi-content">
									<a style="text-decoration: none;" href="playgame8.jsp"><h5>DOMINO BATTLE</h5></a>
									<p>DOMINO BATTLE </p>
									<a href="#" class="comment">3 Comments</a>
									<div class="rgi-extra">
										<div class="rgi-star"><img src="img/icons/star.png" alt=""></div>
										<div class="rgi-heart"><img src="img/icons/heart.png" alt=""></div>
									</div>
								</div>
							</div>	
						</div>
					</div>
					<div class="site-pagination">
						<span class="active">01.</span>
						<a href="#">02.</a>
						<a href="#">03.</a>
					</div>
				</div>
				<!-- sidebar -->
				<div class="col-lg-4 col-md-7 sidebar pt-5 pt-lg-0">
					<!-- widget -->
					<div class="widget-item">
						<form class="search-widget">
							<input type="text" placeholder="Search">
							<button><i class="fa fa-search"></i></button>
						</form>
					</div>
					<!-- widget -->
					<div class="widget-item">
						<h4 class="widget-title">Latest Posts</h4>
						<div class="latest-blog">
							<div class="lb-item">
								<div class="lb-thumb set-bg" data-setbg="img/latest-blog/1.jpg"></div>
								<div class="lb-content">
									<div class="lb-date">June 21, 2018</div>
									<p>Ipsum dolor sit amet, consectetur adipisc ing consecips</p>
									<a href="#" class="lb-author">By Admin</a>
								</div>
							</div>
							<div class="lb-item">
								<div class="lb-thumb set-bg" data-setbg="img/latest-blog/2.jpg"></div>
								<div class="lb-content">
									<div class="lb-date">June 21, 2018</div>
									<p>Ipsum dolor sit amet, consectetur adipisc ing consecips</p>
									<a href="#" class="lb-author">By Admin</a>
								</div>
							</div>
							<div class="lb-item">
								<div class="lb-thumb set-bg" data-setbg="img/latest-blog/3.jpg"></div>
								<div class="lb-content">
									<div class="lb-date">June 21, 2018</div>
									<p>Ipsum dolor sit amet, consectetur adipisc ing consecips</p>
									<a href="#" class="lb-author">By Admin</a>
								</div>
							</div>
						</div>
					</div>
					<!-- widget -->
					<div class="widget-item">
						<h4 class="widget-title">Top Comments</h4>
						<div class="top-comment">
							<div class="tc-item">
								<div class="tc-thumb set-bg" data-setbg="img/authors/1.jpg"></div>
								<div class="tc-content">
									<p><a href="#">James Smith</a> <span>on</span> Lorem consec ipsum dolor sit amet, co</p>
									<div class="tc-date">June 21, 2018</div>
								</div>
							</div>
							<div class="tc-item">
								<div class="tc-thumb set-bg" data-setbg="img/authors/2.jpg"></div>
								<div class="tc-content">
									<p><a href="#">Michael James</a> <span>on</span>Cras sit amet sapien aliquam</p>
									<div class="tc-date">June 21, 2018</div>
								</div>
							</div>
							<div class="tc-item">
								<div class="tc-thumb set-bg" data-setbg="img/authors/3.jpg"></div>
								<div class="tc-content">
									<p><a href="#">Justin More</a> <span>on</span> Lorem ipsum dolor consecsit amet, co</p>
									<div class="tc-date">June 21, 2018</div>
								</div>
							</div>
						</div>
					</div>
					<!-- widget -->
					<div class="widget-item">
						<div class="feature-item set-bg" data-setbg="img/features/1.jpg">
							<span class="cata new">new</span>
							<div class="fi-content text-white">
								<h5><a href="#">Suspendisse ut justo tem por, rutrum</a></h5>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. </p>
								<a href="#" class="fi-comment">3 Comments</a>
							</div>
						</div>
					</div>
					<!-- widget -->
					<div class="widget-item">
						<div class="review-item">
							<div class="review-cover set-bg" data-setbg="img/review/1.jpg">
								<div class="score yellow">9.3</div>
							</div>
							<div class="review-text">
								<h5>Assasin’’s Creed</h5>
								<p>Lorem ipsum dolor sit amet, consectetur adipisc ing ipsum dolor sit ame.</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Page section end -->


	<!-- Footer top section -->
	<section class="footer-top-section">
		<div class="container">
			<div class="footer-top-bg">
				<img src="img/footer-top-bg.png" alt="">
			</div>
			<div class="row">
				<div class="col-lg-4">
					<div class="footer-logo text-white">
						<img src="img/footer-logo.png" alt="">
						<p>Lorem ipsum dolor sit amet, consectetur adipisc ing ipsum dolor sit ame.</p>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="footer-widget mb-5 mb-md-0">
						<h4 class="fw-title">Latest Posts</h4>
						<div class="latest-blog">
							<div class="lb-item">
								<div class="lb-thumb set-bg" data-setbg="img/latest-blog/1.jpg"></div>
								<div class="lb-content">
									<div class="lb-date">June 21, 2018</div>
									<p>Lorem ipsum dolor sit amet, consectetur adipisc ing ipsum </p>
									<a href="#" class="lb-author">By Admin</a>
								</div>
							</div>
							<div class="lb-item">
								<div class="lb-thumb set-bg" data-setbg="img/latest-blog/2.jpg"></div>
								<div class="lb-content">
									<div class="lb-date">June 21, 2018</div>
									<p>Lorem ipsum dolor sit amet, consectetur adipisc ing ipsum </p>
									<a href="#" class="lb-author">By Admin</a>
								</div>
							</div>
							<div class="lb-item">
								<div class="lb-thumb set-bg" data-setbg="img/latest-blog/3.jpg"></div>
								<div class="lb-content">
									<div class="lb-date">June 21, 2018</div>
									<p>Lorem ipsum dolor sit amet, consectetur adipisc ing ipsum </p>
									<a href="#" class="lb-author">By Admin</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="footer-widget">
						<h4 class="fw-title">Top Comments</h4>
						<div class="top-comment">
							<div class="tc-item">
								<div class="tc-thumb set-bg" data-setbg="img/authors/1.jpg"></div>
								<div class="tc-content">
									<p><a href="#">James Smith</a> <span>on</span>  Lorem ipsum dolor sit amet, co</p>
									<div class="tc-date">June 21, 2018</div>
								</div>
							</div>
							<div class="tc-item">
								<div class="tc-thumb set-bg" data-setbg="img/authors/2.jpg"></div>
								<div class="tc-content">
									<p><a href="#">James Smith</a> <span>on</span>  Lorem ipsum dolor sit amet, co</p>
									<div class="tc-date">June 21, 2018</div>
								</div>
							</div>
							<div class="tc-item">
								<div class="tc-thumb set-bg" data-setbg="img/authors/3.jpg"></div>
								<div class="tc-content">
									<p><a href="#">James Smith</a> <span>on</span>  Lorem ipsum dolor sit amet, co</p>
									<div class="tc-date">June 21, 2018</div>
								</div>
							</div>
							<div class="tc-item">
								<div class="tc-thumb set-bg" data-setbg="img/authors/4.jpg"></div>
								<div class="tc-content">
									<p><a href="#">James Smith</a> <span>on</span>  Lorem ipsum dolor sit amet, co</p>
									<div class="tc-date">June 21, 2018</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Footer top section end -->

	
	<!-- Footer section -->
	<footer class="footer-section">
		<div class="container">
			<ul class="footer-menu">
				<li><a href="index.html">Home</a></li>
				<li><a href="review.html">Games</a></li>
				<li><a href="categories.html">Blog</a></li>
				<li><a href="community.html">Forums</a></li>
				<li><a href="contact.html">Contact</a></li>
			</ul>
			<p class="copyright"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
</p>
		</div>
	</footer>
	<!-- Footer section end -->


	<!--====== Javascripts & Jquery ======-->
	<script src="js/jquery-3.2.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/jquery.marquee.min.js"></script>
	<script src="js/main.js"></script>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
</body>
</html>