<!DOCTYPE html>
<html lang="en">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<head>
<link href="css/bootstrap.css" rel=stylesheet type=text/css>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
 
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>




<nav class="navbar navbar-expand-lg navbar-dark bg-dark mr-5" style="background-color: #e3f2fd;">
  <img src="1.png" width="50px" height="50px" class="navbar-brand">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarText">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Contact Us</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Games types</a>
      </li>
   
    
     <li class="nav-item">
        <a class="nav-link" href="#"> Subscriptions</a>
      </li> 
    
  <li class="nav-item">
   <form class="form-inline my-2 my-lg-0">
   
      <input class="form-control mr-lg-5 ml-lg-5" type="search" placeholder="Search" aria-label="Search">
       </li>
       <li class="nav-item">
      <button class="btn btn-outline-success my-2 my-sm-0 ml-5" type="submit">Search</button>
      </form>
      </li>
      
     
       </ul>
      
</nav>


<div class="container">
  <h2>Carousel Example</h2>  
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <img src="1.png" alt="Los Angeles" style="width:50%; height:50%;">
      </div>

      <div class="item">
        <img src="1.png" alt="Chicago" style="width:50%; height:50%">
      </div>
    
      <div class="item">
        <img src="1.png" alt="New york" style="width:50%; height:50%">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>

</body>
</html>
