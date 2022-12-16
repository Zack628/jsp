<%@ page import="java.io.*,java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ page import="exercise3_2021_2022_8170197.*"%>
<%@ page errorPage="error_ex3_8170197.jsp" %> 

<!DOCTYPE html>
<html lang="en">
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
	<meta name="description" content="Lab exercise template 2021-2022">
	<meta name="author" content="sofos@aueb.gr">
	<link rel="icon" href="images/favicon.ico">

	<title>3η Ατομική Άσκηση</title>

	<!-- Bootstrap core CSS -->
	<link rel="stylesheet" href="css/bootstrap.min.css">	
	<!-- Bootstrap Optional theme -->
	<link rel="stylesheet" href="css/bootstrap-theme.min.css">
	<!-- Custom styles for this template -->
	<link href="css/theme_8170197.css" rel="stylesheet">
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
					<a class="navbar-brand" href="#">8170197</a>
				</div>
				<div id="navbar" class="navbar-collapse collapse">
					<ul class="nav navbar-nav">
						<li><a href="<%=request.getContextPath() %>/index_ex3_8170197.jsp">Home</a></li>									
						<li><a href="<%=request.getContextPath() %>/about_ex3_8170197.jsp">About</a></li>
					</ul>
					<ul class="nav navbar-nav navbar-right">
					    <li class="active"><a href="<%=request.getContextPath() %>/register_ex3_8170197.jsp">Register</a></li>
						<li><a href="<%=request.getContextPath() %>/login_ex3_8170197.jsp">Sign in</a></li>
					</ul>
						
						
						
		
				</div>
				<!--/.nav-collapse -->
			</div>
		</nav>

		<div class="container theme-showcase" role="main">

			<!-- Main jumbotron for a primary marketing message or call to action -->
			<div class="jumbotron">
				<h1>3η Ατομική Άσκηση</h1>
			</div>
			
			<% String check;
			if (request.getParameter("checkbox")==null) { 
				check = "no"; 
			} else { 
				check = "yes";
			} 
			String firstname = request.getParameter("firstname");
			String lastname = request.getParameter("lastname");
			String email = request.getParameter("email");
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			String confirm = request.getParameter("confirm");
				
			boolean correct = true;
			if (firstname.length() < 3 || lastname.length() < 3 || username.length() < 5 || password.length() < 5 || (!password.equals(confirm))) {
				correct = false;
			} %>

			<!-- Page Title -->
			<% if (correct) { %>
				<div class="page-header">
					<h1>Registration almost done!</h1>
				</div>
			<% } else { %>
				<div class="page-header">
					<h1>Registration form has errors</h1>
				</div>
			<% } %>
		</div>

		<!-- /container -->
			<% if (correct) { %>
				<%try {
					UserDAO usr = new UserDAO();
					User user = new User(username, firstname, lastname, email, password);
					usr.register(user);
				} catch (Exception e) {
					throw new Exception(e.getMessage());
				}%>
				<div class="container">
					<div class="col-sm-12">
						<div class="alert alert-success" class="col-sm-5 role="success">
							<strong>Note:</strong> 	A verification link has been sent to the email: <% out.print(email); %>	
							</div>
					</div>
					<br>
						<div class="col-xs-12">
							<ul>
								<p><b>Name:</b>
									<%= request.getParameter("firstname")%>
								</p>
								<p><b>Surname:</b>
									<%= request.getParameter("lastname")%>
								</p>
								<p><b>Email:</b>
									<%= request.getParameter("email")%>
								</p>
								<p><b>Username:</b>
									<%= request.getParameter("username")%>
								</p>
							</ul>
						</div>
				</div>
			<% } else { %>
				<div class="container">
					<div class="col-sm-12">
						<div class="alert alert-danger" class="col-sm-5 role="danger">
							<% int countErrors = 0;
							if (firstname.length() < 3) {
								countErrors++;%>
								<p> <% out.print(countErrors); %>. Firstname must be at least 3 characters long </p>
							<% } %>
							<% if (lastname.length() < 3) {
								countErrors++; %>
								<p> <% out.print(countErrors); %>. Lastname must be at least 3 characters long </p>
							<% } %>
							<% if (username.length() < 5) {
								countErrors++; %>
								<p> <% out.print(countErrors); %>. Username must be at least 5 characters long </p>
							<% } %>
							<% if (password.length() < 5) {
								countErrors++; %>
								<p> <% out.print(countErrors); %>. Password must be at least 5 characters long </p>
							<% } %>
							<% if (!password.equals(confirm)){
								countErrors++; %>
								<p> <% out.print(countErrors); %>. Password and confirm do not match </p>
							<% } %>
							<% if (check == "no"){
								countErrors++; %>
								<p> <% out.print(countErrors); %>. You must agree to terms and conditions </p>
							<% } %>
						</div>
					</div>
					<br>
					<a href="register_ex3_8170197.jsp">
						<button type="button" align="left" class="btn btn-info">
							<span class="glyphicon glyphicon-chevron-left" style="colour: white;"></span> Back to the form
						</button>
					</a>
				</div>				
			<% } %>

		
	   		

		
		<!-- footer -->
		<footer class="navbar-inverse">
			<div class="container">
				<div class="row">
					<div class="col-xs-12">
						<p class="text-center">&copy; Copyright 2021 by ismgroup41</p>
					</div>
				</div>
			</div>
		</footer>
		<!-- End footer -->
		
		<!-- =================== Place all javascript at the end of the document so the pages load faster =================== -->
		<!-- jQuery library -->
		<script src="js/jquery.min.js"></script>
		<!-- Bootstrap core JavaScript -->
		<script	src="js/bootstrap.min.js"></script>
	</body>
</html>