<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="error_ex2_8150105.jsp"%>

<!DOCTYPE html>
<html lang="en">
	<head>

	<%@ include file="header_ex2_8150105.jsp" %>
	
	<meta name="description" content="2η Ατομική Άσκηση - Register page">
	<meta name="author" content="sofos@aueb.gr">
	

	<title>2η Ατομική Άσκηση - Register page </title>

	
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
						<li><a href="index_ex2_8150105.jsp">Home</a></li>
						<li class="active"><a href="register_ex2_8150105.jsp">Register</a></li>					
						<li><a href="about_ex2_8150105.jsp">About</a></li>					
					</ul>		
		
				</div>
				<!--/.nav-collapse -->
			</div>
		</nav>

		<div class="container theme-showcase" role="main">

			<!-- Main jumbotron for a primary marketing message or call to action -->
			<div class="jumbotron">
				<h1>2η Ατομική Άσκηση</h1>
			</div>

			<!-- Page Title -->
			<div class="page-header">
				<h1>Registration Form</h1>
			</div> 
			
			<form action="registerController_ex2_8150105.jsp" method="POST" class="form-horizontal">
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
		<%@ include file = "footer_ex2_8150105.jsp" %>
		
	</body>
</html>