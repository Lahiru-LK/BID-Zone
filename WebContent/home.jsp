<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.myclasses.java.Products"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Logo Name | Products</title>
<!-- Bootstrap CSS -->
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
<!-- jQuery -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- Bootstrap JS -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


<!-- Custom CSS -->



<style>
/* Custom green theme styles */
.navbar, #footer, .btn-primary {
	background-color: #4CAF50; /* Dark Green background */
	border-color: #3e8e41;
}

.btn-primary:hover {
	background-color: #45a049;
}

.navbar-dark .navbar-nav .nav-link {
	color: #fff;
}

.navbar-dark .navbar-nav .nav-link:hover {
	color: #b2fab4; /* Lighter green for hover */
}

.card {
	border: 1px solid #4CAF50; /* Dark Green border for cards */
	background-color: #e0f2f1; /* Light Green background */
	transition: box-shadow 0.3s ease-in-out, background-color 0.3s
		ease-in-out; /* Smooth transition for shadow and background color */
}

.card:hover {
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.5); /* Shadow effect on hover */
	background-color: #c8e6c9;
	/* A slightly different green on hover to indicate interaction */
}

.card-title {
	color: #333;
}

.product-img {
	max-width: 100%;
	height: auto;
}

/* Keep footer at the bottom */
html, body {
	height: 100%;
}

#wrapper {
	min-height: 100%;
	position: relative;
}

#content {
	padding-bottom: 60px; /* Height of the footer */
}

#footer {
	position: absolute;
	bottom: 0;
	width: 100%;
	height: 60px; /* Height of the footer */
	color: #fff; /* White text in footer */
}

.bg-green {
	background-color: #4CAF50; /* A nice shade of green */
}

.bg-footer-green {
	background-color: #4CAF50; /* A specific shade of green */
}

/* Assuming previous styles are already included */
.navbar-nav {
	width: 100%; /* Ensures the nav occupies full width of its parent */
	display: flex; /* Use flexbox to manage children (nav items) */
	justify-content: center; /* Center the nav items horizontally */
	padding-left: 0; /* Remove default padding */
}

.nav-item {
	margin: 0 15px; /* Provides horizontal space between nav items */
}

.navbar-dark .nav-link {
	color: #fff; /* Ensures nav links are white for better visibility */
}

.navbar-brand {
	font-weight: bold; /* Makes the text bold */
	color: #4CAF50; /* A vibrant green color */
}

.navbar-brand:hover {
	color: #3e8e41; /* A slightly darker green when hovered over */
}

.banner-image {
	width: 35%;
	height: auto;
	margin: 0 auto; /* Centers the image */
}

.banner-text {
	text-align: center;
	margin-top: 20px;
}

.banner-text h1 {
	color: #333;
}

.banner-text p {
	color: #666;
	font-size: 18px;
}

.register-btn {
	color: #ffffff;
	background-color: #007bff;
	padding: 10px 20px;
	border-radius: 5px;
	text-decoration: none;
	font-size: 16px;
}

@keyframes colorPulse {
    0%, 100% {
        color: #006400; /* Dark green */
        transform: scale(1);
    }
    
    50% {
        color: red; /* Tomato */
        transform: scale(1.05);
    }
}

.animated-heading {
    animation: colorPulse 3s infinite;
}


.register-btn {
	color: #ffffff;
	background-color: #4CAF50;
	padding: 10px 20px;
	border-radius: 5px;
	text-decoration: none;
	font-size: 16px;
	transition: background-color 0.3s ease-in-out, transform 0.3s ease;
	display: inline-block;
}

.register-btn:hover {
	background-color: #5AAF05; /* Dark green color on hover */
	transform: scale(1.07); /* Increase the size by 10% */
}

.card {
	width: 500px; /* Fixed width */
	height: 360px; /* Fixed height */
	display: flex;
	flex-direction: column;
}

.card-body {
	flex: 1;
	/* Ensures that the card body flexes to fill available space */
}

.product-img {
	width: 50%; /* Image width set to 50% of its container */
	height: 200px; /* Fixed height for the image */
	object-fit: cover;
	/* Ensures the content covers the frame without distortion */
	display: block;
	/* Changes display from inline (default for img) to block */
	margin: 0 auto;
	/* Centers the image horizontally within its container */
	transition: transform 0.3s ease; /* Smooth transition for transform */
}

/* Set up the perspective environment on the container */
.card {
	perspective: 1000px; /* Depth effect for the 3D transform */
}

