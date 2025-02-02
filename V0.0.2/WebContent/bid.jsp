<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.myclasses.java.Auction"%>
<%@ page import="com.myclasses.java.Products"%>
<%@ page import="com.mybusiness.services.ProductService"%>
<%@ page import="java.util.*"%>
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
.auction-item {
	border: 1px solid #ddd;
	padding: 20px;
	margin-bottom: 20px;
	background-color: #fff;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Add shadow */
	border-radius: 5px; /* Rounded corners */
}

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
				<div id="image-bar" class="container " style="padding: 5px 0 0 0">


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


<div class="container mt-5" style="padding-bottom: 200px">
    <section id="gallery">
        <div class="row">
            <% 
            ArrayList<Auction> auctionList = (ArrayList<Auction>) request.getAttribute("auctionList");
            for (Auction a : auctionList) {
                int pid = a.getProductId();
                Products pro = new Products();
                ProductService ps = new ProductService();
                pro = ps.getProductDetails(pid);
            %>
            <div class="col-md-4"> <!-- Adjust col size as per your requirement -->
                <div class="card mb-3">
                    <div class="card-header text-white" style="background-color: #4CAF50">
                        <h3 class="text-center" style="font-weight: bold;">Place Bid</h3>
                    </div>
                    <div class="card-body">
                        <div class="auction-item" style="color: green; font-weight: bold;">
                            <p>Auction ID: <%= pro.getProdname() %></p>
                            <p>Product Price(Rs): <%= pro.getPrice() %></p>
                            <a href="placebid.jsp?aid=<%= a.getAuctionId() %>" class="btn btn-primary">Place Bid</a>
                        </div>
                    </div>
                </div>
            </div>
            <% } %>
        </div>
    </section>
</div>

		<!-- Footer -->
		<footer id="footer" class="bg-footer-green text-white py-4">
			<div class="container text-center">
				<p class="mb-0">&copy; 2024 E-Group Work</p>
			</div>
		</footer>
</body>
</html>