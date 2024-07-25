<%@include file="layouts/header.jsp"%>
<title>Login/Sign up</title>
</head>
<body>
	<div class="container">
		<%@include file="layouts/navbar.jsp"%>
		<div class="card w-25 mx-auto mt-4 justify-content-center"
			style="background-color: #CEEAB9">
			<div class="card-body">
				<h5 class="card-title" style="text-align: center">Login</h5>
				<div class="card-text">
					<form action="/loginProcess" method="post">
						<div class="mb-3">
							<label for="name" class="form-label"><i
								class="fa fa-envelope"></i> Email Id</label><input type="email"
								class="form-control" id="email" name="email">
						</div>
						<div class="mb-3">
							<label for="brand" class="form-label"><i
								class="fa fa-key"></i> Password</label> <input type="password"
								class="form-control" id="password" name="password">
						</div>
						<div class="mb-3 w-100" style="text-align: center">
							<button type="submit" class="btn btn-success">Submit</button>
						</div>
						<div class="mb-2 w-100" style="text-align: center">
							<span>Don't have an account? <a href="/signUp">Sign up</a></span>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<%@include file="layouts/footer.jsp"%>