<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>E-Auction |</title>
<!-- Bootstrap CSS -->

<!-- Cosmo theme -->
<link href="https://bootswatch.com/4/cosmo/bootstrap.min.css"
	rel="stylesheet">
<!-- jQuery -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- Mobile Menu -->
<script src="scripts/jquery-1.7.2.min.js"></script>
<script src="scripts/jquery-mobilemenu.min.js"></script>
<script>
	$(document).ready(function() {
		$('.topnav').mobileMenu({
			combine : false,
			switchWidth : 600,
			prependTo : 'nav#topnav'
		});
	});
</script>
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
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

#content {
	padding-bottom: 60px; /* Height of the footer */
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

h1 {
	font-size: 50px; /* Increases the font size */
	animation: fadeInAnimation 1.5s ease-out forwards;
	/* Animation when the page loads */
	transition: color 0.3s, transform 0.3s;
	/* Smooth transition for color and transform */
	color: #3e8e41;
}

/* Animation keyframes for fading in */
@
keyframes fadeInAnimation {from { opacity:0;
	transform: translateY(-20px);
}

to {
	opacity: 1;
	transform: translateY(0);
}

}

/* Hover effect for h2 elements */
h1:hover {
	color: #7e8e41; /* Changes color on hover */
	transform: scale(1.05); /* Slightly increase size on hover */
}
/* Add your custom styles here */
#gallery {
	text-align: center;
	padding-top: 30px;
	padding-bottom: 50px;
}

.login-container {
	max-width: 400px;
	margin: auto;
	padding: 20px;
	border: 1px solid #ccc;
	border-radius: 5px;
	background-color: #f9f9f9;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

#image-bar {
	display: flex;
	align-items: center;
	justify-content: space-between;
	/* This will evenly distribute items on the horizontal axis */
	padding: 20px; /* Adjust as needed */
}

#image-bar img {
	width: 300px;
	height: auto;
}

#image-bar .text-container {
	margin-left: 20px;
}

body {
	background-color: #f8f9fa;
}

.form-container {
	max-width: 600px;
	margin: 0 auto;
	padding: 40px;
	background-color: #fff;
	border-radius: 10px;
	box-shadow: 0px 0px 10px 0px rgba(0, 0, 0, 0.1);
}

.btn-primary, .btn-secondary {
	width: 100px;
}

/* Adjust the background color of the card header */
.card-header.bg-primary {
	background-color: #4CAF50; /* Change blue to green */
}
</style>


</head>
<body>
	<div class="wrapper row1">
		<header id="header">
			<!-- Navigation -->
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
							<li class="nav-item"><a class="nav-link"
								href="products.jsp ">Products </a></li>


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

		</header>
	</div>
	<div class="container mt-5">
		<!-- content body -->
		<section id="gallery">
			<div class="row">
				<div class="col-md-8 offset-md-2">
					<div class="card">
						<div class="card-header text-white" style="background-color:#4CAF50">
							<h3 class="text-center" style="font-weight: bold;">Enter Auction Price</h3>
						</div>

						<div class="card-body">
							<%
							int aid = Integer.parseInt(request.getParameter("aid"));
							%>
							<form action="PlaceNewBidServletPath?aid=<%=aid%>"
								method="post">
								<div class="form-group">
									<h3 for="price" style="padding-right: 630px">Price</h3>
									<input type="text" class="form-control" name="price" id="price">
								</div>
								<button type="submit" class="btn btn-primary">Submit</button>
								<button type="reset" class="btn btn-secondary">Reset</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</section>
	</div>

	<!-- Footer -->
	<div class="wrapper row3">
		<footer id="footer" class="bg-footer-green text-white py-4">
			<div class="container text-center">
				<p class="mb-0">&copy; 2024 E-Group Work</p>
			</div>
		</footer>
	</div>

	<!-- Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@1.16.1/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
