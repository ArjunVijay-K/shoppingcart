<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
<title>Electromart</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<style>
header {
	background-color: #27A4F7;
	color: white;
	padding: 10px 50px 40px 50px;
}

body {
	background-color: white;
}

button {
	background-color: white;
	color: #27A4F7;
	width: 180px;
}

.carousel-inner>.item>img {
	width: 1500px;
	height: 400px;
}

form {
	color: white;
}
</style>
</head>
<body>
	<header>
		<div align="right">
			<c:choose>
				<c:when test="${not empty signupclicked }">
					<a style="color: white; align: center" href="login"><span
						class="glyphicon glyphicon-log-in"></span> Login </a>
				</c:when>
				<c:when test="${not empty loginbuttonclicked }">
					<a style="color: white" href="getregistration"><span
						class="glyphicon glyphicon-user"></span> Signup </a>
				</c:when>
				<c:when test="${not empty adminloggedin || not empty userloggedin }">

					<a style="color: white; align: center" href="logout"><span
						class="glyphicon glyphicon-log-out"></span> Logout </a>

					<c:if test="${not empty userloggedin  }">
						<a style="color: white; align: center" href="login"><span
							class="glyphicon glyphicon-shopping-cart"></span> My Cart </a>
					</c:if>
				</c:when>
				<c:otherwise>
					<a style="color: white; align: center" href="login"><span
						class="glyphicon glyphicon-log-in"></span> Login </a>
					<a style="color: white" href="getregistration"><span
						class="glyphicon glyphicon-user"></span> Signup </a>

				</c:otherwise>
			</c:choose>

		</div>

		<div class="container">

			<form class="form-inline">

				<a
					style="font-family: Comic Sans MS, Comic Sans, cursive; color: #2A4B70; font-size: 25px; position: relative; width: 170px; top: 1px;"
					class="navbar-brand" href="home"><b>Electromart</b></a> <input
					type="text" class="form-control" size="80"
					placeholder="Search for your products"
					style="position: relative; top: 10px;">

				<button style="position: relative; top: 10px; color: #27A4F7"
					type="button" class="btn btn-default " style="">
					<span class="glyphicon glyphicon-search""></span> Search
				</button>
				<br> <br>
			</form>
			<c:choose>

				<c:when test="${not empty adminloggedin }">

					<div class="btn-group">
						<button type="button" class="btn dropdown-toggle"
							data-toggle="dropdown">
							Category <span class="caret"></span>
						</button>
						<ul class="dropdown-menu">
							<li><a href="Categoryform">New Category</a></li>
							<li><a href="#">View Category</a></li>

						</ul>
					</div>
					<div class="btn-group">
						<button type="button" class="btn dropdown-toggle"
							data-toggle="dropdown">
							Product <span class="caret"></span>
						</button>
						<ul class="dropdown-menu">
							<li><a href="Productform">New Product</a></li>
							<li><a href="viewProduct">View Product</a></li>

						</ul>
					</div>

					<div class="btn-group">
						<button type="button" class="btn dropdown-toggle"
							data-toggle="dropdown">
							Supplier <span class="caret"></span>
						</button>
						<ul class="dropdown-menu">
							<li><a href="Supplierform">New Supplier</a></li>
							<li><a href="viewSupplier">View Supplier</a></li>
						</ul>
					</div>
				</c:when>
				<c:otherwise>
					<div class="btn-group">
						<button type="button" class="btn dropdown-toggle"
							data-toggle="dropdown">
							Television <span class="caret"></span>
						</button>
						<ul class="dropdown-menu">
							<li><a href="#">HD</a></li>
							<li><a href="#">Ultra HD</a></li>
							<li><a href="#">Plasma</a></li>
						</ul>
					</div>
					<div class="btn-group">
						<button type="button" class="btn dropdown-toggle"
							data-toggle="dropdown">
							Refrigerator <span class="caret"></span>
						</button>
						<ul class="dropdown-menu">
							<li><a href="#">Single Door</a></li>
							<li><a href="#">Double Door</a></li>
							<li><a href="#">Triple Door</a></li>
						</ul>
					</div>

					<div class="btn-group">
						<button type="button" class="btn dropdown-toggle"
							data-toggle="dropdown">
							Air Conditioner <span class="caret"></span>
						</button>
						<ul class="dropdown-menu">
							<li><a href="#">Split ACs</a></li>
							<li><a href="#">Window ACs</a></li>
						</ul>
					</div>

					<div class="btn-group">
						<button type="button" class="btn  dropdown-toggle"
							data-toggle="dropdown">
							Wahing Machine <span class="caret"></span>
						</button>
						<ul class="dropdown-menu">
							<li><a href="#">Fully Automatic Front Load</a></li>
							<li><a href="#">Fully Automatic Top Load</a></li>
							<li><a href="#">Semi Automatic Top Load</a></li>
						</ul>
					</div>

					<div class="btn-group">
						<button type="button" class="btn  dropdown-toggle"
							data-toggle="dropdown">
							Fan <span class="caret"></span>
						</button>
						<ul class="dropdown-menu">
							<li><a href="#">Ceiling Fans</a></li>
							<li><a href="#">Wall Fans</a></li>
							<li><a href="#">Table Fans</a></li>
						</ul>
					</div>

					<div class="btn-group">
						<button type="button" class="btn  dropdown-toggle"
							data-toggle="dropdown">
							Kitchen-Appliances <span class="caret"></span>
						</button>
						<ul class="dropdown-menu">
							<li><a href="#">Mixer-Grinder</a></li>
							<li><a href="#">Wet-Grinder</a></li>
							<li><a href="#">Microwave-oven</a></li>

						</ul>
					</div>
				</c:otherwise>



			</c:choose>
		</div>
	</header>