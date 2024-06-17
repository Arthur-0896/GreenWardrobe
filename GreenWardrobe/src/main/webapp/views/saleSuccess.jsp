<%@include file="layouts/header.jsp"%><title>Home Page</title>
<title>Sell clothes</title>
</head>
</head>
<body>
	<div class="container">
		<%@include file="layouts/navbar.jsp"%>
		<div class="card w-50 mx-auto mt-4 justify-content-center mb-3"
			style="background-color: #CEEAB9">
			<div class="card-body">
				<h3 class="card-title" style="text-align: center;">Thank you for your purchase!</h3>
				<h6 class="card-title" style="text-align: center;">Please find your receipt below</h6>
				<div class="card-text">
					<form action="/sellProcess" method="post">
						<div class="mb-3">
							<label for="name" class="form-label">Order Id</label> <input
								type="number" class="form-control" id="name" name="name"
								value="${requestId}" readonly="readonly">
						</div>
						<div class="mb-3">
							<label for="name" class="form-label">Garment name</label> <input
								type="text" class="form-control" id="name" name="name"
								value="${name}" readonly="readonly">
						</div>
						<div class="mb-3">
							<label for="brand" class="form-label">Brand</label> <input
								type="text" class="form-control" id="brand" name="brand"
								value="${brand}" readonly="readonly">
						</div>
						<%-- <div class="mb-3">
							<label for="condition" class="form-label">Condition</label> <input
								type="text" class="form-control" id="condition" name="condition"
								value="${condition}" readonly="readonly">
						</div> --%>
						<!-- <div class="mb-3">
							<label for="image" class="form-label">Images</label> <input
								type="file" class="form-control" id="image" name="image"
								multiple="multiple">
							<div id="emailHelp" class="form-text alert alert-primary">
								<i class="fa fa-info-circle"></i> Please upload images of the
								front and back side of the garment
							</div>
						</div>
						<div class="mb-3 w-100" style="text-align: center">
							<button type="submit" class="btn btn-primary">Submit</button>
						</div> -->
					</form>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="../js/bootstrap.min.js"></script>
</body>
</html>