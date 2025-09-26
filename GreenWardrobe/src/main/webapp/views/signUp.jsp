<%@include file="layouts/header.jsp"%>
<title>Login</title>
</head>
<body>
	<div class="container">
		<%@include file="layouts/navbar.jsp"%>
		<div class="card w-50 mx-auto mt-4 justify-content-center mb-4"
			style="background-color: #CEEAB9">
			<div class="card-body">
				<h5 class="card-title" style="text-align: center">Sign up</h5>
				<div class="mb-2 w-100" style="text-align: center">
					<span class="text-primary">Please fill out the details below
						to sign up</span>
				</div>
				<div class="card-text">
					<form action="/signUpProcess" method="post">
						<div class="mb-3">
							<label for="fName" class="form-label">First name</label><input
								type="text" class="form-control" id="fName" name="fName">
						</div>
						<div class="mb-3">
							<label for="lName" class="form-label">Last name</label><input
								type="text" class="form-control" id="lName" name="lName">
						</div>
						<div class="mb-3">
							<label for="address" class="form-label">Address</label><input
								type="text" class="form-control" id="address" name="address">
						</div>
						<div class="mb-3">
							<label for="phone" class="form-label">Phone number</label><input
								type="text" class="form-control" id="phone" name="phone">
						</div>
						<div class="mb-3">
							<label for="email" class="form-label"><i
								class="fa fa-envelope"></i> Email Id</label><input type="email"
								class="form-control" id="email" name="email">
						</div>
						<div class="mb-3">
							<label for="password" class="form-label"><i
								class="fa fa-key"></i> Password</label> <input type="text"
								class="form-control" id="password" name="password">
						</div>
						<div class="mb-3 w-100" style="text-align: center">
							<button type="submit" class="btn btn-success">Submit</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="../js/bootstrap.min.js"></script>
</body>
</html>