/* Initial state of the image */
.product-img {
	transition: transform 0.3s ease;
	/* Smooth transition for the transform */
	transform-origin: center center; /* Ensures transform is centered */
}

/* Hover state */
.product-img:hover {
	transform: scale(1.5) rotateY(10deg);
	/* Increase size and rotate along the Y-axis */
}

.btn-primary {
	transition: transform 0.3s ease, background-color 0.3s ease;
	/* Smooth transitions for transform and background color */
}

.btn-primary:hover {
	transform: scale(1.1); /* Slightly increases the size of the button */
	background-color: #0056b3; /* Changes the background color on hover */
}
</style>

</head>
<body>
	<div id="wrapper">
		<nav class="navbar navbar-expand-lg navbar-dark bg-green">
			<div class="container">
				<a class="navbar-brand " href="home.jsp">BID Zone</a>
				<div id="image-bar" class="container " style="padding: 10px 0 0 0">


					<%
					String userName = (String) request.getSession().getAttribute("username");
					boolean isLoggedIn = userName != null;
					%>
					
					
					<img
						src="https://images.vexels.com/media/users/3/298859/isolated/preview/8eceaec2ba720bea4a9967443492a66a-fair-style-auction-label.png"
						alt="Auction" style="width: 25%; height: auto;">
				</div>
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbarNav" aria-controls="navbarNav"
					aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarNav">
					<ul class="navbar-nav ml-auto">
						<li class="nav-item active"><a class="nav-link"
							href="home.jsp">Home <span class="sr-only">(current)</span></a></li>
						<li class="nav-item"><a class="nav-link" href="products.jsp ">Products
						</a></li>


					<%
						if (isLoggedIn) {
						%>
						<li class="nav-item"><a class="nav-link"
							href="userProfile.jsp"><%=userName%></a></li>
						<li class="nav-item"><a class="nav-link" href="logout.jsp">Logout</a></li>
						<%
						} else {
						%>
						<li class="nav-item"><a class="nav-link"
							href="registration.jsp">Registration</a></li>
						<li class="nav-item"><a class="nav-link" href="login.jsp">Login</a></li>
						<%
						}
						%>






						</li>
					</ul>
				</div>
			</div>
		</nav>






		<div id="content" class="container mt-5 ">

			<div class="row">
				<div class="col">


					<div
						style="text-align: center; margin-top: -20px; margin-right: 1000px">
						<img src="https://i.giphy.com/1n1Bu8ti86BV5VpklQ.webp"
							alt="Auction" style="width: 345%; height: auto;">
					</div>

					<div
						style="text-align: center; margin-top: -300px; margin-bottom: 100px; margin-left: 350px">


						<h1 class="animated-heading">Welcome to BID Zone!</h1>

						<p>Experience the thrill of the bid in real-time. Join our
							vibrant marketplace where treasures await at every auction!</p>
						<a href="registration.jsp" class="register-btn"
							style="padding: 10px 20px; border-radius: 5px; text-decoration: none; font-size: 16px;">Register
							Now</a>
					</div>





					<div class="row">
						<%
						String qryStr = "";
						Statement stmt = null;
						ResultSet rs = null;
						String connectionURL = "jdbc:mysql://localhost:3306/test2";
						Connection connection = null;
						Class.forName("com.mysql.jdbc.Driver").newInstance();
						connection = DriverManager.getConnection(connectionURL, "root", "");
						stmt = connection.createStatement();
						qryStr = "SELECT * from Products";
						rs = stmt.executeQuery(qryStr);
						while (rs.next()) {
						%>
						<!-- Each card now takes up 6 columns on all medium and large screens -->
						<div class="col-lg-6 col-md-6 mb-4">
							<div class="card">
								<img src="<%=rs.getString("imagepath")%>"
									class="card-img-top product-img" alt="Product Image">
								<div class="card-body">
									<h5 class="card-title"><%=rs.getString("productName")%></h5>
									<p class="card-text"><%=rs.getString("description")%></p>
									<a
										href="<%=request.getContextPath()%>/ProductDescriptionServletPath?pid=<%=rs.getString("productId")%>"
										class="btn btn-primary">View Details</a>
								</div>
							</div>
						</div>
						<%
						}
						rs.close();
						stmt.close();
						connection.close();
						%>
					</div>

				</div>
			</div>
		</div>



		<!-- Footer -->
		<footer id="footer" class="bg-footer-green text-white py-4">
			<div class="container text-center">
				<p class="mb-0">&copy; 2024 E-Group Work</p>
			</div>
		</footer>

	</div>
</body>
</html>
