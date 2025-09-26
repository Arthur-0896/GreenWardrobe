<%@include file="layouts/header.jsp"%><title>Plant Based
	Clothing</title>
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
			<div class="col-lg-9 col-md-9" style="background-color: #FEEBDB">
				<h3 style="text-align: center">
					Plant Based Clothing <i class="fa fa-leaf" style="font-size: 25px"></i>
				</h3>
				<div class="row justify-content-center mb-4">
					<div class="col-lg-3 col-md-3 mx-4">
						<div class="card" style="width: 16rem;">
							<img src="../images/clothes/Plant based dress.webp"
								class="card-img-top" alt="Regular Jeans">
							<div class="card-body p-0 border-bottom"
								style="text-align: center">
								<span class="card-title"><a href="#" class="link-primary">100%
										cotton dress</a><br /> $50 </span>
							</div>
							<div class="card-body" style="text-align: center">
								<a href="#" class="btn btn-outline-success">Add to Cart</a> <a
									href="#" class="btn btn-outline-success">Buy Now</a>
							</div>
						</div>
					</div>
					<div class="col-lg-3 col-md-3 mx-4">
						<div class="card" style="width: 16rem;">
							<img src="../images/clothes/Plant based tshirt.webp"
								class="card-img-top" alt="Loose Fitted T-Shirt">
							<div class="card-body p-0 border-bottom"
								style="text-align: center">
								<span class="card-title"><a href="#" class="link-primary">Low water cost T-shirt</a><br /> $20 </span>
							</div>
							<div class="card-body" style="text-align: center">
								<a href="#" class="btn btn-outline-success">Add to Cart</a> <a
									href="/buy" class="btn btn-outline-success">Buy Now</a>
							</div>
						</div>
					</div>
					<div class="col-lg-3 col-md-3  mx-4">
						<div class="card" style="width: 16rem;">
							<img src="../images/clothes/Plant based chinos.webp"
								class="card-img-top" alt="Printed
										Dress">
							<div class="card-body p-0 border-bottom"
								style="text-align: center">
								<span class="card-title"><a href="#" class="link-primary">100% Recycled trousers</a><br /> $35 </span>
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
	<%@include file="layouts/footer.jsp"%>