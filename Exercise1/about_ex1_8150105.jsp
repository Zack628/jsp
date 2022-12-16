<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
	<meta name="description" content="Lab exercise template 2019-2020">
	<meta name="author" content="sofos@aueb.gr">
	<link rel="icon" href="images/favicon.ico">

	<title>1η Ατομική Άσκηση</title>

	<!-- Bootstrap core CSS -->
	<link rel="stylesheet" href="<%=request.getContextPath() %>/css/bootstrap.min.css">	
	<!-- Bootstrap Optional theme -->
	<link rel="stylesheet" href="<%=request.getContextPath() %>/css/bootstrap-theme.min.css">
	<!-- Custom styles for this template -->
	<link href="<%=request.getContextPath() %>/css/theme_8XXXXXX.css" rel="stylesheet">
	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
	</head>
	
	<body>

		<!-- Fixed navbar -->
		<nav class="navbar navbar-inverse navbar-fixed-top">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span> <span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#">8150105</a>
				</div>
				<div id="navbar" class="navbar-collapse collapse">
					<ul class="nav navbar-nav">
						<li ><a href="index_ex1_8150105.jsp">Home</a></li>
						<li ><a href="register_ex1_8150105.jsp">Register</a></li>					
						<li class="active"><a href="about_ex1_8150105.jsp">About</a></li>					
					</ul>		
		
				</div>
				<!--/.nav-collapse -->
			</div>
		</nav>

		<div class="container theme-showcase" role="main">

			<!-- Main jumbotron for a primary marketing message or call to action -->
			<div class="jumbotron">
				<h1>FastGifting</h1>
			</div>

			<!-- Page Title -->
			<div class="page-header">
				<h1>Group Members</h1>
			</div>
			
		</div>

       
        
        

        <div class="media">
			<div class="col-sm-offset-2 col-sm-10">
            <div class="media-left">
              <div class="thumbnail">
              <a href="#">
                <span><img class="media-object" src="images/member1.png" alt="Photo of man"></span>
              </a>
			</div>
            </div>

            <div class="media-body" class="media-left media-middle">
              <h2 class="media-heading">Zacharias Paliogiannis <small>8150105</small></h2>
              &#9993; t8150105@aueb.gr
            </div>
			</div>
          </div>

          <div class="media">
            <div class="col-sm-offset-2 col-sm-10">
            <div class="media-left">
                <div class="thumbnail">
              <a href="#">
                <span><img class="media-object" src="images/member1.png" alt="Photo of man"></span>
              </a>
                </div>
            </div>

            <div class="media-body">
              <h2 class="media-heading">Vasiliki Kokora <small>8150053</small></h2>
              &#9993; t8150053@aueb.gr
            </div>
		    </div>
        </div>
    </div>

	 <div class="media">
		<div class="col-sm-offset-2 col-sm-10">
            <div class="media-left">
                <div class="thumbnail">
                  <a href="#">
                    <span><img class="media-object" src="images/member1.png" alt="Photo of man"></span>
                  </a>
                </div>
            </div>

            <div class="media-body">
              <h2 class="media-heading">Nikos Litsas <small>8170197</small></h2> 
              &#9993; 8170197@aueb.gr
            </div>
			</div>
        </div>
		
		<div class="media">
			<div class="col-sm-offset-2 col-sm-10">
            <div class="media-left">
              <div class="thumbnail">
              <a href="#">
                <span><img class="media-object" src="images/member1.png" alt="Photo of man"></span>
              </a>
			</div>
            </div>

            <div class="media-body">
              <h2 class="media-heading">Chrysi Apostolaki <small>8180005</small></h2>
              &#9993; t8180005@aueb.gr
            </div>
			</div>
          </div>
<!-- /container -->


		<!-- footer -->
		<footer class="navbar-inverse">
			<div class="container">
				<div class="row">
					<div class="col-xs-12">
						<p class="text-center">&copy; Copyright 2022 by ismgroup76</p>
					</div>
				</div>
			</div>
		</footer>
		<!-- End footer -->
		
		<!-- =================== Place all javascript at the end of the document so the pages load faster =================== -->
		<!-- jQuery library -->
		<script src="<%=request.getContextPath() %>/js/jquery.min.js"></script>
		<!-- Bootstrap core JavaScript -->
		<script	src="<%=request.getContextPath() %>/js/bootstrap.min.js"></script>
	</body>
</html>