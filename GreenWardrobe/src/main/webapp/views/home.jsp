<%@include file="layouts/header.jsp"%><title>Home Page</title>
</head>
<body>
	<div class="container">
		<%@include file="layouts/navbar.jsp"%>
		<hr />
		<div class="row mb-3">
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
			<div class="col-lg-9 col-md-9" style="background-color: #CEEAB9">
				<h3 style="text-align: center">Today's Deals</h3>
				<div class="row justify-content-center mb-4">
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
									href="/buy" class="btn btn-outline-success">Buy Now</a>
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