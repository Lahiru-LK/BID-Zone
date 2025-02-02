<!DOCTYPE html>
<html lang="en" dir="ltr">





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



		<div class="clear"></div>
		</header>
	</div>
	<!-- content -->
	<div class="wrapper row2">
		<div id="container" class="container">

			<!-- ################################################################################################ -->
			<!-- main content -->


		</div>
		<div id="image-bar" class="container"
			style="display: flex; align-items: center;">

			<img src="styles/Auction.gif" alt="Auction Image"
				style="width: 300px; height: auto; padding-bottom:20px">

			<div style="margin-left: 20px;">
				<!-- Added a container for text and spaced it from the image -->
				<h1>Best Price, Best Products</h1>
				<p>Best Place to sell and buy second hand products</p>
			</div>

		</div>



		<%
		if (request.getSession().getAttribute("message") != null) {
		%>
		<h2><%=request.getSession().getAttribute("message")%></h2>
		<%
		request.getSession().removeAttribute("message");
		}
		%>
		
		
		
<div id="homepage">
    <section id="shout"></section>

    <!-- Introduction -->
    <section id="services" class="container"> <!-- Using the container class for overall spacing and alignment -->
        <div class="row">
            <!-- Product Registration Card -->
            <div class="col-md-6 mb-4">
                <a href="register.jsp" class="card text-center">
                    <div class="card-body">
                        <i class="fas fa-registered fa-4x mb-3"></i>
                        <h5 class="card-title">Registration</h5>
                        <p class="card-text">Register Your Product!</p>
                    </div>
                </a>
            </div>

            <!-- Buy A Product Card -->
            <div class="col-md-6 mb-4">
                <a href="buy.jsp" class="card text-center">
                    <div class="card-body">
                        <i class="fas fa-shopping-cart fa-4x mb-3"></i>
                        <h5 class="card-title">Buy </h5>
                        <p class="card-text">Confirm your purchase!</p>
                    </div>
                </a>
            </div>
        </div>
        
        <div class="row">
            <!-- Sell Your Product Card -->
            <div class="col-md-6 mb-4">
                <a href="<%=request.getContextPath()%>/DisplayUsersProductsServletsPath?userId=<%=request.getSession().getAttribute("userId")%>" class="card text-center">
                    <div class="card-body">
                        <i class="fas fa-handshake fa-4x mb-3"></i>
                        <h5 class="card-title">Sell </h5>
                        <p class="card-text">Create your Auction now!</p>
                    </div>
                </a>
            </div>

            <!-- Place A Bid Card -->
            <div class="col-md-6 mb-4">
                <a href="<%=request.getContextPath()%>/DisplayAuctionedProductsServletPath" class="card text-center">
                    <div class="card-body">
                        <i class="fas fa-gavel fa-4x mb-3"></i>
                        <h5 class="card-title">Bid</h5>
                        <p class="card-text">Bid on an available item!</p>
                    </div>
                </a>
            </div>
        </div>
    </section>
</div>

		
		
	</div>
	</div>
	<!-- Copyright -->
	<div class="wrapper row3">
		<footer id="footer" class="bg-footer-green text-white py-4">
			<div class="container text-center">
				<p class="mb-0">&copy; 2024 E-Group Work</p>
			</div>
		</footer>
	</div>
</body>
</html>
