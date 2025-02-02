<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection, java.sql.DriverManager, java.sql.ResultSet, java.sql.Statement, java.sql.SQLException" %>
<%@ page import="java.io.StringWriter, java.io.PrintWriter" %>

<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Bid Zone | Home</title>

	<!-- Bootstrap CSS -->
	<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">

	<!-- jQuery & Bootstrap JS -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

	<style>
		/* Custom styles */
		.navbar, #footer, .btn-primary {
			background-color: #4CAF50; /* Dark Green */
			border-color: #3e8e41;
		}
		.btn-primary:hover {
			background-color: #45a049;
		}
		.card {
			border: 1px solid #4CAF50;
			background-color: #e0f2f1;
			transition: box-shadow 0.3s ease-in-out;
		}
		.card:hover {
			box-shadow: 0 4px 8px rgba(0, 0, 0, 0.5);
			background-color: #c8e6c9;
		}
		.container-products {
			margin-top: 20px;
			padding: 30px;
			background-color: #f1f8e9; /* Light Green */
			border-radius: 10px;
		}
		#footer {
			position: relative;
			width: 100%;
			height: 60px;
			color: #fff;
			background-color: #333;
			margin-top: 20px;
			padding: 15px 0;
		}
		.card img {
			max-height: 180px;
			object-fit: contain;
		}
	</style>
</head>

<body>
<div id="wrapper">
	<!-- Navigation Bar -->
	<nav class="navbar navbar-expand-lg navbar-dark">
		<div class="container">
			<a class="navbar-brand" href="home.jsp">BID Zone</a>
			<div id="image-bar" class="container" style="padding: 10px 0 0 0">
				<img src="https://images.vexels.com/media/users/3/298859/isolated/preview/8eceaec2ba720bea4a9967443492a66a-fair-style-auction-label.png"
					 alt="Auction" style="width: 25%; height: auto;">
			</div>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbarNav" aria-controls="navbarNav"
					aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item active"><a class="nav-link" href="home.jsp">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="products.jsp">Products</a></li>

					<%
						String userName = (String) request.getSession().getAttribute("username");
						boolean isLoggedIn = userName != null;
						if (isLoggedIn) {
					%>
					<li class="nav-item"><a class="nav-link" href="userProfile.jsp"><%= userName %></a></li>
					<li class="nav-item"><a class="nav-link" href="logout.jsp">Logout</a></li>
					<%
					} else {
					%>
					<li class="nav-item"><a class="nav-link" href="registration.jsp">Register</a></li>
					<li class="nav-item"><a class="nav-link" href="login.jsp">Login</a></li>
					<%
						}
					%>
				</ul>
			</div>
		</div>
	</nav>

	<!-- Content Section -->
	<div class="container text-center mt-5">
		<h1 class="text-center">Welcome to BID Zone!</h1>
		<p class="text-center">Experience the thrill of the bid in real-time.</p>
		<a href="registration.jsp" class="btn btn-primary d-block mx-auto" style="width: 200px;">Register Now</a>
	</div>

	<!-- Product Grid -->
	<div class="container container-products">
		<h2 class="text-center mb-4">Available Products</h2>
		<div class="row">
			<%
				String jdbcURL = "jdbc:mysql://localhost:3306/test2?useSSL=false&serverTimezone=UTC";
				String jdbcUsername = "root";
				String jdbcPassword = "";

				Connection connection = null;
				Statement stmt = null;
				ResultSet rs = null;

				try {
					// Load MySQL JDBC Driver
					Class.forName("com.mysql.cj.jdbc.Driver");

					// Establish Connection
					connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);

					// SQL Query
					String qryStr = "SELECT * FROM Products";
					stmt = connection.createStatement();
					rs = stmt.executeQuery(qryStr);

					while (rs.next()) {
			%>
			<div class="col-lg-4 col-md-6 mb-4">
				<div class="card">
					<img src="<%= rs.getString("imagepath") %>" class="card-img-top product-img" alt="Product Image">
					<div class="card-body text-center">
						<h5 class="card-title"><%= rs.getString("productName") %></h5>
						<p class="card-text"><%= rs.getString("description") %></p>
						<a href="ProductDescriptionServlet?pid=<%= rs.getString("productId") %>" class="btn btn-primary">View Details</a>
					</div>
				</div>
			</div>
			<%
					}
				} catch (Exception e) {
					e.printStackTrace();
				} finally {
					if (rs != null) try { rs.close(); } catch (SQLException ignore) {}
					if (stmt != null) try { stmt.close(); } catch (SQLException ignore) {}
					if (connection != null) try { connection.close(); } catch (SQLException ignore) {}
				}
			%>
		</div>
	</div>

	<!-- Footer -->
	<footer id="footer" class="text-center text-white py-4">
		<div class="container">
			<p>&copy; 2024 BID Zone - All Rights Reserved</p>
		</div>
	</footer>
</div>
</body>
</html>
