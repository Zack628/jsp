<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="error_ex3_8150105.jsp" %>
<%@ page import="exercise3_2022_2023_8150105.*, java.util.List" %>

<%

if (session.getAttribute("userObj2022") == null) {

    session.setAttribute("message", "You are not authorized to access this resource. Please login");
%>

<jsp:forward page ="login_ex3_8150105.jsp" />

<%

} else {

	UserDAO dao = new UserDAO();

    String username = (String)request.getParameter("uname");
	
    try {

       
        User user = dao.findUser(username);  

    } catch (Exception e) {

        request.setAttribute("message", "User not found!");
    }
    
%>
<!DOCTYPE html>
<html lang="en">
	<head>        
		
		
		<%@ include file="header_ex3_8150105.jsp" %>
		
		<meta name="description" content="3η Ατομική Άσκηση - Dashboard">
		<meta name="author" content="your email">
		

		<title>3η Ατομική Άσκηση - Dashboard page</title>

				
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
						<li><a href="index_ex3_8150105.jsp">Home</a></li>										
						<li><a href="about_ex3_8150105.jsp">About</a></li>				
						<li class="active"><a href="dashboard_ex3_8150105.jsp">Dashboard</a></li>
										
					</ul>
					<ul class="nav navbar-nav navbar-right">
                        <li>
							<p class="navbar-text">Signed in as <%=username %></p>
						</li>
						<li>
							<a href="logout_ex3_8150105.jsp"><span class="glyphicon glyphicon-log-out"></span> Sign out</a>
						</li>								        	
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

			<!-- Page Title -->
			<div class="page-header">
				<h1>Profile of: <code><%=user.getFirstname() %> <%=user.getLastname() %></code></h1>
			</div>
            
            <div class="row">΄

                <% if(request.getAttribute("message") != null) { %>		
                    <div class="alert alert-danger" role="alert"><%=(String)request.getAttribute("message") %></div>
                <% } else {
                %>

            </div>
            <ul>

                <th><b>First Name:</b> <%=user.getFirstname() %> </th>
                <th><b>Last Name:</b> <%=user.getLastname() %></th>					
                <th><b>Email:</b> <%=user.getEmail() %></th>					
                <th><b>Username:</b> <%=user.getUsername() %></th>					
			</ul>		
				
		 
            <% 
            }
            %>
		</div>	
			
		</div>
		<!-- /container -->

	

        <!-- footer -->
		<%@ include file = "footer_ex3_8150105.jsp" %>
		
		
	</body>
</html>

<%
}

%>