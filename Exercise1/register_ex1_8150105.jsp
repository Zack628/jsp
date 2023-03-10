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
						<li><a href="index_ex1_8150105.jsp">Home</a></li>
						<li class="active"><a href="register_ex1_8150105.jsp">Register</a></li>					
						<li><a href="about_ex1_8150105.jsp">About</a></li>					
					</ul>		
		
				</div>
				<!--/.nav-collapse -->
			</div>
		</nav>

		<div class="container theme-showcase" role="main">

			<!-- Main jumbotron for a primary marketing message or call to action -->
			<div class="jumbotron">
				<h1>1η Ατομική Άσκηση</h1>
			</div>

			<!-- Page Title -->
			<div class="page-header">
				<h1>Registration Form</h1>
			</div> 
			
			<form action="registerController_ex1_8150105.jsp" method="POST" class="form-horizontal">
		<div style="text-align: center;" class="alert alert-warning" role="alert">
			<b> Please fill in the following form to create an account.</b> 
		 </div>

       
			<div class="form-group"> 
				<label for="InputName" class="col-sm-2 control-label">Name</label>
				<div class="col-sm-7">
				<input type="text" class="form-control" name="InputName" placeholder="your name">
				</div>
			</div>
			
			<div class="form-group"> 
				<label for="InputSurname" class="col-sm-2 control-label">Surname</label>
				<div class="col-sm-7">
				<input type="text" class="form-control" name="InputSurname" placeholder="your surname">
				</div>
			</div>
			
			<div class="form-group"> 
				<label for="InputEmail" class="col-sm-2 control-label">Email</label>
				<div class="col-sm-7">
				<input type="email" class="form-control" name="InputEmail" placeholder="your email">
				</div>
			</div>
			
			<div class="form-group"> 
				<label for="InputUsername" class="col-sm-2 control-label">Username</label>
				<div class="col-sm-7">
				<input type="text" class="form-control" name="InputUsername" placeholder="your username">
				</div>
			</div>
			
			<div class="form-group"> 
				<label for="InputPassword" class="col-sm-2 control-label">Password</label>
				<div class="col-sm-7">
				<input type="password" class="form-control" name="InputPassword" placeholder="your password">   
				</div>    
			</div>
			
			<div class="form-group"> 
				<label for="InputConfirm" class="col-sm-2 control-label">Confirm</label>
				<div class="col-sm-7">
				<input type="password" class="form-control" name="InputConfirm" placeholder="confirm your password">   
				</div>
			</div>

			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-9 ">
				  <div class="checkbox">
				<input type="checkbox" name="selected"> <span style="color:rgb(0, 140, 255);"><b>I agree to the terms and conditions</b></span>
				   </div>
			 </div>
		    </div>

			<div class="form-group">
                <div class="col-sm-offset-2 col-sm-9">
            <button type="submit" class="btn btn-success"><span class="glyphicon glyphicon-ok" aria-hidden="true"></span> Submit</button>

            <button type="reset" class="btn btn-danger"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span> Cancel</button>
            </div>
            </div>


        </form>
			
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