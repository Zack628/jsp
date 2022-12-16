<%@ page import="java.io.*,java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="error_ex2_8150105.jsp"%>

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

    <%@ include file="header_ex2_8150105.jsp" %>
	
	<meta name="description" content="2η Ατομική Άσκηση - RegisterController page">
	<meta name="author" content="sofos@aueb.gr">


	<title>2η Ατομική Άσκηση</title>



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
             <a class="btn btn-primary" href="register_ex2_8150105.jsp" role="button"> <span class="glyphicon glyphicon-chevron-left"></span> <b> Back to the form </b></a>
      
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
	    <%@ include file = "footer_ex2_8150105.jsp" %>
        
	</body>
</html>