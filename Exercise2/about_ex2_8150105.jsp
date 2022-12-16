<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="error_ex2_8150105.jsp"%>
<%@ page import="exercise2_2022_2023_8150105.*" %>

<!DOCTYPE html>
<html lang="en">
	<head>

	<%@ include file="header_ex2_8150105.jsp" %>	
	
	<meta name="description" content="2η Ατομική Άσκηση - About">
	<meta name="author" content="sofos@aueb.gr">
	

	<title>2η Ατομική Άσκηση - About page</title>

	
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

				<%

                if (session.getAttribute("userObj2022") == null) {

				%>
				<div id="navbar" class="navbar-collapse collapse">
					<ul class="nav navbar-nav">
						<li ><a href="index_ex2_8150105.jsp">Home</a></li>					
						<li class="active"><a href="about_ex2_8150105.jsp">About</a></li>					
					</ul>	
					
					<ul class="nav navbar-nav navbar-right">
                        <li>
							<li><a href="register_ex2_8150105.jsp">Register</a></li>
							<li><a href="login_ex2_8150105.jsp">Sign in</a></li>	
						</li>
											        	
			        </ul>		
		
				</div>

				<% } else {

					User user = (User)session.getAttribute("userObj2022");
				%>
				<div id="navbar" class="navbar-collapse collapse">
					<ul class="nav navbar-nav">
						<li ><a href="index_ex2_8150105.jsp">Home</a></li>					
						<li class="active"><a href="about_ex2_8150105.jsp">About</a></li>	
						<li><a href="<%=request.getContextPath() %>/dashboard_ex2_8150105.jsp">Dashboard</a></li>				
					</ul>	
					
					<ul class="nav navbar-nav navbar-right">
                        <li>
							<p class="navbar-text">Signed in as <%=user.getUsername() %></p>	
						</li>
						<li>
							<a href="logout_ex2_8150105.jsp"><span class="glyphicon glyphicon-log-out"></span> Sign out</a>
						</li>
											        	
			        </ul>		
		
				</div>
                <%
				}
				%>
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
		<%@ include file = "footer_ex2_8150105.jsp" %>
	
	</body>
</html>