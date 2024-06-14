<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
<link rel="stylesheet" href="../css/bootstrap.min.css">
<link rel="stylesheet" href="../css/style.css">
</head>
<body>
	<div class="container">
		<div class="col-12" style="text-align: center;">
			<img src="../images/logos/GW Logo Lina.jpg" />
		</div>
		<div class="col-12">
			<header>
				<nav class="navbar navbar-expand-lg">
					<div class="container-fluid">
						<div class="collapse navbar-collapse justify-content-center"
							id="navbarNavDropdown">
							<ul class="navbar-nav justify-content-center">
								<li class="nav-item"><a class="nav-link active"
									aria-current="page" href="#">Home</a></li>
								<li class="nav-item"><a class="nav-link" href="#">Features</a>
								</li>
								<li class="nav-item"><a class="nav-link" href="#">Pricing</a>
								</li>
								<li class="nav-item"><a class="nav-link" href="#">Sell</a>
								</li>
								<li class="nav-item dropdown"><a
									class="nav-link dropdown-toggle" href="#" role="button"
									data-bs-toggle="dropdown" aria-expanded="false"> Dropdown
										link </a>
									<ul class="dropdown-menu">
										<li><a class="dropdown-item" href="#">Action</a></li>
										<li><a class="dropdown-item" href="#">Another action</a></li>
										<li><a class="dropdown-item" href="#">Something else
												here</a></li>
									</ul></li>
							</ul>
						</div>
					</div>
				</nav>
			</header>
		</div>
		<hr />
		<div class="row">
			<div class="col-lg-3 col-md-3 border-end">
				<h6 class="border-bottom">Browse by category</h6>
				<ul class="list-group list-group-flush">
					<li class="list-group-item">Men</li>
					<li class="list-group-item">Women</li>
					<li class="list-group-item">Baby</li>
					<li class="list-group-item">Kids</li>
					<li class="list-group-item">Sports</li>
					<li class="list-group-item">Accessories</li>
				</ul>
			</div>
			<div class="col-lg-9 col-md-9">
				<h3 style="text-align: center;">Today's Deals</h3>
				<div class="row justify-content-center">
					<div class="col-lg-3 col-md-3 mx-4">
						<div class="card" style="width: 16rem;">
							<img src="../images/clothes/Blue Jeans.webp" class="card-img-top"
								alt="Regular Jeans">
							<div class="card-body p-0 border-bottom"
								style="text-align: center">
								<span class="card-title"><a href="#" class="link-primary">Regular
										jeans</a><br /> $10 </span>
							</div>
							<div class="card-body" style="text-align: center">
								<a href="#" class="btn btn-outline-success">Add to Cart</a> <a
									href="#" class="btn btn-outline-success">Buy Now</a>
							</div>
						</div>
					</div>
					<div class="col-lg-3 col-md-3 mx-4">
						<div class="card" style="width: 16rem;">
							<img src="../images/clothes/Nirvana Tshirt.jpeg"
								class="card-img-top" alt="Loose Fitted T-Shirt">
							<div class="card-body p-0 border-bottom"
								style="text-align: center">
								<span class="card-title"><a href="#" class="link-primary">Loose
										Fitted T-Shirt</a><br /> $10 </span>
							</div>
							<div class="card-body" style="text-align: center">
								<a href="#" class="btn btn-outline-success">Add to Cart</a> <a
									href="#" class="btn btn-outline-success">Buy Now</a>
							</div>
						</div>
					</div>
					<div class="col-lg-3 col-md-3  mx-4">
						<div class="card" style="width: 16rem;">
							<img src="../images/clothes/Zebra Dress.webp"
								class="card-img-top" alt="Printed
										Dress">
							<div class="card-body p-0 border-bottom"
								style="text-align: center">
								<span class="card-title"><a href="#" class="link-primary">Printed
										Dress</a><br /> $10 </span>
							</div>
							<div class="card-body" style="text-align: center">
								<a href="#" class="btn btn-outline-success">Add to Cart</a> <a
									href="#" class="btn btn-outline-success">Buy Now</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-12"></div>
	</div>
	<script type="text/javascript" src="../js/bootstrap.min.js"></script>
</body>
</html>