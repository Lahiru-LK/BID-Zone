<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.myclasses.java.Products"%>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
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

/* Content styling */
.content {
	max-width: 800px; /* Limit content width */
	margin: 0 auto; /* Center content */
}

/* Heading styling */
h2 {
	color: #4CAF50; /* Green heading color */
	font-size: 36px; /* Larger font size */
	margin-bottom: 20px; /* Add space below heading */
}

/* Paragraph styling */
p {
	color: #333; /* Dark text color */
	font-size: 18px; /* Font size */
}

/* Product list styling */
.product-list {
	list-style: none; /* Remove default list styles */
	padding: 0; /* Remove default padding */
}

.product-item {
	margin-bottom: 10px; /* Add space between list items */
}

.product-link {
	color: #007bff; /* Blue link color */
	text-decoration: none; /* Remove underline */
}

.product-link:hover {
	text-decoration: underline; /* Underline on hover */
}

/* Styling for the "MSI" product */
.product-item span {
	color: red; /* Red color for "MSI" product */
}




.product-list {
	list-style-type: none;
	padding: 0;
	margin: 0;
}

.product-list li {
	display: inline-block;
	margin-right: 20px; /* Adjust the margin as needed */
}







 /* CSS to style the product list */
        .product-list {
            list-style-type: none;
            padding: 0;
            margin: 0;
            overflow: auto; /* Ensures the list doesn't overflow horizontally */
            white-space: nowrap; /* Prevents wrapping of list items */
        }

        .product-list li {
            display: inline-block;
            margin-right: 20px; /* Adjust the margin as needed */
            vertical-align: top; /* Aligns items at the top */
        }

        .product-card {
            border: 1px solid #ccc;
            border-radius: 5px;
            padding: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Adding a box shadow for a card-like effect */
        }

        .product-link {
            text-decoration: none;
            color: green; /* Setting link color to green */
            font-weight: bold; /* Making the link bold */
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














	<div class="wrapper">
		<div class="content">
			<h2>Create an Auction</h2>
			<p>Choose a product to create an auction.</p>



 <ul class="product-list">
        <% 
            ArrayList<Products> productList = (ArrayList<Products>) request.getAttribute("productList");
            int size = productList.size();
            int i = 0;
            while (i < size) {
                Products p = productList.get(i);
        %>
                <li>
                    <!-- Wrap each product in a div with the "product-card" class -->
                    <div class="product-card">
                        Product Name: <a class="product-link" href="createAuction.jsp?pid=<%= p.getProductId() %>"><%= p.getProdname() %></a>
                    </div>
                </li>
        <% 
                i++;
            }
        %>
    </ul>

		</div>
	</div>





	<div class="wrapper row3">
		<footer id="footer" class="bg-footer-green text-white py-4">
			<div class="container text-center">
				<p class="mb-0">&copy; 2024 E-Group Work</p>
			</div>
		</footer>
	</div>

</body>
</html>
