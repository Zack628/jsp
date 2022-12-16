<%@ page import="java.io.*,java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
String name = request.getParameter("InputName");
String surname = request.getParameter("InputSurname");
String email = request.getParameter("InputEmail");
String username = request.getParameter("InputUsername");
String password = request.getParameter("InputPassword");
String confirm = request.getParameter("InputConfirm");
String checkbox = request.getParameter("selected");
int CountErrors = 0;

if (name.length() < 3) {
    CountErrors++;
}
if (surname.length() < 3) {
    CountErrors++;
}
if (username.length() < 5) {
    CountErrors++;
}
if (password.length() < 6) {
    CountErrors++;
}
if (!password.equals(confirm)) {
    CountErrors++;
}
if (checkbox == null) {
    CountErrors++;
}
%>

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
            <% if (CountErrors > 0) {
            %>
                <h1>Registration form has errors</h1>
            <% } else {
            %>
                <h1>Registration almost done!</h1>
            <%
            }
			%>	
            </div>
         <% if (CountErrors > 0) {
            %>
        <div class ="row">
            <div class ="alert alert-danger" role="alert">
                <ol>
                    <%
                    if (name.length() < 3) {
                    %>
                        <li> Name must be at least 3 characters long</li>
                     
                    <% 
                    }
                    %>
                    <% 
                    if (surname.length() < 3) {
                    %>
                       <li> Surname must be at least 3 characters long</li>
                    <%
                    }
                    %>
                    <% 
                    if (username.length() < 5) {
                    %>
                       <li> Username must be at least 5 characters long</li>
                    <%
                    }
                    %>
                    <% 
                    if (password.length() < 6) {
                    %>
                       <li> Password must be at least 3 characters long</li>
                    <%
                    }
                    %>
                    <% 
                    if (!password.equals(confirm)) {
                    %>
                       <li> Password and confirm do not match</li>
                    <%
                    }
                    %>
                    <% 
                    if (checkbox == null) {
                    %>
                       <li> You must agree to the terms and conditions</li>
                    <%
                    }
                    %>

                </ol>
                
            </div>
        </div>
             <a class="btn btn-primary" href="register_ex1_8150105.jsp" role="button"> <span class="glyphicon glyphicon-chevron-left"></span> <b> Back to the form </b></a>
      
        <%
           } else {
        %>
        <div class ="alert alert-success" role="alert">
            <b>Note:</b> A verification link has been sent to the email: <%=email %>
        </div>
        <ul>
            <li><b>Name:</b> <%=name%></li>
            <li><b>Surname:</b> <%=surname%></li>
            <li><b>Email:</b> <%=email%></li>
            <li><b>Username:</b> <%=username%></li>
        </ul>
           

        <% 
           } 
        %>
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