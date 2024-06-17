<%@include file="layouts/header.jsp"%>
<title>Buy</title>
</head>
<body>
	<div class="container">
		<%@include file="layouts/navbar.jsp"%>
		<form action="/saleProcess" method="post">
			<div class="card w-25 mx-auto mt-4 justify-content-center mb-4"
				style="width: 16rem;">
				<img src="../images/clothes/Nirvana Tshirt.jpeg"
					class="card-img-top" alt="Loose Fitted T-Shirt">
				<div class="card-body p-0 border-bottom" style="text-align: center">
					<span class="card-title"><a href="#" class="link-primary">Loose
							Fitted T-Shirt</a><br /> $10 </span>
				</div>
				<div class="card-body" style="text-align: center">
					<button type="submit" class="btn btn-outline-success">Confirm
						Purchase</button>
				</div>
			</div>
		</form>
	</div>
	<script type="text/javascript" src="../js/bootstrap.min.js"></script>
</body>
</html>