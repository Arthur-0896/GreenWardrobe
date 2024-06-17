<%@include file="layouts/header.jsp"%><title>Home Page</title>
<title>Sell clothes</title>
</head>
</head>
<body>
	<div class="container">
		<%@include file="layouts/navbar.jsp"%>
		<div class="card w-50 mx-auto mt-4 justify-content-center" style="background-color: #CEEAB9">
			<div class="card-body">
				<h5 class="card-title">Please Enter the item details</h5>
				<div class="card-text">
					<form action="/sellProcess" method="post">
						<div class="mb-3">
							<label for="name" class="form-label">Garment name</label> <input
								type="text" class="form-control" id="name" name="name">
						</div>
						<div class="mb-3">
							<label for="brand" class="form-label">Brand</label> <input
								type="text" class="form-control" id="brand" name="brand">
						</div>
						<div class="mb-3">
							<label for="condition" class="form-label">Condition</label> <input
								type="text" class="form-control" id="condition" name="condition">
						</div>
						<div class="mb-3">
							<label for="image" class="form-label">Images</label> <input
								type="file" class="form-control" id="image" name="image" multiple="multiple">
							<div id="emailHelp" class="form-text alert alert-primary"><i
								class="fa fa-info-circle" ></i> Please
								upload images of the front and back side of the garment</div>
						</div>
						<div class="mb-3 w-100" style="text-align: center">
							<button type="submit" class="btn btn-primary">Submit</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="../js/bootstrap.min.js"></script>
</body>
</html>